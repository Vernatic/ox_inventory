local Inventory = require 'modules.inventory.server'
local Items = require 'modules.items.server'

AddEventHandler('esx:playerDropped', server.playerDropped)

AddEventHandler('esx:setJob', function(source, job, lastJob)
	local inventory = Inventory(source)
	if not inventory then return end
	inventory.player.groups[lastJob.name] = nil
	inventory.player.groups[job.name] = job.grade
end)

SetTimeout(500, function()
	ESX = exports.es_extended:getSharedObject()

	if ESX.CreatePickup then
		error('ox_inventory requires a ESX Legacy v1.6.0 or above, refer to the documentation.')
	end
	server.UseItem = ESX.UseItem
	server.GetPlayerFromId = ESX.GetPlayerFromId
	for _, player in pairs(ESX.Players) do
		server.setPlayerInventory(player, player?.inventory)
	end
end)

server.accounts.black_money = 0

---@diagnostic disable-next-line: duplicate-set-field
function server.setPlayerData(player)
	local groups = {
		[player.job.name] = player.job.grade
	}

	return {
		source = player.source,
		name = player.name,
		groups = groups,
		sex = player.sex or player.variables.sex,
		dateofbirth = player.dateofbirth or player.variables.dateofbirth,
	}
end

---@diagnostic disable-next-line: duplicate-set-field
function server.syncInventory(inv)
	local accounts = Inventory.GetAccountItemCounts(inv)
	local player = server.GetPlayerFromId(inv.id)

	if not player then return end

	if accounts and type(player.syncInventory) == 'function' then
		player.syncInventory(inv.weight, inv.maxWeight, inv.items, accounts)
		return
	end

	if type(player.setMaxWeight) == 'function' and inv.maxWeight and player.maxWeight ~= inv.maxWeight then
		player.setMaxWeight(inv.maxWeight)
	end

	if accounts and type(player.getAccount) == 'function' and type(player.setAccountMoney) == 'function' then
		for accountName, amount in pairs(accounts) do
			local account = player.getAccount(accountName)

			if account and account.money ~= amount then
				player.setAccountMoney(accountName, amount, 'ox_inventory:syncInventory')
			end
		end
	end

	if type(player.getInventory) ~= 'function' or type(player.setInventoryItem) ~= 'function' then return end

	local itemCounts = {}

	for _, item in pairs(inv.items) do
		if item?.name and item.count then
			itemCounts[item.name] = (itemCounts[item.name] or 0) + item.count
		end
	end

	for _, item in pairs(player.getInventory(true)) do
		local count = itemCounts[item.name] or 0

		if item.count ~= count then
			player.setInventoryItem(item.name, count)
		end

		itemCounts[item.name] = nil
	end

	for itemName, count in pairs(itemCounts) do
		if count > 0 then
			player.setInventoryItem(itemName, count)
		end
	end
end

---@diagnostic disable-next-line: duplicate-set-field
function server.hasLicense(inv, name)
	return MySQL.scalar.await('SELECT 1 FROM `user_licenses` WHERE `type` = ? AND `owner` = ?', { name, inv.owner })
end

---@diagnostic disable-next-line: duplicate-set-field
function server.buyLicense(inv, license)
	if server.hasLicense(inv, license.name) then
		return false, 'already_have'
	elseif Inventory.GetItem(inv, 'money', false, true) < license.price then
		return false, 'can_not_afford'
	end

	Inventory.RemoveItem(inv, 'money', license.price)
	TriggerEvent('esx_license:addLicense', inv.id, license.name)

	return true, 'have_purchased'
end

--- Takes traditional item data and updates it to support ox_inventory, i.e.
--- ```
--- Old: {"cola":1, "burger":3}
--- New: [{"slot":1,"name":"cola","count":1}, {"slot":2,"name":"burger","count":3}]
---```
---@diagnostic disable-next-line: duplicate-set-field
function server.convertInventory(playerId, items)
	if type(items) == 'table' then
		local player = server.GetPlayerFromId(playerId)
		local returnData, totalWeight = table.create(#items, 0), 0
		local slot = 0

		if player then
			for name in pairs(server.accounts) do
				if not items[name] then
					local account = player.getAccount(name)

					if account.money then
						items[name] = account.money
					end
				end
			end
		end

		for name, count in pairs(items) do
			local item = Items(name)

			if item and count > 0 then
				local metadata = Items.Metadata(playerId, item, false, count)
				local weight = Inventory.SlotWeight(item, { count = count, metadata = metadata })
				totalWeight = totalWeight + weight
				slot += 1
				returnData[slot] = {
					name = item.name,
					label = item.label,
					weight = weight,
					slot = slot,
					count = count,
					description =
						item.description,
					metadata = metadata,
					stack = item.stack,
					close = item.close
				}
			end
		end

		return returnData, totalWeight
	end
end

---@diagnostic disable-next-line: duplicate-set-field
function server.isPlayerBoss(playerId)
	local xPlayer = ESX.GetPlayerFromId(playerId)

	return xPlayer.job.grade_name == 'boss'
end

MySQL.ready(function()
	 MySQL.insert('INSERT IGNORE INTO `licenses` (`type`, `label`) VALUES (?, ?)', { 'weapon', 'Weapon License' })
end)

local function tablesAreEqual(table1, table2)
	if #table1 ~= #table2 then
		return false
	end

	for i, v in ipairs(table1) do
		if v ~= table2[i] then
			return false
		end
	end

	return true
end

lib.callback.register('ox_inventory:getUsableitemsData', function()
	return ESX.GetUsableItems()
end)
