local ESX = setmetatable({}, {
	__index = function(self, index)
		local obj = exports.es_extended:getSharedObject()
		self.SetPlayerData = obj.SetPlayerData
		self.PlayerLoaded = obj.PlayerLoaded
		return self[index]
	end
})

---@diagnostic disable-next-line: duplicate-set-field
function client.setPlayerData(key, _value)
	local value = _value
	PlayerData[key] = value
	if key == "inventory" then 
		value = ConvertPlayerData(value)
	end
	ESX.SetPlayerData(key, value)
end

function ConvertPlayerData(_value) 
	local value = lib.table.deepclone(_value)
	local realvalue = {}
	
	for item, data in pairs(exports.ox_inventory:Items()) do
		table.insert(realvalue,data)
	end

	for k,v in pairs(realvalue) do
		realvalue[k].count = 0
	   	for i =1,#value do 
			if value[i] and value[i].name then 
				if v.name  == value[i].name then 
					realvalue[k] = value[i]
					
				end 
			end
		end 
	end

	return realvalue
end


---@diagnostic disable-next-line: duplicate-set-field
function client.setPlayerStatus(values)
	for name, value in pairs(values) do
		if value > 0 then TriggerEvent('esx_status:add', name, value) else TriggerEvent('esx_status:remove', name, -value) end
	end
end

RegisterNetEvent('esx:onPlayerLogout', client.onLogout)

AddEventHandler('esx:setPlayerData', function(key, value)
	if not PlayerData.loaded or GetInvokingResource() ~= 'es_extended' then return end

	if key == 'job' then
		key = 'groups'
		value = { [value.name] = value.grade }
	end

	PlayerData[key] = value
	OnPlayerData(key, value)
end)

local Weapon = require 'modules.weapon.client'

RegisterNetEvent('esx_policejob:handcuff', function()
	PlayerData.cuffed = not PlayerData.cuffed
	LocalPlayer.state:set('invBusy', PlayerData.cuffed, false)

	if not PlayerData.cuffed then return end

	Weapon.Disarm()
end)

RegisterNetEvent('esx_policejob:unrestrain', function()
	PlayerData.cuffed = false
	LocalPlayer.state:set('invBusy', PlayerData.cuffed, false)
end)
