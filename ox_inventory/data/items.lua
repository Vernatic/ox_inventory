return {
	['testburger'] = {
		label = 'Test Burger',
		weight = 220,
		degrade = 60,
		client = {
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			export = 'ox_inventory_examples.testburger'
		},
		server = {
			export = 'ox_inventory_examples.testburger',
			test = 'what an amazingly delicious burger, amirite?'
		},
		buttons = {
			{
				label = 'Lick it',
				action = function(slot)
					print('You licked the burger')
				end
			},
			{
				label = 'Squeez it',
				action = function(slot)
					print('You squeezed the burger :(')
				end
			},
			{
				label = 'What do you call a vegan burger?',
				group = 'Hamburger Puns',
				action = function(slot)
					print('A misteak.')
				end
			},
			{
				label = 'What do frogs like to eat with their hamburgers?',
				group = 'Hamburger Puns',
				action = function(slot)
					print('French flies.')
				end
			},
			{
				label = 'Why were the burger and fries running?',
				group = 'Hamburger Puns',
				action = function(slot)
					print('Because they\'re fast food.')
				end
			}
		},
		consume = 0.3
	},

	['bandage'] = {
		label = 'Bandage',
		weight = 115,
		client = {
			anim = { dict = 'missheistdockssetup1clipboard@idle_a', clip = 'idle_a', flag = 49 },
			prop = { model = `prop_rolled_sock_02`, pos = vec3(-0.14, -0.14, -0.08), rot = vec3(-50.0, -50.0, 0.0) },
			disable = { move = true, car = true, combat = true },
			usetime = 2500,
		}
	},

	['black_money'] = {
		label = 'Dirty Money',
	},

	['burger'] = {
		label = 'Burger',
		weight = 220,
		client = {
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			notification = 'You ate a delicious burger'
		},
	},

	['meat2'] = {
		label = 'Kypsää lihaa',
		weight = 500,
		client = {
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'lihhoo',
			usetime = 2500,
			--notification = 'You ate a delicious burger'
		},
	},

	['apple_red'] = {
		label = 'Omena',
		weight = 50,
		close = true,
		client = {
			status = { hunger = 20000 },
			anim = 'eating',
			prop = 'omppu',
			usetime = 2500,
			--notification = 'You ate a delicious burger'
		},
},

	['cola'] = {
		label = 'eCola',
		weight = 350,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ecola_can`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'You quenched your thirst with cola'
		}
	},

	['parachute'] = {
		label = 'Parachute',
		weight = 8000,
		stack = false,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 1500
		}
	},

	['garbage'] = {
		label = 'Garbage',
	},

	['paperbag'] = {
		label = 'Paper Bag',
		weight = 1,
		stack = false,
		close = false,
		consume = 0
	},

	['identification'] = {
		label = 'Identification',
	},

	['panties'] = {
		label = 'Knickers',
		weight = 10,
		consume = 0,
		client = {
			status = { thirst = -100000, stress = -25000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_cs_panties_02`, pos = vec3(0.03, 0.0, 0.02), rot = vec3(0.0, -13.5, -1.5) },
			usetime = 2500,
		}
	},

	['lockpick'] = {
		label = 'Lockpick',
		weight = 160,
	},

	['phone'] = {
		label = 'Phone',
		weight = 190,
		stack = false,
		consume = 0,
		client = {
			add = function(total)
				if total > 0 then
					pcall(function() return exports.npwd:setPhoneDisabled(false) end)
				end
			end,

			remove = function(total)
				if total < 1 then
					pcall(function() return exports.npwd:setPhoneDisabled(true) end)
				end
			end
		}
	},

	['money'] = {
		label = 'Hopeasirppi',
	},

	['mustard'] = {
		label = 'Mustard',
		weight = 500,
		client = {
			status = { hunger = 25000, thirst = 25000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_food_mustard`, pos = vec3(0.01, 0.0, -0.07), rot = vec3(1.0, 1.0, -1.5) },
			usetime = 2500,
			notification = 'You.. drank mustard'
		}
	},


	['radio'] = {
		label = 'Radio',
		weight = 1000,
		stack = false,
		allowArmed = true
	},

	['armour'] = {
		label = 'Bulletproof Vest',
		weight = 3000,
		stack = false,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 3500
		}
	},

	['clothing'] = {
		label = 'Clothing',
		consume = 0,
	},

	['mastercard'] = {
		label = 'Mastercard',
		stack = false,
		weight = 10,
	},

	['scrapmetal'] = {
		label = 'Scrap Metal',
		weight = 80,
	},

	['scrapmetal'] = {
		label = 'Scrap Metal',
		weight = 80,
	},

	['cl_01'] = {
		label = 'ชุดคลุมดำ',
		weight = 0,
	
	},

	['wand_vip_01'] = {
		label = 'Premium sauva',
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['fire_spell'] = {
		label = 'Tuliloitsu',
		weight = 0,
		stack = false,
	},

	['book'] = {
		label = 'Kirja',
		weight = 200,
		stack = false,
	},
	['sivu'] = {
		label = 'Kirjansivu',
		weight = 1,
		stack = true,
	},

	['s_test_01'] = {
		label = 's_test_01',
		weight = 0,
		stack = false,
	},
	['smash_spell'] = {
		label = 'Smashloitsu', --rikki korjaa
		weight = 0,
		stack = false,
	},
	['sr_01'] = {
		label = 'Kaapu',
		weight = 0,
		stack = false,
	},
	['sr_02'] = {
		label = 'Luihuisen kaapu',
		weight = 0,
		stack = false,
	},
	['sr_03'] = {
		label = 'Rohkelikon kaapu',
		weight = 0,
		stack = false,
	},
	['sr_04'] = {
		label = 'Puuskupuhin kaapu',
		weight = 0,
		stack = false,
	},
	['sr_05'] = {
		label = 'Korpinkynnen kaapu',
		weight = 0,
		stack = false,
	},
	['book_leenahuy'] = {
		label = 'Kirja, vain kirja',
		weight = 0,
		stack = false,
	},


	
		
	['rose_petals'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Ruusun terälehdet', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 100, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},

	['crushed_rose_petals'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Ruusun terälehdet', -- ชือภาษาไทย
		description = 'Murskatut', -- อธิบาย
		weight = 100, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},

	['geranium_petals'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Geraniumin terälehdet', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 100, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},

	['crushed_geranium_petals'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Geraniumin terälehdet', -- ชือภาษาไทย
		description = 'Murskatut', -- อธิบาย
		weight = 100, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},

	['ravender_petals'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Korpinkukan terälehdet', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 100, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},

	['crushed_ravender_petals'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Korpinkukan terälehdet', -- ชือภาษาไทย
		description = 'Murskatut', -- อธิบาย
		weight = 100, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},

	['branch'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Oksa', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 500, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},

	['bread'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Leipä', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 500, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},

	['wax'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Vaha', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 500, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},

	['mermaid_pearls'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Merenneidon helmet', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 500, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},

	['crystal'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Sateenkaarikristalli', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 250, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},

	['red_crystal'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Punainen kristalli', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 500, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},

	['brown_crystal'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Ruskea kristalli', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 500, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},

	['blue_crystal'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Sininen kristalli', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 500, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},

	['green_crystal'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Vihreä kristalli', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 500, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},

	['lemongrass_pieces'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Sitruunaruoho', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 100, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},

	['mandrake_piece'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Mandraken juuri', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 100, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},

	['ginseng_root_parts'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Ginseng -juuren osa', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 100, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},

	['ground_lemongrass'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Jauhettu sitruunaruoho', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 100, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},

	['water'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Vesipullo', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 100, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
		client = {
			status = { thirst = 500000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ld_flow_bottle`, pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5) },
			usetime = 2500,
			cancel = false,
			--notification = 'You drank some refreshing water'
		}
	},

	['honey'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Hunaja', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 500, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},

	['rose_oil'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Ruusuöljy', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 100, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},

	['distani_oil'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'น้ำมันดิสตานี', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 100, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},

	['lemongrass_oil'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Sitruunaruohoöljy', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 100, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},

	['peppermint_oil'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Piparminttuöljy', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 100, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},

	['pepper_oil'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Pippuriöljy', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 100, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},

	['eucalyptus_oil'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Eukalyptysöljy', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 100, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},

	['lavender_oil'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Laventeliöljy', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 100, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},

	['wormwood_oil'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Koiruohoöljy', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 100, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},

	['spearmint_oil'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Viherminttuöljy', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 100, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},

	['distani_leaves'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Distanin lehdet', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 100, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},

	['crushed_distani_leaves'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Distanin lehdet', -- ชือภาษาไทย
		description = 'Murskatut', -- อธิบาย
		weight = 100, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},

	['crushed_ginseng_leaves'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Ginseng lehdet', -- ชือภาษาไทย
		description = 'Murskatut', -- อธิบาย
		weight = 100, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},

	['ginseng_leaves_ginseng_roots'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Ginseng lehdet ja juuret', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 100, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},

	['leech'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Iilimato', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 100, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},

	['coral'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Koralli', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 500, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},

	['ancient_coral'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Muinainen koralli', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 500, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},

	['crushed_peppermint'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Piparminttu', -- ชือภาษาไทย
		description = 'Murskattu', -- อธิบาย
		weight = 100, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},

	['pumpkin'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Kurpitsa', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 900, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},

	['geranium_seeds'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Geraniumin siemenet', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 50, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},

	['rose_seeds'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Ruusun siemenet', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 50, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['pineapple_seeds'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Ananaksen siemenet', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 50, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['carrot_seeds'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Porkkanan siemenet', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 50, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},

	['distani_seed'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Distanin siemenet', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 50, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},

	['seeds_bouncing_around'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Pomppivat siemenet', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 50, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},

	['lemongrass_seeds'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Sitruunaruohon siemenet', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 50, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},

	['peppermint_seeds'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Piparmintun siemenet', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 50, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},

	['spearmint_seeds'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Vihermintun siemenet', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 50, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},

	['pumpkin_seeds'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Kurpitsan siemenet', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 50, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},

	['lavender_seeds'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Laventelin siemenet', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 50, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},

	['wormwood_seeds'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Koiruohon siemenet', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 50, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},

	['mint_seeds'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Mintun siemenet', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 50, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},

	['asphodel_seeds'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Asfodelin siemenet', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 500, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},

	['spearmint_young_shoots'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Vihermintun versot', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 100, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},

	['root'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Asfodelin juuret', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 100, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},

	['mandrake_root'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Mandraken juuret', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 100, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},

	['pixie_nails'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Ilkiö', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 200, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},

	['textbook_fragments'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Oppikirjan katkelmia', -- ชือภาษาไทย
		description = 'Irti revittyjä', -- อธิบาย
		weight = 100, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},

	['crushed_spearmint'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Viherminttu', -- ชือภาษาไทย
		description = 'Murskattu', -- อธิบาย
		weight = 100, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},

	['seaweed'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Merilevä', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 500, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},

	['grass'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Ruoho', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 500, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},

	['flobber_worm'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Inhamato', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 100, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},

	['bouncing_bulbs'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Pomppiva pulpukka', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 100, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},

	['gillyweed'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Kidusruoho', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 100, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},

	['asphodel_flower'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Asfodelin kukka', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 100, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},

	['golden_apple'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Kultainen omena', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 500, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},

	['geranium_oil'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Geraniumin öljy', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 100, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},

	['peppermint_leaves'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Piparmintun lehdet', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 100, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},

	['leaf'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Pomppu pulpukan lehti', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 300, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},

	['eucalyptus_leaves'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Eukalyptuksen lehdet', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 500, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},

	['wormwood_leaves'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Koiruohon lehdet', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 100, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},

	['crushed_wormwood_leaves'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Koiruohon lehdet', -- ชือภาษาไทย
		description = 'Murskattu', -- อธิบาย
		weight = 100, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},

	['mint_leaves'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Mintun lehdet', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 100, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},

	['crushed_mint_leaves'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Mintun lehdet', -- ชือภาษาไทย
		description = 'Murskatut', -- อธิบาย
		weight = 100, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},

	['silver_coin'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Hopeakolikko', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 500, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},

	['crushed_eucalyptus_leaves'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Eukalyptuksen lehdet', -- ชือภาษาไทย
		description = 'Murskattu', -- อธิบาย
		weight = 500, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},

	['pumpkin_soup'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Kurpitsasoppa', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 500, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},

	['egg_dipped_sandwich'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Munavoileipä', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 500, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},

	['beef_steak'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Pihvi', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 500, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},

	['black_pepper'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Mustapippuri', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 500, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},

	['salt'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Suola', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 500, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},

	['egg'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Kananmuna', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 500, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},

	['dough'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Taikina', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 500, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},

	['orange'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Appelsiini', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 500, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},

	['meat'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Lihaa', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 500, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},

	['nuotio'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Nuotio', -- ชือภาษาไทย
		description = 'Vaikkapa ruoan valmistamiseen', -- อธิบาย
		weight = 800, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},

	['strawberry'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Mansikka', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 500, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},

	['butter'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Voi', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 500, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},

	['cereal'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Vilja', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 500, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},

	['herbology_book'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Yrttilääkekirja', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 250, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['aeronautics_book'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Ilmailukirja', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 250, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['self_defense_book'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Itsepuolustuskirja', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 250, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['witchcraft_book'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Noidanoppikirja', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 250, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['transformation_book'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Muodonmuutoksenkirja', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 250, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['potions_book'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Ihmejuomakirja', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 250, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},


	['hufflepuff_key'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Puuskupuhin avain', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['gryffindor_key'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Rohkelikon avain', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['slytherin_key'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Luihuisen avain', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['ravenclaw_key'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Korpinkynnen avain', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['room_key'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Huoneen avain', -- ชือภาษาไทย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['professor_key'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Professorin avain', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['sickle_coin'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Hopeasirppi', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['standard_potion_pot'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Pata', -- ชือภาษาไทย
		description = 'Opiskelijan perus pata', -- อธิบาย
		weight = 250, -- นำหนัก 1000 = 1 กิโล
		--buttons = {{label='Sijoita',action=function(slot) TriggerServerEvent("cat_potion_craft_v2:spawnpot") end}},
		stack = false, -- เเสตกได้รึป่าว
	},

	['feather_pen'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Sulkakynä', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 100, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},

	['wand_box'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Sauvalaatikko', -- ชือภาษาไทย
		description = 'Avaa laatikko saadaksesi taikasauva', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['letter'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Kirje', -- ชือภาษาไทย
		description = 'Lähetä kirje kaverille', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
		buttons = {
			{
				label = 'Kirjoita',
				action = function(slot)
					exports["cat_mail"]:writeMail(slot)
				end
			},
			{
				label = 'Lue',
				action = function(slot)
					exports["cat_mail"]:readMail(slot)
				end
			},
		}
	},

	['floo_powder'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Hormipulveri', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},


	['cat'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Kissa', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['dog'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Koira', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['eagle'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Haukka', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['owl'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Pöllö', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['magic_wand'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Taikasauva', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['mouse'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Hiiri', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['list_of_purchases'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Ostoslista', -- ชือภาษาไทย
		description = 'Ensimmäisen kouluvuoden ostoslista', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['magic_box'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = '10KG Taikalaatikko', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 1000, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
		buttons = {
			{
				label = 'Aseta',
				action = function(slot)
					
					exports["cat_storagebox"]:placebox(slot)
				end
			},
		}
	},

	['sorting_hat'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Lajitteluhattu', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 1350, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['wand_02'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Sykomorisauva', -- ชือภาษาไทย
		description = 'Ydin: Doxyn siipeä, pinta: Sykomoriviikunapuuta', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['wand_03'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Mäntysauva', -- ชือภาษาไทย
		description = 'Ydin: Kelpien hiusta, pinta: Mäntyä', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['wand_04'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Sakurasauva', -- ชือภาษาไทย
		description = 'Ydin: Billywigin pistintä, pinta: Sakuraa', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['wand_05'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Kuusisauva', -- ชือภาษาไทย
		description = 'Ydin: Yksisarvisen jouhta, pinta: Kuusta', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['wand_06'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Tammisauva', -- ชือภาษาไทย
		description = 'Ydin: Lohikäärmeen sydäntä, pinta: Tammea', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['reskin'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Pukeutumiskortti', -- ชือภาษาไทย
		description = 'Pukeudu missä tahansa', -- อธิบาย
		weight = 80, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},

	['chocolate_frog'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Suklaasammakko', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 40, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},

	['legendary'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Legendaarinen', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},

	['rare'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Rare', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},

	['mythic'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Mytologinen', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},

	['common'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Yleinen', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},

	['epic'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Eeppinen', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},

	['dark'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Pimeä', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},

	['premium'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Premium -kortti', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
		buttons = {
			{
				label = 'Premium',
				group = 'Premium',
				action = function(slot)
					
					exports["cat_premium"]:changeskin()
				end
			},
			
		},
	},
	
	['premium_plus'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Premium plus -kortti', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
		buttons = {
			{
				label = 'Premium',
				group = 'Premium Plus',
				action = function(slot)
					
					exports["cat_premium"]:changeskin()
				end
			},
			
		},
		
	},

	['premium_pack'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Premiumlaatikko', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	
	['premium_plus_pack'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Premium pluslaatikko', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['magic_box_20kg'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = '20KG Taikalaatikko', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
		buttons = {
			{
				label = 'Tarkastele',
				action = function(slot)
					
					exports["cat_storagebox"]:placebox(slot)
				end
			},
		}
	},

	['magic_box_10kg'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = '10KG Taikalaatikko', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
		buttons = {
			{
				label = 'Tarkastele',
				action = function(slot)
					
					exports["cat_storagebox"]:placebox(slot)
				end
			},
		}
	},

	['scarf_box'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Huivilaatikko', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 700, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['scarf_sl'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Luihuisen huivi', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 600, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	

	['scarf_gf'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Rohkelikon huivi', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 600, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['scarf_rv'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Korpinkynnen huivi', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 600, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['scarf_hf'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Puuskupuhin huivi', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 600, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},	
	
	['storage_basic'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Tavallinen säilytyslaatikko', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['sofa_white_vip1'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'โซฟาหนังสีขาว', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['sofa_blue_vip2'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'โซฟาหนังสีน้ำเงิน', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['lampvip'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'โคมไฟ', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['jarvip'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'โหลใส่ของ', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['plant_potvip'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'กระถางต้นไม้', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['chair_white_vip'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'เก้าอี้หนังสีขาว', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['tv_vip'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'ทีวี', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['music_player_vip'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Gramofoni', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['table_vip'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'โต๊ะ', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['chair_blue_vip2'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'เก้าอี้หนังน้ำเงิน', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['chair_red_nomal_1'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'เก้าอี้หนังสีแดง', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['chair_green_nomal_2'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'เก้าอี้หนังสีเขียว', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['chair_yellow_nomal_3'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'เก้าอี้หนังสีเหลือง', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['chair_blue_nomal_4'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'เก้าอี้หนังสีน้ำเงิน', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['basket_black_nomal_1'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'ตระกร้าสีดำ', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['basket_brown_nomal_2'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'ตระกร้าสีน้ำตาล', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['carpet_nomal'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'พรม', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['sofa_red_nomal_1'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'โซฟายาวสีแดง', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['bed_red_nomal'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'เตียงสีแดง', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},


	['chair_red_nomal_5'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'เก้าอี้เล็กหนังสีแดง', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['sofa_red_nomal_2'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'โซฟายาวสีแดงแบบที่2', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['curtain_red_nomal'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'ผ้าม่านปิดหน้าต่างสีแดง', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['chaise_red_longue_nomal_1'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'เก้าอี้ไม้ยาวสีแดง', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['wardrobe_nomal'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'ตู้เสื้อผ้า', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['chair_yellow_nomal_6'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'เก้าอี้เล็กหนังสีเหลือง', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['sofa_yellow_nomal_3'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'โซฟายาวสีเหลือง', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['chaise_yellow_longue_nomal_2'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'เก้าอี้ไม้ยาวสีเหลือง', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['curtain_yellow_nomal'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'ผ้าม่านปิดหน้าต่างสีเหลือง', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['wooden_cabinet_nomal'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'ตู้ไม้', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['black_shelf_nomal'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'ชั้นวางของสีดำ', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['brown_shelf_nomal'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'ชั้นวางของสีน้ำตาล', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['chair_blue_nomal_7'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'เก้าอี้เล็กหนังสีน้ำเงิน', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['sofa_blue_nomal_3'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'โซฟายาวสีน้ำเงิน', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['curtain_blue_nomal'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'ผ้าม่านปิดหน้าต่างสีน้ำเงิน', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['chaise_blue_longue_nomal_3'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'เก้าอี้ไม้ยาวสีน้ำเงิน', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['blue_round_table'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'โต๊ะกลมสีน้ำเงิน', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['pink_bed_vip'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'เตียงสีชมพู', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['white_plant_pot_vip'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'กระถางต้นไม้สีขาว', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['snake_statue_vip'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'รูปปั้นงู', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['wooden_storage_shelf_vip'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'ชั้นไม้เก็บของ', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['wooden_storage_cabinet_vip'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'ตู้ไม้เก็บของ', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['blue_checkered_bed_vip'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'เตียงนอนลายตารางสีน้ำเงิน', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['yellow_checkered_bed_vip'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'เตียงนอนลายตารางสีเหลือง', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['red_checkered_bed_vip'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'เตียงนอนลายตารางสีแดง', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['chair_yellow_nomal_5'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'เก้าอี้เล็กหนังสีเหลือง', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['lampvip1'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'โคมไฟ', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['llama_plant_pot'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'กระถางต้นไม้น่ารัก', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	
	['wood_fireplace_vip'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'เตาผิงไม้', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['red_chair_nomal'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'เก้าอี้สีแดงพร้อมผ้าห่ม', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['sl_nomal'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'กระเป๋าสลิธีริน', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['ploy_wardrobe_nomal'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'ตู้ไม้ยาว', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['ploy_fire_nomal'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'เตาผิงไม้แบบที่2', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['ploy_bed_nomal'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'เตียงนอนสีขาว', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['ploy_wardrobe2_nomal'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'ตู้ไม้แบบแยกชั้น', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['ploy_fireplace_nomal'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'เตาผิงหิน', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['letter_read'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
        label = 'จดหมายที่อ่านแล้ว', -- ชือภาษาไทย
        description = '', -- อธิบาย
        weight = 0, -- นำหนัก 1000 = 1 กิโล
        stack = false, -- เเสตกได้รึป่าว
    },

	['goble_vip'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'ลูกโลก', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['gf_nomal'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'กระเป๋ากริฟฟินดอร์', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['piano_nomal'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'เปียโน', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['ploy_table_vip'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'โต๊ะทำการบ้าน', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['ploy_tablewood_nomal'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'เก้าอี้ไม้', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['ploy_chairred_nomal'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'เก้าอี้ไม้เบาะแดง', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['ploy_chair_vip'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'เก้าอี้หนังหรูสีแดง', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['ploy_green_vip'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'เก้าอี้หนังหรูสีเขียว', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['plant_nomal'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'ชั้นวางต้นไม้', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},


	['ploy_shelf_nomal'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'ชั้นวางของ', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['bookshelf_nomal'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'ชั้นวางหนังสือ', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['ploy_bed_vip'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'เตียงนอนสีน้ำเงิน', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['chair01_nomal'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'เก้าอี้สีแดง', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['vadim_lamp_nomal'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'เทียน', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['vadim_lamp2_nomal'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'โคมไฟ', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['ploy_bedsl_vip'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'เตียงนอนสีเขียว', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['ploy_bedgf_vip'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'เตียงนอนสีแดง', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['ploy_bedhf_vip'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'เตียงนอนสีเหลือง', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['aconite'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'ดอกอะโคไนต์', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 500, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
    },

	['shi_locker_nomal'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'ล็อคเกอร์', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['hat_cat_2_bc'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Harmaa villahattu', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['hat_cat_2_bl'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Sininen villahattu', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['hat_cat_2_gr'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Vihreä villahattu', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['hat_cat_2_pl'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Pastellinvärinen villahattu', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['hat_cat_2_pl2'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Vaaleanpunainen villahattu', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['hat_cat_2_rd'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Punainen villahattu', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['hat_cat_2_wh'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Valkoinen villahattu', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['hat_cat_2_yw'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Keltainen villahattu', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['hat_cat_bl'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Sininen kissankorvahattu', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['hat_cat_gr'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Vihreä kissankorvahattu', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['hat_cat_pl'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Pinkki kissankorvahattu', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['hat_cat_red'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Punainen kissankorvahattu', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['hat_cat_wh'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Valkoinen kissankorvahattu', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['hat_cat_yw'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Keltainen kissankorvahattu', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['bag_5_kg'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = '5KG laukku', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['watering_can'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Kastelukannu', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 500, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['gf_donate'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Rohkelikon viitta', -- ชือภาษาไทย
		description = 'Viitta vähentää kestävyyden kulumista', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['hf_donate'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Puuskupuhin viitta', -- ชือภาษาไทย
		description = 'Viitta vähentää kestävyyden kulumista', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['rv_donate'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Korpinkynnen viitta', -- ชือภาษาไทย
		description = 'Viitta vähentää kestävyyden kulumista', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['sl_donate'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Luihuisen viitta', -- ชือภาษาไทย
		description = 'Viitta vähentää kestävyyden kulumista', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['boomberry'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
        label = 'Boom marjamehu', -- ชือภาษาไทย
        description = '', -- อธิบาย
        weight = 100, -- นำหนัก 1000 = 1 กิโล
        stack = true, -- เเสตกได้รึป่าว
    },

	['salamander'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
        label = 'Salamanterin veri', -- ชือภาษาไทย
        description = '', -- อธิบาย
        weight = 100, -- นำหนัก 1000 = 1 กิโล
        stack = true, -- เเสตกได้รึป่าว
    },

    ['lionfishes'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
        label = 'Leijonakalan selkäranka', -- ชือภาษาไทย
        description = '', -- อธิบาย
        weight = 100, -- นำหนัก 1000 = 1 กิโล
        stack = true, -- เเสตกได้รึป่าว
    },
	['old_mortar'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Mortteli', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 250, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['slicing'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Viipalointitarvikkeet', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 250, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['potion_hair_loss'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Ratkaisukaava hiustenlähtöön', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['potion_hair'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Hiusten kasvuliuoksen kaava', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['hair_book'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Hiustenkasvun oppikirja', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['armour_book'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Armarin oppikirja', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['armourpotion'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
	label = 'Armarin liemi', -- ชือภาษาไทย
	description = '', -- อธิบาย
	weight = 250, -- นำหนัก 1000 = 1 กิโล
	stack = true, -- เเสตกได้รึป่าว
	},
	['shi_potion_01'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
	label = 'Wickenweldin liemi', -- ชือภาษาไทย
	description = '', -- อธิบาย
	weight = 250, -- นำหนัก 1000 = 1 กิโล
	stack = true, -- เเสตกได้รึป่าว
	},
	['shi_potion_02'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
	label = 'Hiustenlähdön liemi', -- ชือภาษาไทย
	description = '', -- อธิบาย
	weight = 250, -- นำหนัก 1000 = 1 กิโล
	stack = true, -- เเสตกได้รึป่าว
	},
	['shi_potion_03'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
	label = 'Hiustenkasvun liemi', -- ชือภาษาไทย
	description = '', -- อธิบาย
	weight = 250, -- นำหนัก 1000 = 1 กิโล
	stack = true, -- เเสตกได้รึป่าว
	},
	['smelt'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
	label = 'Smelt', -- ชือภาษาไทย
	description = '', -- อธิบาย
	weight = 0, -- นำหนัก 1000 = 1 กิโล
	stack = false, -- เเสตกได้รึป่าว
	},
	['potion_wiggenweld'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Wiggenweldin reseptikirja', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['food_pumpkin_soup'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Kurpitsakeiton resepti', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['food_sandwich'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Munavoileipä', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['food_steak'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Pihvi', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['food_candy_apple'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Hunajaomena', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['candy_apple'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Hunajaomena', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 500, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['condiment'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Mauste', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 250, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['com_donate'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Pieni rahakassi', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
    },
    ['ep_donate'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Iso rahapussi', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
    },
    ['ra_donate'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Isompi rahapussi', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
    },

	['hair_loss_book'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
        label = 'Hiustenlähdön oppikirja', -- ชือภาษาไทย
        description = '', -- อธิบาย
        weight = 250, -- นำหนัก 1000 = 1 กิโล
        stack = false, -- เเสตกได้รึป่าว
    },
	['wiggenweld_box'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Wickenweldin ainesosat', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
    },
	['hair_loss_box'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Hiustenlähdön ainesosat', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
    },
	['ploy_box_nomal'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
        label = 'กล่องใส่ลูกควิดดิช', -- ชือภาษาไทย
        description = '', -- อธิบาย
        weight = 0, -- นำหนัก 1000 = 1 กิโล
        stack = true, -- เเสตกได้รึป่าว
    },

    ['ploy_blue_nomal'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
        label = 'เตียงสีฟ้า', -- ชือภาษาไทย
        description = '', -- อธิบาย
        weight = 0, -- นำหนัก 1000 = 1 กิโล
        stack = false, -- เเสตกได้รึป่าว
    },


    ['ploy_green_nomal'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
        label = 'เตียงสีเขียว', -- ชือภาษาไทย
        description = '', -- อธิบาย
        weight = 0, -- นำหนัก 1000 = 1 กิโล
        stack = false, -- เเสตกได้รึป่าว
    },

    ['ploy_yellow_nomal'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
        label = 'เตียงสีเหลือง', -- ชือภาษาไทย
        description = '', -- อธิบาย
        weight = 0, -- นำหนัก 1000 = 1 กิโล
        stack = false, -- เเสตกได้รึป่าว
    },

    ['ploy_bedgreen_nomal'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
        label = 'เตียงสีเขียว', -- ชือภาษาไทย
        description = '', -- อธิบาย
        weight = 0, -- นำหนัก 1000 = 1 กิโล
        stack = false, -- เเสตกได้รึป่าว
    },

    ['ploy_bedred_nomal'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
        label = 'เตียงสีแดง', -- ชือภาษาไทย
        description = '', -- อธิบาย
        weight = 0, -- นำหนัก 1000 = 1 กิโล
        stack = false, -- เเสตกได้รึป่าว
    },

    ['ploy_bedyellow_nomal'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
        label = 'เตียงสีเหลือง', -- ชือภาษาไทย
        description = '', -- อธิบาย
        weight = 0, -- นำหนัก 1000 = 1 กิโล
        stack = false, -- เเสตกได้รึป่าว
    },

    ['ploy_bedblue_nomal'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
        label = 'เตียงสีฟ้า', -- ชือภาษาไทย
        description = '', -- อธิบาย
        weight = 0, -- นำหนัก 1000 = 1 กิโล
        stack = false, -- เเสตกได้รึป่าว
    },

    ['ploy_boxharry_nomal'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
        label = 'กล่องไม้', -- ชือภาษาไทย
        description = '', -- อธิบาย
        weight = 0, -- นำหนัก 1000 = 1 กิโล
        stack = false, -- เเสตกได้รึป่าว
    },

    ['ploy_bluebed_vip'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
        label = 'เตียงหรูสีฟ้า', -- ชือภาษาไทย
        description = '', -- อธิบาย
        weight = 0, -- นำหนัก 1000 = 1 กิโล
        stack = false, -- เเสตกได้รึป่าว
    },

    ['ploy_yellowbed_vip'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
        label = 'เตียงหรูสีเหลือง', -- ชือภาษาไทย
        description = '', -- อธิบาย
        weight = 0, -- นำหนัก 1000 = 1 กิโล
        stack = false, -- เเสตกได้รึป่าว
    },

    ['ploy_greenbed_vip'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
        label = 'เตียงหรูสีเขียว', -- ชือภาษาไทย
        description = '', -- อธิบาย
        weight = 0, -- นำหนัก 1000 = 1 กิโล
        stack = false, -- เเสตกได้รึป่าว
    },

    ['ploy_redbed_vip'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
        label = 'เตียงหรูสีแดง', -- ชือภาษาไทย
        description = '', -- อธิบาย
        weight = 0, -- นำหนัก 1000 = 1 กิโล
        stack = false, -- เเสตกได้รึป่าว
    }, 

	['line_of_spells_freshman'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
	label = 'Tulokkaan loitsusarja', -- ชือภาษาไทย
	description = '', -- อธิบาย
	weight = 0, -- นำหนัก 1000 = 1 กิโล
	stack = false, -- เเสตกได้รึป่าว
	},

	['junior_spell_line'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
	label = 'Nuorten loitsusarja', -- ชือภาษาไทย
	description = '', -- อธิบาย
	weight = 0, -- นำหนัก 1000 = 1 กิโล
	stack = false, -- เเสตกได้รึป่าว
	},

	['senior_spell_line'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
	label = 'Kokeneen loitsusarja', -- ชือภาษาไทย
	description = '', -- อธิบาย
	weight = 0, -- นำหนัก 1000 = 1 กิโล
	stack = false, -- เเสตกได้รึป่าว
	},

	['new_level_of_drug_dosage_line'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
	label = 'Uuden tason lääkesarja', -- ชือภาษาไทย
	description = '', -- อธิบาย
	weight = 0, -- นำหนัก 1000 = 1 กิโล
	stack = false, -- เเสตกได้รึป่าว
	},

	['junior_medicine_line'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
	label = 'Nuorten lääkesarja', -- ชือภาษาไทย
	description = '', -- อธิบาย
	weight = 0, -- นำหนัก 1000 = 1 กิโล
	stack = false, -- เเสตกได้รึป่าว
	},

	['senior_level_medicine_line'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
	label = 'Kokeneen lääkesarja', -- ชือภาษาไทย
	description = '', -- อธิบาย
	weight = 0, -- นำหนัก 1000 = 1 กิโล
	stack = false, -- เเสตกได้รึป่าว
	},

	['freshman_herbs_and_frankincense'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
	label = 'Tulokkaan yrttisarja ja suitsukkeet', -- ชือภาษาไทย
	description = '', -- อธิบาย
	weight = 0, -- นำหนัก 1000 = 1 กิโล
	stack = false, -- เเสตกได้รึป่าว
	},

	['junior_herbs_and_incense'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
	label = 'Nuorten yrttisarja ja suitsukkeet', -- ชือภาษาไทย
	description = '', -- อธิบาย
	weight = 0, -- นำหนัก 1000 = 1 กิโล
	stack = false, -- เเสตกได้รึป่าว
	},

	['senior_level_herbs_and_incense'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
	label = 'Kokeneen yrttisarja ja suitsukkeet', -- ชือภาษาไทย
	description = '', -- อธิบาย
	weight = 0, -- นำหนัก 1000 = 1 กิโล
	stack = false, -- เเสตกได้รึป่าว
	},

	['gus_h_1_donate'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Kerman värinen muotihattu', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
    },

	['gus_h_2_donate'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Sininen muotihattu', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
    },

	['gus_h_3_donate'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Vaaleanpunainen muotihattu', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
    },

	['gus_h_4_donate'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Violetti muotihattu', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
    },

	['gus_h_5_donate'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Vihreä muotihattu', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
    },

	['gus_h_6_donate'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Musta muotihattu', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
    },

	['gus_h1_1_donate'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Vaaleanpunainen karhuhattu', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
    },

	['gus_h1_2_donate'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Sininen karhuhattu', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
    },

	['gus_h1_3_donate'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Keltainen karhuhattu', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
    },

	['gus_h1_4_donate'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Violetti karhuhattu', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
    },

	['gus_h1_5_donate'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Musta karhuhattu rusetilla', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
    },

	['gus_h1_6_donate'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Musta karhuhattu mustalla rusetilla', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
    },

	['gus_h1_7_donate'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Musta karhuhattu punaisella rusetilla', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
    },

	['gus_h1_8_donate'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Must karhuhattu sinisellä rusetilla', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
    },

	['shop_box'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Raaka-ainelaatikko', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
    },

	['plant_box'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Istutuslaatikko', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
    },

	['farm_box'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Monikäyttölaatikko', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
    },

	['docter_cl'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Hoitava kolikko', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
    },

	['gus_h_chris'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
        label = 'Tonttulakki', -- ชือภาษาไทย
        description = '', -- อธิบาย
        weight = 0, -- นำหนัก 1000 = 1 กิโล
        stack = false, -- เเสตกได้รึป่าว
    },

	['docter_cl_2'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
        label = 'เหรียญผ้าคลุมรองประธานบำบัด', -- ชือภาษาไทย
        description = '', -- อธิบาย
        weight = 0, -- นำหนัก 1000 = 1 กิโล
        stack = false, -- เเสตกได้รึป่าว
    },

	['docter_cl_3'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
        label = 'เหรียญผ้าคลุมประธานบำบัด', -- ชือภาษาไทย
        description = '', -- อธิบาย
        weight = 0, -- นำหนัก 1000 = 1 กิโล
        stack = false, -- เเสตกได้รึป่าว
    },
	['candy_chris'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
        label = 'Karkkikeppi', -- ชือภาษาไทย
        description = '', -- อธิบาย
        weight = 0, -- นำหนัก 1000 = 1 กิโล
        stack = true, -- เเสตกได้รึป่าว
    },
	['hat_event_chris'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
        label = 'Jouluinen velhohattu', -- ชือภาษาไทย
        description = '', -- อธิบาย
        weight = 0, -- นำหนัก 1000 = 1 กิโล
        stack = false, -- เเสตกได้รึป่าว
    },
	['bag_event_chris'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
        label = '10KG Jouluinen laukku', -- ชือภาษาไทย
        description = '', -- อธิบาย
        weight = 0, -- นำหนัก 1000 = 1 กิโล
        stack = false, -- เเสตกได้รึป่าว
    },
	['wand_07'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Akaasiasauva', -- ชือภาษาไทย
		description = 'Ydin: Yksisarvisen jouhta, pinta: akaasiapuuta. Vain erittäin taitavan velhon käyttöön', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว 
	},
	['gacha_promote'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
        label = 'กาชาโปรโมท', -- ชือภาษาไทย
        description = '', -- อธิบาย
        weight = 0, -- นำหนัก 1000 = 1 กิโล
        stack = true, -- เเสตกได้รึป่าว
	},	
	['cooking_bag'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
        label = 'Keittiölaukku', -- ชือภาษาไทย
        description = '', -- อธิบาย
        weight = 0, -- นำหนัก 1000 = 1 กิโล
        stack = false, -- เเสตกได้รึป่าว
	},
	['score_magical_creatures'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
        label = 'Ihmeotusten pisteet', -- ชือภาษาไทย
        description = '', -- อธิบาย
        weight = 0, -- นำหนัก 1000 = 1 กิโล
        stack = true, -- เเสตกได้รึป่าว
	},
	['score_transfiguration'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
        label = 'Muuntautumisen pisteet', -- ชือภาษาไทย
        description = '', -- อธิบาย
        weight = 0, -- นำหนัก 1000 = 1 กิโล
        stack = true, -- เเสตกได้รึป่าว
	},
	['score_darkarts'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
        label = 'Pimeydenvoimilta suojautumisen pisteet', -- ชือภาษาไทย
        description = '', -- อธิบาย
        weight = 0, -- นำหนัก 1000 = 1 กิโล
        stack = true, -- เเสตกได้รึป่าว
	},
	['score_potions'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
        label = 'Liemen valmistuksen pisteet', -- ชือภาษาไทย
        description = '', -- อธิบาย
        weight = 0, -- นำหนัก 1000 = 1 กิโล
        stack = true, -- เเสตกได้รึป่าว
	},
	['score_herbology'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
        label = 'Kasvitieteen pisteet', -- ชือภาษาไทย
        description = '', -- อธิบาย
        weight = 0, -- นำหนัก 1000 = 1 กิโล
        stack = true, -- เเสตกได้รึป่าว
	},
	['score_charms'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
        label = 'Magian pisteet', -- ชือภาษาไทย
        description = '', -- อธิบาย
        weight = 0, -- นำหนัก 1000 = 1 กิโล
        stack = true, -- เเสตกได้รึป่าว
	},
	['score_divination'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
        label = 'Ennustamisen pisteet', -- ชือภาษาไทย
        description = '', -- อธิบาย
        weight = 0, -- นำหนัก 1000 = 1 กิโล
        stack = true, -- เเสตกได้รึป่าว
	},
	['score_muggle_studies'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
        label = 'Jästiopin pisteet', -- ชือภาษาไทย
        description = '', -- อธิบาย
        weight = 0, -- นำหนัก 1000 = 1 กิโล
        stack = true, -- เเสตกได้รึป่าว
	},
	['score_astronomy'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
        label = 'Astronomian pisteet', -- ชือภาษาไทย
        description = '', -- อธิบาย
        weight = 0, -- นำหนัก 1000 = 1 กิโล
        stack = true, -- เเสตกได้รึป่าว
	},
	['score_aviation'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
        label = 'Lentämisen pisteet', -- ชือภาษาไทย
        description = '', -- อธิบาย
        weight = 0, -- นำหนัก 1000 = 1 กิโล
        stack = true, -- เเสตกได้รึป่าว
	},
	['score_magic'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
        label = 'Magian pisteet', -- ชือภาษาไทย
        description = '', -- อธิบาย
        weight = 0, -- นำหนัก 1000 = 1 กิโล
        stack = true, -- เเสตกได้รึป่าว
	},
	['score_numbers'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
        label = 'Numero-opin pisteet', -- ชือภาษาไทย
        description = '', -- อธิบาย
        weight = 0, -- นำหนัก 1000 = 1 กิโล
        stack = true, -- เเสตกได้รึป่าว
	},
	['score_runes'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
        label = 'Riimukirjoituksen pisteet', -- ชือภาษาไทย
        description = '', -- อธิบาย
        weight = 0, -- นำหนัก 1000 = 1 กิโล
        stack = true, -- เเสตกได้รึป่าว
	},
	['score_alchemy'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
        label = 'Alkemian pisteet', -- ชือภาษาไทย
        description = '', -- อธิบาย
        weight = 0, -- นำหนัก 1000 = 1 กิโล
        stack = true, -- เเสตกได้รึป่าว
	},
	['magic_book'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Taikuuden historiankirja', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 250, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['numbers_book'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Maagiset numerot kirja', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 250, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['runes_book'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Riimuoppikirja', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 250, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['alchemy_book'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Alkemiakirja', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 250, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},

	['pm_clo_gf'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
        label = 'Tupavaate #1', -- ชือภาษาไทย
        description = '', -- อธิบาย
        weight = 0, -- นำหนัก 1000 = 1 กิโล
        stack = true, -- เเสตกได้รึป่าว
	},
	['pm_clo_hf'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
        label = 'Tupavaate #1', -- ชือภาษาไทย
        description = '', -- อธิบาย
        weight = 0, -- นำหนัก 1000 = 1 กิโล
        stack = true, -- เเสตกได้รึป่าว
	},
	['pm_clo_rv'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
        label = 'Tupavaate #1', -- ชือภาษาไทย
        description = '', -- อธิบาย
        weight = 0, -- นำหนัก 1000 = 1 กิโล
        stack = true, -- เเสตกได้รึป่าว
	},
	['pm_clo_sl'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
        label = 'Tupavaate #1', -- ชือภาษาไทย
        description = '', -- อธิบาย
        weight = 0, -- นำหนัก 1000 = 1 กิโล
        stack = true, -- เเสตกได้รึป่าว
	},
	['pm_sc_sl'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
        label = 'Tupavaate #2', -- ชือภาษาไทย
        description = '', -- อธิบาย
        weight = 0, -- นำหนัก 1000 = 1 กิโล
        stack = true, -- เเสตกได้รึป่าว
	},
	['pm_sc_rv'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
        label = 'Tupavaate #2', -- ชือภาษาไทย
        description = '', -- อธิบาย
        weight = 0, -- นำหนัก 1000 = 1 กิโล
        stack = true, -- เเสตกได้รึป่าว
	},
	['pm_sc_hf'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
        label = 'Tupavaate #2', -- ชือภาษาไทย
        description = '', -- อธิบาย
        weight = 0, -- นำหนัก 1000 = 1 กิโล
        stack = true, -- เเสตกได้รึป่าว
	},
	['pm_sc_gf'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
        label = 'Tupavaate #2', -- ชือภาษาไทย
        description = '', -- อธิบาย
        weight = 0, -- นำหนัก 1000 = 1 กิโล
        stack = true, -- เเสตกได้รึป่าว
	},
	['box_pm_clo'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
        label = 'Vaatelaukku', -- ชือภาษาไทย
        description = '', -- อธิบาย
        weight = 0, -- นำหนัก 1000 = 1 กิโล
        stack = true, -- เเสตกได้รึป่าว
	},
	['scarf_box_30'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
        label = 'Huivilaatikko', -- ชือภาษาไทย
        description = '', -- อธิบาย
        weight = 0, -- นำหนัก 1000 = 1 กิโล
        stack = true, -- เเสตกได้รึป่าว
	},
	['donate_wand_1'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Hawthorn sauva', -- ชือภาษาไทย
		description = 'Ydin: Mernenneiden hiusta, pinta: orapihlajaa. Lyhentää heittoaikaa, vähentää cooldownia sekä luo hauskan kuplaefektin', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว 
	},
	['dn_golden_snitch'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Sieppi', -- ชือภาษาไทย
		description = 'Sieppi kulkee mukanasi ja antaa luutaasi 10% enemmän vauhtia', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว 
	},

	['hat_wizard_1_bl'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Musta kristalli noidanhattu', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['hat_wizard_1_bw'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Ruskea kristalli noidanhattu', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['hat_wizard_1_wh'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Valkoinen kristalli noidanhattu', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['hat_wizard_2_wh'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Valkoinen ruusu noidanhattu', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['hat_wizard_2_rd'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Punainen ruusu noidanhattu', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['hat_wizard_2_pa'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Violetti ruusu noidanhattu', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['hat_wizard_2_bu'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Sininen ruusu noidanhattu', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['hat_wizard_2_gr'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Vihreä ruusu noidanhattu', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['hat_wizard_2_yw'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Keltainen ruusu noidanhattu', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['hat_wizard_2_bl'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Musta ruusu noidanhattu', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['elites_sl'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Luihuisen eliittimerkki', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['elites_hf'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Puuskupuhin eliittimerkki', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['elites_gf'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Rohkelion eliittimerkki', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['elites_rv'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Korpinkynnen eliittimerkki', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['coin_cougars'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Valkoinen tiikerikolikko', -- ชือภาษาไทย
		description = 'Muuntaudut valkoiseksi tiikeriksi', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['coin_dog'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Koirakolikko', -- ชือภาษาไทย
		description = 'Muuntaudut koiraksi', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
['coin_macaw'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Macawkolikko', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['coin_rat'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Rottakolikko', -- ชือภาษาไทย
		description = 'Muuntaudut rotaksi', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['coin_hawk'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Haukkakolikko', -- ชือภาษาไทย
		description = 'Muuntaudut haukaksi', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['coin_dog2'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Paimenkoirakolikko', -- ชือภาษาไทย
		description = 'Muuntaudut koiraksi', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['tic_fa'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Muotikirje', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['mistletoe'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Mistelinoksa', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 500, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['divination_book'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Ennustamisen kirja', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 250, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['muggle_studies_book'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Jästiopin kirja', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 250, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['astronomy_book'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Astronomian kirja', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 250, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['magical_creatures_book'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Ihmeotusten kirja', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 250, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['fetish_book'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Amuletin tietokirja', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['amuletti'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Amuletti', -- ชือภาษาไทย
		description = 'Mielenkiintoinen amuletti', -- อธิบาย
		weight = 455, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['dg_crown'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Shakkikruunu', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว 
	},
	['dg_crown_1'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Shakkikruunu', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว 
	},
	['dg_crown_2'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Shakkikruunu', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว 
	},
	['dg_crown_3'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Shakkikruunu', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว 
	},
	['dg_crown_4'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Shakkikruunu', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว 
	},
	['dg_crown_5'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Shakkikruunu', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว 
	},
	['dg_pawn'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Shakkinappula', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 100, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['dg_rook'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'หมากรุกตัวเรือ', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 100, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['dg_knight'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'หมากรุกตัวม้า', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 100, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['dg_bishop'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'หมากรุกตัวบิชอพ', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 100, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['dg_queen'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'หมากรุกตัวราชินี', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 100, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['dg_king'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'หมากรุกตัวราชา', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 100, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},

	['year_1'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Ekan vuoden kortti', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['year_2'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Toisen vuoden kortti', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['year_3'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Kolmannen vuoden kortti', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['year_4'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Neljännen vuoden kortti', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['year_5'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Viidennen vuoden kortti', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['year_6'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Kuudennen vuoden kortti', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['year_7'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Seitsemännen vuoden kortti', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['shooting_star'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Luuta', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['bag_20'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = '20KG laukku', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['box_bag_30'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'กล่องกระเป๋าเพิ่มน้ำหนัก 20 โล 30 วัน', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['box_bag_7'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'กล่องกระเป๋าเพิ่มน้ำหนัก 20 โล 7 วัน', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['standard_potion'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Perusliemen ainesosat', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 100, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['box_exp_7'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Loitsumestarin laatikko', -- ชือภาษาไทย
		description = 'Sisältää pergamentin, joka on voimassa 7 päivää avaamishetkestä', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['exp_7'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Loitsumestarin pergamentti', -- ชือภาษาไทย
		description = 'Kerryttää loitsimiskokemusta (loitsun exp x5)', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['exp_2'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'ใบเพิ่มความชำนานคาถา(x2)', -- ชือภาษาไทย
		description = 'เพิ่มค่าประสบการณ์ด้านความชำนานคาถา (exp x2) สำหรับห้องต้องประสงค์', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['box_exp'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'กล่องคูณค่าประสบการณ์(7วัน)', -- ชือภาษาไทย
		description = 'เพิ่มค่าประสบการณ์ (exp x3)', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['exp_7_1'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'คูณค่าประสบการณ์(7วัน)', -- ชือภาษาไทย
		description = 'เพิ่มค่าประสบการณ์ (exp x3)', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['dogger_basic'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Dogger', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['fetish_life'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'บันทึกความทรงจำ', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},



	['tumoring'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'แหวนของ Murtlap', -- ชือภาษาไทย
		description = 'แหวน Jinx ไร้ผลชั่วคราว 10 วินาที (Cooldown 30 นาที)', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['tebo_veil'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'ผ้าคลุมของ Tabo', -- ชือภาษาไทย
		description = 'ผ้าคลุม Vit +2', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['demiguiseveil'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'ผ้าคลุมของ Demiguise', -- ชือภาษาไทย
		description = 'ผ้าคลุมล่องหน ทุกคาถาไร้ผลชั่วคราว 3 วินาที (Cooldown 30 นาที)', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['dg_tumor_r'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'เนื้องอกส่วนหลัง', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 100, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['dg_tumor'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'เนื้องอกส่วนหน้า', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 100, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['dg_tumor_p'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'เนื้องอกปั้นก้อน', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 100, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['dg_murtlap'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'เพชรเมิร์ดแลป', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 100, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['dg_tebo'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'แผ่นหนังของ Tebo', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 100, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['dg_boar_r'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'หนัง Tebo', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 100, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['dg_boar'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'เนื้อ Tebo', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 100, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['hotpantabo'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'เทโบกระทะร้อน', -- ชือภาษาไทย
		description = 'เพิ่ม vit +1', -- อธิบาย
		weight = 100, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['food_hotpantabo'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'สูตรเทโบกระทะร้อน', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['dg_demiguise_r'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'ขนส่วนตัวเดมิไกส์', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 100, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['dg_demiguise'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'ขนส่วนหางเดมิไกส์', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 100, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['dg_demiguise_p'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'แผงขนเดมิไกส์', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 100, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['silver_thread'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'ด้ายสีเงินบริสุทธิ์', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 100, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['willow_leaves'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'ใบหลิว', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	["tripolar_camera"] = {
		label = "Filmikamera",
		weight = 0,
		stack = false,
		close = true,
		description = "Jaa parhaat hetket kavereidesi kanssa!",
		client = {
			--[[ image = "tripolar.png", ]]
		}
	},
	["tripolar_paper"] = {
		label = "Filmipaperi",
		weight = 0,
		stack = true,
		close = false,
		description = "Filmikameran kuvapaperi",
		client = {
			image = "photo.png",
		}
	},

	["tripolar"] = {
		label = "Valokuva",
		weight = 0,
		stack = false,
		close = true,
		client = {
			image = "photo.png",
		},
		buttons = {
			{
				label = 'Katso kuvaa',
				action = function(slot)
					exports["mtc-tripolar"]:showitem(slot)
				end
			},
			
		}
	},

	['paper_pre'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Tyhjä paperi', -- ชือภาษาไทย
		description = 'สำหรับนักเรียนโครงการพรีเมี่ยม', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
		buttons = {
			{
				label = 'เขียนกระดาษ',
				action = function(slot)
					exports["cat_paper"]:write(slot)
				end
			},
			{
				label = 'ติดกระดาษ',
				action = function(slot)
					exports["cat_paper"]:useto(slot)
				end
			},
		}
	},

	['paper_basic'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Paperin pala', -- ชือภาษาไทย
		weight = 100, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
		close = true,
		description = "Kirjoitappa vaikka runo :)",
		--[[buttons = { 
			{
				label = 'Kirjoita',
				action = function(slot)
					exports["cat_paper"]:write(slot)
				end
			},
			{
				label = 'Katsele',
				action = function(slot)
					exports["cat_paper"]:useto(slot)
				end
			},
		}]]--
	},

	['paper_tac'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'กระดาษสำหรับติดประกาศ', -- ชือภาษาไทย
		description = 'สำหรับศาสตราจารย์', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
		buttons = { 
			{
				label = 'เขียนกระดาษ',
				action = function(slot)
					exports["cat_paper"]:write(slot)
				end
			},
			{
				label = 'ติดกระดาษ',
				action = function(slot)
					exports["cat_paper"]:useto(slot)
				end
			},
		}
	},

	['paper_sto1'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'กระดาษ', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
		buttons = { 
			{
				label = 'เขียนกระดาษ',
				action = function(slot)
					exports["cat_paper"]:write(slot)
				end
			},
			{
				label = 'ติดกระดาษ',
				action = function(slot)
					exports["cat_paper"]:useto(slot)
				end
			},
		}
	},

	['paper_sto2'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'กระดาษ', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
		buttons = { 
			{
				label = 'เขียนกระดาษ',
				action = function(slot)
					exports["cat_paper"]:write(slot)
				end
			},
			{
				label = 'ติดกระดาษ',
				action = function(slot)
					exports["cat_paper"]:useto(slot)
				end
			},
		}
	},

	['paper_sto3'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'กระดาษ', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
		buttons = { 
			{
				label = 'เขียนกระดาษ',
				action = function(slot)
					exports["cat_paper"]:write(slot)
				end
			},
			{
				label = 'ติดกระดาษ',
				action = function(slot)
					exports["cat_paper"]:useto(slot)
				end
			},
		}
	},

	['paper_sto4'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'กระดาษ', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
		buttons = { 
			{
				label = 'เขียนกระดาษ',
				action = function(slot)
					exports["cat_paper"]:write(slot)
				end
			},
			{
				label = 'ติดกระดาษ',
				action = function(slot)
					exports["cat_paper"]:useto(slot)
				end
			},
		}
	},

	['coin_werewolf'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Ihmissuden kolikko', -- ชือภาษาไทย
		description = 'Muuntaudu ihmissudeksi', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['coin_vampire'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Vampyyrin kolikko', -- ชือภาษาไทย
		description = 'Muuntaudu vampyyriksi', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['blood_bag'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Verta', -- ชือภาษาไทย
		description = 'Ruokkimaan vampyyria', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['wolfsbane_potion'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'ihmissuden liemi', -- ชือภาษาไทย
		description = 'Ihmissuden herkkuliemi', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['candy_rabbit'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Pupukarkki', -- ชือภาษาไทย
		description = 'Muuntaudut pupuksi', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['candy_cat'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Kissakarkki', -- ชือภาษาไทย
		description = 'Muuntaudut kissaksi', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['candy_cow'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Lehmäkarkki', -- ชือภาษาไทย
		description = 'Muuntaudut lehmäksi', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['candy_cat_book'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Kissakarkin valmistuskirja', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['candy_rabbit_book'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Pupukarkin valmistuskirja', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['animal_bones'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Eläimen selkäranka', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 100, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['empty_textbook'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Tyhjä oppikirja', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 100, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['food_box'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Lounaslaatikko', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 100, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	
	['music_box_gacha'] = {
		label = 'Soittorasia',
		weight = 0,
		stack = false,
	},
	['music_box_teac'] = {
		label = 'Soittorasia',
		weight = 0,
		stack = false,
	},
	['box_ring_1'] = {
		label = 'กล่องแหวนประจำบ้าน',
		weight = 0,
		stack = false,
	},
	['box_uni_1'] = {
		label = 'Kaapulaatikko',
		weight = 0,
		stack = false,
	},
	['pm_uni_gf_1'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
        label = 'Koulupuku #1', -- ชือภาษาไทย
        description = 'Koulupuku oppitunneille', -- อธิบาย
        weight = 0, -- นำหนัก 1000 = 1 กิโล
        stack = false, -- เเสตกได้รึป่าว
	},
	['pm_uni_hf_1'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
        label = 'Koulupuku #1', -- ชือภาษาไทย
        description = 'Koulupuku oppitunneille', -- อธิบาย
        weight = 0, -- นำหนัก 1000 = 1 กิโล
        stack = false, -- เเสตกได้รึป่าว
	},
	['pm_uni_rv_1'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
        label = 'Koulupuku #1', -- ชือภาษาไทย
        description = 'Koulupuku oppitunneille', -- อธิบาย
        weight = 0, -- นำหนัก 1000 = 1 กิโล
        stack = false, -- เเสตกได้รึป่าว
	},
	['pm_uni_sl_1'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
        label = 'Koulupuku #1', -- ชือภาษาไทย
        description = 'Koulupuku oppitunneille', -- อธิบาย
        weight = 0, -- นำหนัก 1000 = 1 กิโล
        stack = false, -- เเสตกได้รึป่าว
	},
	['pm_ri_gf_1'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
        label = 'Sormus #1', -- ชือภาษาไทย
        description = 'Tupasormus', -- อธิบาย
        weight = 0, -- นำหนัก 1000 = 1 กิโล
        stack = false, -- เเสตกได้รึป่าว
	},
	['pm_ri_hf_1'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
        label = 'Sormus #1', -- ชือภาษาไทย
        description = 'Tupasormus', -- อธิบาย
        weight = 0, -- นำหนัก 1000 = 1 กิโล
        stack = false, -- เเสตกได้รึป่าว
	},
	['pm_ri_rv_1'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
        label = 'Sormus #1', -- ชือภาษาไทย
        description = 'Tupasormus', -- อธิบาย
        weight = 0, -- นำหนัก 1000 = 1 กิโล
        stack = false, -- เเสตกได้รึป่าว
	},
	['pm_ri_sl_1'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
        label = 'Sormus #1', -- ชือภาษาไทย
        description = 'Tupasormus', -- อธิบาย
        weight = 0, -- นำหนัก 1000 = 1 กิโล
        stack = false, -- เเสตกได้รึป่าว
	},
	['love_potion'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Rakkausrohto', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 250, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['baffled_potion'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Liukenemisliemi', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 250, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['love_potion_book'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Rakkausrohdon oppikirja', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['baffled_potion_book'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Liukenemisliemen oppikirja', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['potion_box'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Liemilaatikko', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['hair_box'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Hiustenlähdön raaka-aineet', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
    },
	['candy_cat_box'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Kissakarkin raaka-aineet', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 250, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
    },
	['candy_rabbit_box'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Pupukarkin raaka-aineet', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 250, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
    },
	['love_potion_box'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Rakkausrohdon raaka-aineet', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 250, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
    },
	['baffled_potion_box'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Liukenemisen raaka-aineet', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 250, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
    },
	['diffindo_quest_f'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Diffindo hyväksytty', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
    },
	['diffindo_quest_r'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Diffindo satunnainen', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
    },
	['diffindo_quest'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Diffindo hyväksytty', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
    },
	['soap'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Saippua', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 250, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
    },

	['sleeping'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Pyjama', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 250, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['sugar'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Sokeri', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 500, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['cocoa_fruit'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Kaakaopavut', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 500, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['cocoa'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Kaakaojauhe', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 500, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['milk'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Maito', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 500, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['chocolate'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Suklaa', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 500, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['chocolate_book'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Suklaaresepti', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['spider_web'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Hämähäkinseitti', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 100, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['spider_venom'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Hämähäkinmyrkky', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 100, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['spider_canine'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Hämähäkin hammas', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 100, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['re_status'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Palautuskirja', -- ชือภาษาไทย
		description = 'Palauttaa kaikki omat tietosi lähtöpisteeseen', -- อธิบาย
		weight = 100, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['sunglasses'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
        label = 'Häikäisynesto lasit', -- ชือภาษาไทย
        description = 'Käytetään häikäisyn estona', -- อธิบาย
        weight = 0, -- นำหนัก 1000 = 1 กิโล
        stack = false, -- เเสตกได้รึป่าว
    },
	['bag_niffler'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
        label = 'Nifflerin laukku', -- ชือภาษาไทย
        description = 'ช่วยเก็บของทีเดียวหลายๆชิ้น ในระยะ', -- อธิบาย
        weight = 0, -- นำหนัก 1000 = 1 กิโล
        stack = false, -- เเสตกได้รึป่าว
    },
	['poison_potion'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Myrkkyliemi', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 250, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['poison_book'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Myrkkyliemen kirja', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['awake_potion'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Herätysliemi', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 250, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['awake_book'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Herätysliemen kirja', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['awake_potion_box'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Herätysliemen ainesosat', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 250, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
    },
	['poison_potion_box'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Myrkkyliemen ainesosat', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 250, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
    },
	['lens'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Linssit', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 250, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
    },
	['eyeglass_frames'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Kehykset', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 250, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
    },




	---------- คาถา ------------
	['arresto'] = {
		label = 'Arresto',
		weight = 0,
		stack = false,
	},
	['avada_spell'] = {
		label = 'Avada Kedavra',
		weight = 0,
		stack = false,
	},
	['basic_spell'] = {
		label = 'Stupify',
		weight = 0,
		stack = false,
	},
	['immobulus'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
        label = 'Immobulus', -- ชือภาษาไทย
        description = '', -- อธิบาย
        weight = 0, -- นำหนัก 1000 = 1 กิโล
        stack = false, -- เเสตกได้รึป่าว
    },
	['lumos'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
        label = 'Lumos', -- ชือภาษาไทย
        description = '', -- อธิบาย
        weight = 0, -- นำหนัก 1000 = 1 กิโล
        stack = false, -- เเสตกได้รึป่าว
    },
	['lepusrifors'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
        label = 'Lepusrifors', -- ชือภาษาไทย
        description = '', -- อธิบาย
        weight = 0, -- นำหนัก 1000 = 1 กิโล
        stack = false, -- เเสตกได้รึป่าว
    },
	['incarcerous'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
        label = 'Incarcerous', -- ชือภาษาไทย
        description = '', -- อธิบาย
        weight = 0, -- นำหนัก 1000 = 1 กิโล
        stack = false, -- เเสตกได้รึป่าว
    },
	['mobilicorpus'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
        label = 'Mobilicorpus', -- ชือภาษาไทย
        description = '', -- อธิบาย
        weight = 0, -- นำหนัก 1000 = 1 กิโล
        stack = false, -- เเสตกได้รึป่าว
    },
	['reducto'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
        label = 'Reducto', -- ชือภาษาไทย
        description = '', -- อธิบาย
        weight = 0, -- นำหนัก 1000 = 1 กิโล
        stack = false, -- เเสตกได้รึป่าว
    },
	['expelliarmus_spell'] = {
		label = 'Expelliarmus',
		weight = 0,
		stack = false,
	},
	['transformation'] = {
		label = 'Transformation',
		weight = 0,
		stack = false,
	},
	['alohomora'] = {
		label = 'Alohomora',
		weight = 0,
		stack = false,
	},
	['herbivicus'] = {
		label = 'Herbivicus',
		weight = 0,
		stack = false,
	},
	['lumos_solem'] = {
		label = 'Lumos Solem',
		weight = 0,
		stack = false,
	},
	['vulnerasanentur'] = {
		label = 'VulneraSanentur',
		weight = 0,
		stack = false,
	},
	['episky'] = {
		label = 'Episky',
		weight = 0,
		stack = false,
	},
	['fumos'] = {
		label = 'Fumos',
		weight = 0,
		stack = false,
	},
	['incendio'] = {
		label = 'Incendio',
		weight = 0,
		stack = false,
	},
	['salama'] = {
		label = 'Electringo',
		weight = 0,
		stack = false,
	},
	['unhoitus'] = {
		label = 'Unhoitus',
		weight = 0,
		stack = false,
	},
	['confringo'] = {
		label = 'Confringo',
		weight = 0,
		stack = false,
	},
	['descendo'] = {
		label = 'Descendo',
		weight = 0,
		stack = false,
	},
	['disillusionment'] = {
		label = 'Disillusionment',
		weight = 0,
		stack = false,
	},
	['homorphus_charm'] = {
		label = 'Homorphus Charm',
		weight = 0,
		stack = false,
	},
	['accio'] = {
		label = 'Accio',
		weight = 0,
		stack = false,
	},
	['decendio'] = {
		label = 'Decendio',
		weight = 0,
		stack = false,
	},
	['aberto'] = {
		label = 'Aberto',
		weight = 0,
		stack = false,
	},
	['protego_totalum'] = {
		label = 'Protego Totalum',
		weight = 0,
		stack = false,
	},
	['muffliato'] = {
		label = 'Muffliato',
		weight = 0,
		stack = false,
	},
	['diffindo'] = {
		label = 'Diffindo',
		weight = 0,
		stack = false,
	},
	['confundo'] = {
		label = 'Confundo',
		weight = 0,
		stack = false,
	},
	['lumos_maxima'] = {
		label = 'Lumos_maxima',
		weight = 0,
		stack = false,
	},
	['aguamenti'] = {
		label = 'Aguamenti',
		weight = 0,
		stack = false,
	},
	['levileo'] = {
		label = 'Levileo',
		weight = 0,
		stack = false,
	},
	['blinkberto'] = {
		label = 'Blinkberto',
		weight = 0,
		stack = false,
	},
	['petrificus_totalus'] = {
		label = 'Petrificus Totalus',
		weight = 0,
		stack = false,
	},
	['omada_sana_magis'] = {
		label = 'Omada Sana Magis',
		weight = 0,
		stack = false,
	},
	['murusco'] = {
		label = 'Murusco',
		weight = 0,
		stack = false,
	},

	['shi_ch01'] = { -- ชื่อเสกร อังกิต ห้ามมีอักษรพิเศษ
		label = 'เก้าอี้สีแดงพนักเหลือง', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['bookst01'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'ตู้หนังสือ 01', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['bookst02'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'ตู้หนังสือ 02', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['bookst03'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'ตู้หนังสือ 03', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['bookst04'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'บันไดชั้นหนังสือ', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['bookst05'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'เก้าอี้ 01', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['bookst06'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'โต๊ะ 01', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['bookst08'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'เก้าอี้ 02', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['bookst09'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'โต๊ะ 02', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['bookst10'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'โต๊ะ 03', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['bookst11'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'โต๊ะ 04', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['bookst12'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'หนังสือ 01', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['bookst14'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'หนังสือ 02', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['bookst16'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'หนังสือ 04', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['bookst17'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'หนังสือ 05', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['bookst19'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'หนังสือ 06', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['bookst20'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'หนังสือ 07', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['bookst22'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'หนังสือ 08', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['bookst23'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'ตู้ 01', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['bookst24'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'ตู้ 02', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['carp01'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'พรม 01', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['carp02'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'พรม 02', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['carp03'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'พรม 03', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['carp04'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'พรม 04', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['carp05'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'พรม 05', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['chair01'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'เก้าอี้ 03', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['clock01'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'นาฬิกา 01', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['hfp_p6-2'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'เปียโน 01', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['hfp_p6-3'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'เก้าอี้ 04', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['hfp_p7'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'ตู้หนังสือ 04', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['hfp_p8'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'รูปภาพ 01', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['hfp_p9'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'โต๊ะ 05', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['hfp_p12'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'โซฟา 01', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['hfp_p13'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'เตียงคลาสสิก', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['hfp_p16'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'รูปภาพ 02', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['hfp_p17'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'รูปภาพ 03', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['hfp_p18'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'รูปภาพ 04', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['hfp_p19'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'รูปภาพ 05', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['hfp_p25'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'โต๊ะ 06', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['hfp_p26'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'โต๊ะ 07', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['hfp_p27'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'โต๊ะ 08', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['hfp_p32'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'โซฟา 02', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['hfp_p33'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'โซฟา 03', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['hfp_p35'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'โต๊ะ 09', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['hfp_w11'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'ตู้ 03', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['hfp_w12'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'เตียงสีแดงลายตาราง', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['hfp_w15'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'โซฟา 04', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['hfp_w20'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'กล่อง 01', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['hfp_w35'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'โคมไฟ 01', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['hfp_w25'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'โซฟา 05', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['hfp_w26'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'โซฟา 06', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['hfp_w31'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'โต๊ะ 10', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['hfp_w32'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'โต๊ะ 11', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['hfp_w33'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'เก้าอี้ 05', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['hfp_w21'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'เก้าอี้ 06', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['hfp_w36'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'เก้าอี้ 07', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['hfp_w37'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'เก้าอี้ 08', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['hfp_w38'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'เก้าอี้ 09', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['hfp_w39'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'โคมไฟ 02', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['hfp_w44'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'โคมไฟ 03', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['hfp_w45'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'เก้าอี้ 10', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['hfp_w46'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'โต๊ะ 11', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['hfp_w47'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'โคมไฟ 04', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['hfp_w48'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'โคมไฟ 05', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['hfp_w50'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'เตียงสีแดงบ้านๆ', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['hfp_w50-1'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'พรม 06', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['hog-w2'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'เก้าอี้ 11', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['hog-w3'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'ตกแต่ง 01', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['hog-w4'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'กระเป๋า 01', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['hog-w13'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'กระเป๋า 02', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['hog-w40'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'เก้าอี้ 12', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['hog-w41'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'เก้าอี้ 13', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['hog-w42'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'เก้าอี้ 14', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['hog-w43'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'โต๊ะ 12', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['hog-w50-2'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'โต๊ะ 13', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['hog-w50-3'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'ตู้ 04', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['hog-w50-4'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'โซฟา 07', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['hog-w50-6'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'ตู้ 05', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['hfp_w50-7'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'พรม 07', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['hfp_w50-8'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'พรม 08', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['hog-w51'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'พรม 09', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['hog-w51-1'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'พรม 10', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['hog-w51-2'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'พรม 11', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['hog-w52'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'พรม 12', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['hog-w51-4'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'พรม 13', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['hog-w53'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'พรม 14', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['hog-w54-1'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'พรม 15', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['hog-w55'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'พรม 16', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['hog-w56'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'พรม 17', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['hog-w59'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'หมากรุก', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['hog-w-set1-1'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'โซฟา 08', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['hog-w-set1-2'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'โต๊ะ 14', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['hog-w-set1-3'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'โต๊ะ 15', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['hog-w-set1-4'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'โต๊ะ 16', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['hog-w-set1-5'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'โซฟา 09', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['hog-w-set2-1'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'เทียน 01', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['hog-w-set2-2'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'เทียน 02', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['hog-w-set2-4'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'เทียน 03', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['hog-w-set2-5'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'เทียน 04', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['kimju01'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'รูปภาพ 06', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['kimju02'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'รูปภาพ 07', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['kimju03'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'รูปภาพ 08', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['kimju04'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'รูปภาพ 09', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['kimju05'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'รูปภาพ 10', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['kimju06'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'รูปภาพ 11', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['kimju07'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'รูปภาพ 12', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['kimju08'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'รูปภาพ 13', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['kimju09'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'รูปภาพ 14', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['kimju010'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'รูปภาพ 15', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['kimju011'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'รูปภาพ 16', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['kimju012'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'รูปภาพ 17', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['kimju013'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'รูปภาพ 18', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['kimju014'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'รูปภาพ 19', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['kimju015'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'รูปภาพ 20', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['kimju016'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'รูปภาพ 21', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['kimju017'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'รูปภาพ 21', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['kimju018'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'รูปภาพ 22', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['kimju019'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'รูปภาพ 23', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['kimju020'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'รูปภาพ 24', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['kimju021'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'รูปภาพ 25', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['kimju022'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'รูปภาพ 26', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['kimju023'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'รูปภาพ 27', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['kimju024'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'รูปภาพ 28', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['kimju025'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'รูปภาพ 29', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['kimju026'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'รูปภาพ 30', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['kimju027'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'รูปภาพ 31', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['kimju028'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'รูปภาพ 32', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['kimju029'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'รูปภาพ 33', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['kimju030'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'รูปภาพ 34', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['kimju031'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'รูปภาพ 35', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['kimju032'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'รูปภาพ 36', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['kimju033'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'รูปภาพ 37', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['kimju034'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'รูปภาพ 39', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['kimju035'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'รูปภาพ 40', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['kimju036'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'รูปภาพ 41', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['kimju037'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'รูปภาพ 42', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['kimju038'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'รูปภาพ 43', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['kimju039'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'รูปภาพ 44', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['kimju040'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'รูปภาพ 45', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['kimju041'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'รูปภาพ 46', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['kimju042'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'รูปภาพ 47', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['kimju043'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'รูปภาพ 48', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['kimju044'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'รูปภาพ 49', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['kimju045'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'รูปภาพ 50', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['kimju046'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'รูปภาพ 51', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['kimju047'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'รูปภาพ 52', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['kimju048'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'รูปภาพ 53', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['kimnan01'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'รูปภาพ 54', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['kimnan02'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'รูปภาพ 55', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['kimnan03'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'รูปภาพ 56', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['kimnan04'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'รูปภาพ 57', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['kimnan05'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'รูปภาพ 58', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['kimnan06'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'รูปภาพ 59', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['kimnan07'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'รูปภาพ 60', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['kimnan08'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'รูปภาพ 61', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['kimnan09'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'รูปภาพ 62', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['nanju01'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'รูปภาพ 63', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['nanju019'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'รูปภาพ 64', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['nanju020'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'รูปภาพ 65', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['nanju021'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'รูปภาพ 66', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['nanju022'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'รูปภาพ 67', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['madam09'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'หุ่นชุด HF', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['madam10'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'หุ่นชุด GF', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['madam11'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'หุ่นชุด SL', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['madam12'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'หุ่นชุด RV', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['checkers'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'กระดานหมากฮอต', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['chess'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'กระดานหมากรุก', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['mugprop01'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'กระดานวาดรูป 01', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['mugprop02'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'กระดานวาดรูป 02', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['mugprop03'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'กระดานวาดรูป 03', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['mugprop04'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'กระดานวาดรูป 04', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['ore01'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'ตกแต่ง 02', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['ore02'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'ตกแต่ง 03', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['potion01'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'ตกแต่ง 04', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['potion02'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'ตกแต่ง 05', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['sofa_str01'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'เก้าอี้ 15', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['sofa_str02'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'เก้าอี้ 16', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['sofa_str04'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'เก้าอี้ 17', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['sofaprop01'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'เก้าอี้ 18', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['teachair01'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'เก้าอี้ 19', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['sofa_str03'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'โซฟา 11', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['sofa_str05'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'โซฟา 12', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['huffbed'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'เตียงบ้าน HF', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['gryffbed'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'เตียงบ้าน GF', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['revebed'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'เตียงบ้าน RV', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['srythbed'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'เตียงบ้าน SL', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['str_p01'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'นาฬิกา 01', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['str_p02'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'นาฬิกา 02', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['tablehp11'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'โต๊ะ 17', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['tabledesk'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'โต๊ะ 18', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['table02'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'โต๊ะ 19', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['tabledesk'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'โต๊ะ 20', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['tablehp11'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'โต๊ะ 21', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['teatable01'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'โต๊ะ 22', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['teatable02'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'โต๊ะ 23', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['teac_sj'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'แทรกศาสตราจารย์', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['pusap_sj'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'แทรกผู้เสพความตาย', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['minis_sj'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'แทรกกระทรวง', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['box_bad_home'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'กล่องเตียงประจำบ้าน', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['bag_valen_m'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'bag 10 KG (Valentine)', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['bag_valen_f'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'bag 10 KG (Valentine)', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['pot_valen'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Ihana pata', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['choco_valen'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Suklaapata', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['checkers_chess'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'แพ็คคู่กระดาน', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['hat_wizard_3_pi'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Sydän velhonhattu', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['hat_wizard_3_pa'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Velhonhattu', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['hat_wizard_3_br'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Ruskea velhonhattu', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['dg_troll'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Peikon iho', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['dg_troll_r'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Peikon iho', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['armor_troll'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Peikon suojus', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['choco_frong4'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Suklaasammakko #4', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['spell_box'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Satunnainen loitsulaatikko', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['dra_box'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Lohikäärmelaatikko', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['dra_black'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Musta lohikäärme', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['snow_dragon'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Jäälohikäärme', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['fire_dragon'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Tulilohikäärme', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['din_dragon'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Yasur lohikäärme', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['wind_dragon'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Arenal lohikäärme', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['phoenix'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Feenix', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['boss_dragon_rad'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Sarvipyrstö', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['lion_shi'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Leijonakuningas', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['ass_pre'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Assistentin merkki', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['prefect'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Prefekti merkki', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['hat_wizard_4_ba'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Musta noidanhattu', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['hat_wizard_4_bl'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Sininen noidanhattu', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['hat_wizard_4_gr'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Vihreä noidanhattu', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['hat_wizard_4_or'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Oranssi noidanhattu', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['hat_wizard_4_pa'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Violetti noidanhattu', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['hat_wizard_4_ra'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Punainen noidanhattu', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['hat_wizard_5_ba'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Musta noidanhattu rusetilla', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['hat_wizard_5_bl'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Sininen johtonoidanhattu', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['hat_wizard_5_bl1'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Sininen johtonoidanhattu 2', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['hat_wizard_5_gr'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Vihreä noidanhattu rusetilla', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['hat_wizard_5_gr1'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Vaaleanvihreä noidanhattu rusetilla', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['hat_wizard_5_or'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Oranssi noidanhattu rusetilla', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['hat_wizard_5_pl'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Vaaleanpunainen noidanhattu rusetilla', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['hat_wizard_5_ra'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Punainen noidanhattu rusetilla', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['hat_wizard_5_wh'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Valkoinen noidanhattu rusetilla', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['hat_wizard_6_bapa'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Mustavioletti noidanhattu', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['hat_wizard_6_whpa'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Violettimusta noidanhattu', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['hat_wizard_6_bagr'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Mustavihreä noidanhattu', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['hat_wizard_6_whgr'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Valkovihreä noidanhattu', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['hat_wizard_6_babl'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Mustasininen noidanhattu', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['hat_wizard_6_whbl'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Sinivalkoinen noidanhattu', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['hat_wizard_6_whba'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Mustavalkoinen noidanhattu nauhalla', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['hat_wizard_6_bawh'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Valkomusta noidanhattu nauhalla', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['hat_wizard_6_wh'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Valkoinen noidanhattu nauhalla', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['escranda'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Escranda sormus', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['pm_clo_gf_2'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
        label = 'Oma-asu #2', -- ชือภาษาไทย
        description = '', -- อธิบาย
        weight = 0, -- นำหนัก 1000 = 1 กิโล
        stack = true, -- เเสตกได้รึป่าว
	},
	['pm_clo_hf_2'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
        label = 'Oma-asu #2', -- ชือภาษาไทย
        description = '', -- อธิบาย
        weight = 0, -- นำหนัก 1000 = 1 กิโล
        stack = true, -- เเสตกได้รึป่าว
	},
	['pm_clo_rv_2'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
        label = 'Oma-asu #2', -- ชือภาษาไทย
        description = '', -- อธิบาย
        weight = 0, -- นำหนัก 1000 = 1 กิโล
        stack = true, -- เเสตกได้รึป่าว
	},
	['pm_clo_sl_2'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
        label = 'Oma-asu #2', -- ชือภาษาไทย
        description = '', -- อธิบาย
        weight = 0, -- นำหนัก 1000 = 1 กิโล
        stack = true, -- เเสตกได้รึป่าว
	},
	['pm_sc_sl_2'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
        label = 'Huivi #3', -- ชือภาษาไทย
        description = '', -- อธิบาย
        weight = 0, -- นำหนัก 1000 = 1 กิโล
        stack = true, -- เเสตกได้รึป่าว
	},
	['pm_sc_rv_2'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
        label = 'Huivi #3', -- ชือภาษาไทย
        description = '', -- อธิบาย
        weight = 0, -- นำหนัก 1000 = 1 กิโล
        stack = true, -- เเสตกได้รึป่าว
	},
	['pm_sc_hf_2'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
        label = 'Huivi #3', -- ชือภาษาไทย
        description = '', -- อธิบาย
        weight = 0, -- นำหนัก 1000 = 1 กิโล
        stack = true, -- เเสตกได้รึป่าว
	},
	['pm_sc_gf_2'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
        label = 'Huivi #3', -- ชือภาษาไทย
        description = '', -- อธิบาย
        weight = 0, -- นำหนัก 1000 = 1 กิโล
        stack = true, -- เเสตกได้รึป่าว
	},
	['whitethorn'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
        label = 'Whitethorn sauva', -- ชือภาษาไทย
        description = 'Ydin: Norsun verisuonta, pinta: norsunluuta. Soveltuu noidille ja velhoille, jotka ovat erittäin taitavia loitsujen hallinnassa.', -- อธิบาย
        weight = 0, -- นำหนัก 1000 = 1 กิโล
        stack = true, -- เเสตกได้รึป่าว
	},
	['crown_top'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
        label = 'Kruunu #1', -- ชือภาษาไทย
        description = '', -- อธิบาย
        weight = 0, -- นำหนัก 1000 = 1 กิโล
        stack = true, -- เเสตกได้รึป่าว
	},
	['b_flying'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Sarvipöllö', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['potion_w_box'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Wickenweldin juomarasia', -- ชือภาษาไทย
		description = 'Wickenweldin liuosta', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['boots_box'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Tehostelaatikko', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['energy_potion'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Energialiemi', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['marble'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Aloittelijan kristallipallo', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['marble_2'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Kokeneen kristallipallo', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['pm_clo_gf_3'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Tupa-asu #3', -- ชือภาษาไทย
		description = 'Tuvan asuste', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['pm_clo_rv_3'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Tupa-asu #3', -- ชือภาษาไทย
		description = 'Tuvan asuste', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['pm_clo_hf_3'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Tupa-asu #3', -- ชือภาษาไทย
		description = 'Tuvan asuste', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['pm_clo_sl_3'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Tupa-asu #3', -- ชือภาษาไทย
		description = 'Tuvan asuste', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['storn_1'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Saavutuskristalli 1', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['storn_2'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Saavutuskristalli 2', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['storn_3'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Saavutuskristalli 3', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['storn_4'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Saavutuskristalli 4', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['storn_5'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Saavutuskristalli 5', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['storn_6'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Saavutuskristalli 6', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['storn_7'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Saavutuskristalli 7', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['exchange'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Lipuke', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['exchange_box'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Lipukelaatikko', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['magic_coin'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Kolikko', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['wolf_veil'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Susiviitta', -- ชือภาษาไทย
		description = 'Viitta lisää verta 500:lla', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['dg_wolf_r'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Suden kynsi', -- ชือภาษาไทย
		description = '', -- อธิบาย
		weight = 100, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	













	["alive_chicken"] = {
		label = "Living chicken",
		weight = 1,
		stack = true,
		close = true,
	},

	["blowpipe"] = {
		label = "Blowtorch",
		weight = 2,
		stack = true,
		close = true,
	},

	["cannabis"] = {
		label = "Cannabis",
		weight = 3,
		stack = true,
		close = true,
	},

	["carokit"] = {
		label = "Body Kit",
		weight = 3,
		stack = true,
		close = true,
	},

	["carotool"] = {
		label = "Tools",
		weight = 2,
		stack = true,
		close = true,
	},

	["clothe"] = {
		label = "Cloth",
		weight = 1,
		stack = true,
		close = true,
	},

	["copper"] = {
		label = "Copper",
		weight = 1,
		stack = true,
		close = true,
	},

	["cutted_wood"] = {
		label = "Cut wood",
		weight = 1,
		stack = true,
		close = true,
	},

	["diamond"] = {
		label = "Diamond",
		weight = 1,
		stack = true,
		close = true,
	},

	["essence"] = {
		label = "Gas",
		weight = 1,
		stack = true,
		close = true,
	},

	["fabric"] = {
		label = "Fabric",
		weight = 1,
		stack = true,
		close = true,
	},

	["fish"] = {
		label = "Fish",
		weight = 1,
		stack = true,
		close = true,
	},

	["fixkit"] = {
		label = "Repair Kit",
		weight = 3,
		stack = true,
		close = true,
	},

	["fixtool"] = {
		label = "Repair Tools",
		weight = 2,
		stack = true,
		close = true,
	},

	["gazbottle"] = {
		label = "Gas Bottle",
		weight = 2,
		stack = true,
		close = true,
	},

	["gold"] = {
		label = "Gold",
		weight = 1,
		stack = true,
		close = true,
	},

	["iron"] = {
		label = "Iron",
		weight = 1,
		stack = true,
		close = true,
	},

	["marijuana"] = {
		label = "Marijuana",
		weight = 2,
		stack = true,
		close = true,
	},

	["medikit"] = {
		label = "Medikit",
		weight = 2,
		stack = true,
		close = true,
	},

	["packaged_chicken"] = {
		label = "Chicken fillet",
		weight = 1,
		stack = true,
		close = true,
	},

	["packaged_plank"] = {
		label = "Packaged wood",
		weight = 1,
		stack = true,
		close = true,
	},

	["petrol"] = {
		label = "Oil",
		weight = 1,
		stack = true,
		close = true,
	},

	["petrol_raffin"] = {
		label = "Processed oil",
		weight = 1,
		stack = true,
		close = true,
	},

	["slaughtered_chicken"] = {
		label = "Slaughtered chicken",
		weight = 1,
		stack = true,
		close = true,
	},

	["stone"] = {
		label = "Stone",
		weight = 1,
		stack = true,
		close = true,
	},

	["washed_stone"] = {
		label = "Washed stone",
		weight = 1,
		stack = true,
		close = true,
	},

	["wood"] = {
		label = "Wood",
		weight = 1,
		stack = true,
		close = true,
	},

	["wool"] = {
		label = "Wool",
		weight = 1,
		stack = true,
		close = true,
	},

	["nimbus20"] = {
		label = "Nimbus -99",
		weight = 3400,
		stack = false,
		close = true,
		client = {
			export = "azakit_pocketbikes.useItem"
		}
		},
	["nimbus16"] = {
		label = "Nimbus",
		weight = 3100,
		stack = false,
		close = true,
		client = {
			export = "azakit_pocketbikes.useItem"
		}
	},


	["nimbus00"] = {
		label = "Nimbus -98",
		weight = 3200,
		stack = false,
		close = true,
		client = {
			export = "azakit_pocketbikes.useItem"
		}
	},
	
	["nimbus200"] = {
		label = "Nimbus 200",
		weight = 3400,
		stack = false,
		close = true,
		client = {
			export = "azakit_pocketbikes.useItem"
		}
	},
	["nimbus201"] = {
		label = "Nimbus 201",
		weight = 3400,
		stack = false,
		close = true,
		client = {
			export = "azakit_pocketbikes.useItem"
		}
	},

	--uudet luudat--

	["froggeri"] = {
		label = "Frogger 4000",
		weight = 3800,
		stack = false,
		close = true,
		client = {
			export = "azakit_pocketbikes.useItem"
		}
	},
	["biili"] = {
		label = "Biili",
		weight = 4400,
		stack = false,
		close = true,
		client = {
			export = "azakit_pocketbikes.useItem"
		}
	},
	["dragonnimbus"] = {
		label = "Dragon Nimbus",
		weight = 4100,
		stack = false,
		close = true,
		client = {
			export = "azakit_pocketbikes.useItem"
		}
	},
	["gobroom"] = {
		label = "GO",
		weight = 2900,
		stack = false,
		close = true,
		client = {
			export = "azakit_pocketbikes.useItem"
		}
	},
	["huispaaja"] = {
		label = "Huispaaja 3000",
		weight = 3550,
		stack = false,
		close = true,
		client = {
			export = "azakit_pocketbikes.useItem"
		}
	},
	["nimbus2000"] = {
		label = "Nimbus 2000",
		weight = 3100,
		stack = false,
		close = true,
		client = {
			export = "azakit_pocketbikes.useItem"
		}
	},
	["plusnimbus"] = {
		label = "Nimbus 2000+",
		weight = 3700,
		stack = false,
		close = true,
		client = {
			export = "azakit_pocketbikes.useItem"
		}
	},
	["noita"] = {
		label = "Noidan risukko",
		weight = 2200,
		stack = false,
		close = true,
		client = {
			export = "azakit_pocketbikes.useItem"
		}
	},
	["pixeldragon"] = {
		label = "PIX Dragon",
		weight = 4000,
		stack = false,
		close = true,
		client = {
			export = "azakit_pocketbikes.useItem"
		}
	},
	["pixelnimbus"] = {
		label = "PIX Nimbus",
		weight = 3900,
		stack = false,
		close = true,
		client = {
			export = "azakit_pocketbikes.useItem"
		}
	},
	["puffi"] = {
		label = "Puffi",
		weight = 3600,
		stack = false,
		close = true,
		client = {
			export = "azakit_pocketbikes.useItem"
		}
	},
	["strato"] = {
		label = "Strato",
		weight = 3000,
		stack = false,
		close = true,
		client = {
			export = "azakit_pocketbikes.useItem"
		}
	},
	["vauhko"] = {
		label = "Vauhko 2000",
		weight = 5700,
		stack = false,
		close = true,
		client = {
			export = "azakit_pocketbikes.useItem"
		}
	},
	["harjanvarsi"] = {
		label = "Noidan harjanvarsi",
		weight = 2700,
		stack = false,
		close = true,
		client = {
			export = "azakit_pocketbikes.useItem"
		}
	},
	["harjanvarsi2"] = {
		label = "Velehon harjanvarsi",
		weight = 2700,
		stack = false,
		close = true,
		client = {
			export = "azakit_pocketbikes.useItem"
		}
	},
--uudet loppu--

	["beer"] = {
		label = "Kermakalja",
		weight = 500,
		stack = true,
		close = true,
	},
	["boombox"] = {
		label = "Gramofoni",
		weight = 1200,
		stack = true,
		close = true,
	},
	['ashwand'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Tuhkasauva', -- ชือภาษาไทย
		description = 'Ydin: Puoliverisen tuhkaa, sekä lohikäärmeen sydänjuurta, pinta: Tammea', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['eliastrix'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Eliastrix', -- ชือภาษาไทย
		description = 'Ydin: Feenikslinnun pyrstösulkia, pinta: Piikkipaatsamaa', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['soulrose'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Soulrose', -- ชือภาษาไทย
		description = 'Ydin: Ruusun tuhkattua terälehteä, pinta: Paju', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['w_bt_01'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Medeval', -- ชือภาษาไทย
		description = 'Ydin: Thestralin häntäjouhta ja hippunen lohikäärmeen sydänjuurta, pinta: Vuorivaahteraa', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['w_bt_02'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Luis', -- ชือภาษาไทย
		description = 'Ydin: Thestralin häntäjouhta, pinta: Pihlajaa', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['w_bt_03'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Coll', -- ชือภาษาไทย
		description = 'Ydin: Thestralin häntäjouhta, pinta: Pähkinäpensasta', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['w_bt_04'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Fearn', -- ชือภาษาไทย
		description = 'Ydin: Thestralin häntäjouhta, pinta: Leppää', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['w_nor_a1'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'SJ Akaasia', -- ชือภาษาไทย
		description = 'Ydin: Lohikäärmeen sydänjuurta, pinta: Akaasiapuuta', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['w_nor_a2'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'SJ Paatsama', -- ชือภาษาไทย
		description = 'Ydin: Lohikäärmeen sydänjuurta, pinta: Piikkipaatsama', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['w_nor_a3'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'SJ Ruoko', -- ชือภาษาไทย
		description = 'Ydin: Lohikäärmeen sydänjuurta, pinta: Ruokoa', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['w_nor_a4'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'SJ Tammi', -- ชือภาษาไทย
		description = 'Ydin: Lohikäärmeen sydänjuurta, pinta: Tammea', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['w_nor_a5'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'SJ Muratti', -- ชือภาษาไทย
		description = 'Ydin: Lohikäärmeen sydänjuurta, pinta: Murattia', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['w_r_black'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Blackrose', -- ชือภาษาไทย
		description = 'Ydin: Yksisarvisen jouhta, pinta: Mustaa omenapuuta', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['w_r_blue'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Bluerose', -- ชือภาษาไทย
		description = 'Ydin: Yksisarvisen jouhta, pinta: Sinistä omenapuuta', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['w_r_pink'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Pinkrose', -- ชือภาษาไทย
		description = 'Ydin: Yksisarvisen jouhta, pinta: Pinkkiä omenapuuta', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['w_r_purple'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Purplerose', -- ชือภาษาไทย
		description = 'Ydin: Yksisarvisen jouhta, pinta: Violettia omenapuuta', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['w_r_red'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Redrose', -- ชือภาษาไทย
		description = 'Ydin: Yksisarvisen jouhta, pinta: Punaista omenapuuta', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['w_val_pink'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Lovegood', -- ชือภาษาไทย
		description = 'Ydin: Yksisarvisen jouhta, pinta: Pihlajaa', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['haamuvendori'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Haamuvendori', -- ชือภาษาไทย
		description = '???', -- อธิบาย
		weight = 0, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['ruokacraft'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Ruoanvalmistuspöytä', -- ชือภาษาไทย
		weight = 2000, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['kirjacraft'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Kirjojen valmistuspöytä', -- ชือภาษาไทย
		weight = 2000, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['sauvacraft'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Sauvojen valmistuspöytä', -- ชือภาษาไทย
		weight = 2000, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['tuhka'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Kuraverisen tuhkaa', -- ชือภาษาไทย
		weight = 2, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['sauvakirja'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Sauvan valmistuskirja', -- ชือภาษาไทย
		weight = 200, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['luutakirja'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Luudan valmistuskirja', -- ชือภาษาไทย
		weight = 200, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['alruuna'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Alruuna', -- ชือภาษาไทย
		weight = 400, -- นำหนัก 1000 = 1 กิโล
		stack = false, -- เเสตกได้รึป่าว
	},
	['jouhi'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Yksisarvisen jouhi', -- ชือภาษาไทย
		weight = 1, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['puutarvikkeet'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Puutarvikkeet', -- ชือภาษาไทย
		weight = 450, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['sauvasarja'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Sauvan rakennussarja', -- ชือภาษาไทย
		weight = 350, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['luutasarja'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Luudan rakennussarja', -- ชือภาษาไทย
		weight = 350, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['sydanjuuri'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Lohikäärmeen sydänjuuri', -- ชือภาษาไทย
		weight = 10, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['feeniks'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Feenikslinnun pyrstösulka', -- ชือภาษาไทย
		weight = 1, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['tammi'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Tammea', -- ชือภาษาไทย
		weight = 10, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['piikkipaatsama'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Piikkipaatsamaa', -- ชือภาษาไทย
		weight = 10, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['paju'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Pajua', -- ชือภาษาไทย
		weight = 10, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['vuorivaahtera'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Vuorivaahteraa', -- ชือภาษาไทย
		weight = 10, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['pihlaja'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Pihlajaa', -- ชือภาษาไทย
		weight = 10, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['pahkinapensas'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Pähkinäpensasta', -- ชือภาษาไทย
		weight = 10, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['leppa'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Leppää', -- ชือภาษาไทย
		weight = 10, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['akaasiapuu'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Akaasiapuuta', -- ชือภาษาไทย
		weight = 10, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['ruoko'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Ruokoa', -- ชือภาษาไทย
		weight = 10, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['muratti'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Murattia', -- ชือภาษาไทย
		weight = 10, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['omenapuu'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Omenapuuta', -- ชือภาษาไทย
		weight = 10, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['selja'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Seljaa', -- ชือภาษาไทย
		weight = 10, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['jouhi2'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Thestralin jouhi', -- ชือภาษาไทย
		weight = 1, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['punainenvari'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Punainen väriaine', -- ชือภาษาไทย
		weight = 10, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['mustavari'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Musta väriaine', -- ชือภาษาไทย
		weight = 10, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['sininenvari'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Sininen väriaine', -- ชือภาษาไทย
		weight = 10, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['pinkkivari'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Pinkki väriaine', -- ชือภาษาไทย
		weight = 10, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['violettivari'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Violetti väriaine', -- ชือภาษาไทย
		weight = 10, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['reducto_lv_2'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Testttttt', -- ชือภาษาไทย
		weight = 10, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},


	---bzzz itemit lähtee tästä---
	['pineapple'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Ananas', -- ชือภาษาไทย
		weight = 100, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['pumpkin'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Kurpitsa', -- ชือภาษาไทย
		weight = 200, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},
	['carrot'] = { -- ชื่อเสก อังกิต ห้ามมีอักษรพิเศษ
		label = 'Porkkana', -- ชือภาษาไทย
		weight = 50, -- นำหนัก 1000 = 1 กิโล
		stack = true, -- เเสตกได้รึป่าว
	},

	['bzzz_food_grill_zucchini_grill_a'] = {
		label = 'Grillattu zucchini',
		weight = 50,
		stack = true,
		close = true,
		client = {
			status = { hunger = 300000 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			prop = { model = `bzzz_food_grill_zucchini_grill_a`, pos = vec3(0.04, -0.02, -0.05), rot = vec3(30.0, -30.0, 65.0) },
			usetime = 5000, 
			--notification = 'Bon appétit!'
		}
	},
	['bzzz_food_grill_zucchini_fresh_a'] = {
		label = 'Zucchini',
		weight = 50,
		stack = true,
		close = true,
	},
['bzzz_food_grill_tofu_grill_a'] = {
		label = 'Grillattu tofu',
		weight = 100,
		stack = true,
		close = true,
		client = {
			status = { hunger = 300000 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			prop = { model = `bzzz_food_grill_tofu_grill_a`, pos = vec3(0.04, -0.02, -0.03), rot = vec3(15.0, -30.0, 65.0) },
			usetime = 5000, 
			--notification = 'Bon appétit!'
		}
	},
	['bzzz_food_grill_tofu_fresh_a'] = {
		label = 'Tofu',
		weight = 100,
		stack = true,
		close = true,
	},
['bzzz_food_grill_steak_grill_d'] = {
		label = 'Ossobuco',
		weight = 500,
		stack = true,
		close = true,
		client = {
			status = { hunger = 400000 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			prop = { model = `bzzz_food_grill_steak_grill_d`, pos = vec3(0.03, -0.04, -0.02), rot = vec3(30.0, 0.0, -8.0) },
			usetime = 5000, 
			--notification = 'Bon appétit!'
		}
	},
	['bzzz_food_grill_steak_fresh_d'] = {
		label = 'Ossobuco',
		weight = 500,
		stack = true,
		close = true,
	},
['bzzz_food_grill_steak_grill_c'] = {
		label = 'T-Bone Pihvi',
		weight = 400,
		stack = true,
		close = true,
		client = {
			status = { hunger = 500000 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			prop = { model = `bzzz_food_grill_steak_grill_c`, pos = vec3(0.06, -0.04, -0.02), rot = vec3(24.0, 30.0, -62.0) },
			usetime = 5000, 
			--notification = 'Bon appétit!'
		}
	},
	['bzzz_food_grill_steak_fresh_c'] = {
		label = 'T-Bone Pihvi (raaka)',
		weight = 400,
		stack = true,
		close = true,
	},
['bzzz_food_grill_steak_grill_b'] = {
		label = 'Tomahawk pihvi',
		weight = 250,
		stack = true,
		close = true,
		client = {
			status = { hunger = 500000 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			prop = { model = `bzzz_food_grill_steak_grill_b`, pos = vec3(0.03, -0.03, -0.02), rot = vec3(18.0, -35.0, 64.0) },
			usetime = 5000, 
			--notification = 'Bon appétit!'
		}
	},
	['bzzz_food_grill_steak_fresh_b'] = {
		label = 'Tomahawk pihvi (raaka)',
		weight = 250,
		stack = true,
		close = true,
	},
['bzzz_food_grill_steak_grill_a'] = {
		label = 'Grillipihvi',
		weight = 250,
		stack = true,
		close = true,
		client = {
			status = { hunger = 500000 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			prop = { model = `bzzz_food_grill_steak_grill_a`, pos = vec3(0.03, -0.03, -0.02), rot = vec3(18.0, -35.0, 64.0) },
			usetime = 5000, 
			--notification = 'Bon appétit!'
		}
	},
	['bzzz_food_grill_steak_fresh_a'] = {
		label = 'Grillipihvi (raaka)',
		weight = 250,
		stack = true,
		close = true,
	},
['bzzz_food_grill_skewer_grill_a'] = {
		label = 'Lihavarras',
		weight = 200,
		stack = true,
		close = true,
		client = {
			status = { hunger = 300000 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			prop = { model = `bzzz_food_grill_skewer_grill_a`, pos = vec3(0.04, -0.02, -0.03), rot = vec3(15.0, -30.0, 65.0) },
			usetime = 5000, 
			--notification = 'Bon appétit!'
		}
	},
	['bzzz_food_grill_skewer_fresh_a'] = {
		label = 'Lihavarras',
		weight = 200,
		stack = true,
		close = true,
	},
['bzzz_food_grill_sausage_grill_a'] = {
		label = 'Grillimakkara',
		weight = 200,
		stack = true,
		close = true,
		client = {
			status = { hunger = 100000 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			prop = { model = `bzzz_food_grill_sausage_grill_a`, pos = vec3(0.04, -0.02, -0.03), rot = vec3(15.0, -30.0, 65.0) },
			usetime = 5000, 
			--notification = 'Bon appétit!'
		}
	},
	['bzzz_food_grill_sausage_fresh_a'] = {
		label = 'Grillimakkara (raaka)',
		weight = 200,
		stack = true,
		close = true,
	},
['bzzz_food_grill_salmon_grill_a'] = {
		label = 'Grillattua lohta',
		weight = 200,
		stack = true,
		close = true,
		client = {
			status = { hunger = 300000 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			prop = { model = `bzzz_food_grill_salmon_grill_a`, pos = vec3(0.0, -0.02, -0.02), rot = vec3(25.0, -35.0, 64.0) },
			usetime = 5000, 
			--notification = 'Bon appétit!'
		}
	},
	['bzzz_food_grill_salmon_fresh_a'] = {
		label = 'Lohifilee',
		weight = 200,
		stack = true,
		close = true,
	},
['bzzz_food_grill_ribs_grill_b'] = {
		label = 'Grilli ribs',
		weight = 200,
		stack = true,
		close = true,
		client = {
			status = { hunger = 500000 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			prop = { model = `bzzz_food_grill_ribs_grill_b`, pos = vec3(0.01, -0.01, -0.01), rot = vec3(-62.0, 5.0, 174.0) },
			usetime = 5000, 
			--notification = 'Bon appétit!'
		}
	},
	['bzzz_food_grill_ribs_fresh_b'] = {
		label = 'Grilli ribs (raaka)',
		weight = 200,
		stack = true,
		close = true,
	},
['bzzz_food_grill_potato_grill_a'] = {
		label = 'Grillattu peruna',
		weight = 200,
		stack = true,
		close = true,
		client = {
			status = { hunger = 200000 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			prop = { model = `bzzz_food_grill_potato_grill_a`, pos = vec3(-0.03, 0.0, -0.01), rot = vec3(2.0, -15.0, 106.0) },
			usetime = 5000, 
			--notification = 'Bon appétit!'
		}
	},
	['bzzz_food_grill_potato_fresh_a'] = {
		label = 'Peruna',
		weight = 200,
		stack = true,
		close = true,
	},
['bzzz_food_grill_pineapple_grill_a'] = {
		label = 'Grillattu ananas',
		weight = 200,
		stack = true,
		close = true,
		client = {
			status = { hunger = 80000 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			prop = { model = `bzzz_food_grill_pineapple_grill_a`, pos = vec3(-0.03, 0.0, -0.01), rot = vec3(2.0, -15.0, 106.0) },
			usetime = 5000, 
			--notification = 'Bon appétit!'
		}
	},
	['bzzz_food_grill_pineapple_fresh_a'] = {
		label = 'Ananas',
		weight = 200,
		stack = true,
		close = true,
		client = {
			status = { hunger = 40000 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			prop = { model = `bzzz_food_grill_pineapple_grill_a`, pos = vec3(-0.03, 0.0, -0.01), rot = vec3(2.0, -15.0, 106.0) },
			usetime = 5000, 
			--notification = 'Bon appétit!'
		}
	},
['bzzz_food_grill_naan_grill_a'] = {
		label = 'Paistettu naan -leipä',
		weight = 350,
		stack = true,
		close = true,
		client = {
			status = { hunger = 150000 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			prop = { model = `bzzz_food_grill_naan_grill_a`, pos = vec3(0.03, -0.06, -0.04), rot = vec3(32.0, 5.0, 25.0) },
			usetime = 5000, 
			--notification = 'Bon appétit!'
		}
	},
	['bzzz_food_grill_naan_fresh_a'] = {
		label = 'Naan -leipä',
		weight = 350,
		stack = true,
		close = true,
	},
['bzzz_food_grill_mushrooms_grill_a'] = {
		label = 'Grillatut sienet',
		weight = 300,
		stack = true,
		close = true,
		client = {
			status = { hunger = 200000 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			prop = { model = `bzzz_food_grill_mushrooms_grill_a`, pos = vec3(0.04, -0.02, -0.03), rot = vec3(15.0, -30.0, 65.0) },
			usetime = 5000, 
			--notification = 'Bon appétit!'
		}
	},
	['bzzz_food_grill_mushrooms_fresh_a'] = {
		label = 'Grillatut sienet',
		weight = 300,
		stack = true,
		close = true,
	},
['bzzz_food_grill_halloumi_grill_a'] = {
		label = 'Grillattu halloum -juusto',
		weight = 300,
		stack = true,
		close = true,
		client = {
			status = { hunger = 150000 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			prop = { model = `bzzz_food_grill_halloumi_grill_a`, pos = vec3(-0.03, 0.0, 0.0), rot = vec3(22.0, -25.0, 85.0) },
			usetime = 5000, 
			--notification = 'Bon appétit!'
		}
	},
	['bzzz_food_grill_halloumi_fresh_a'] = {
		label = 'Halloum -juusto',
		weight = 300,
		stack = true,
		close = true,
	},
['bzzz_food_grill_fish_grill_a'] = {
		label = 'Grillattu kala',
		weight = 300,
		stack = true,
		close = true,
		client = {
			status = { hunger = 150000 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			prop = { model = `bzzz_food_grill_fish_grill_a`, pos = vec3(0.06, 0.00, -0.04), rot = vec3(-20.0, -16.0, -83.0) },
			usetime = 5000, 
			--notification = 'Bon appétit!'
		}
	},
	['bzzz_food_grill_fish_fresh_a'] = {
		label = 'Grillattu kala',
		weight = 300,
		stack = true,
		close = true,
	},
['bzzz_food_grill_corn_grill_a'] = {
		label = 'Grillattu maissi',
		weight = 300,
		stack = true,
		close = true,
		client = {
			status = { hunger = 80000 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			prop = { model = `bzzz_food_grill_corn_grill_a`, pos = vec3(0.04, -0.02, -0.03), rot = vec3(15.0, -30.0, 65.0) },
			usetime = 5000, 
			--notification = 'Bon appétit!'
		}
	},	
	['bzzz_food_grill_corn_fresh_a'] = {
		label = 'Maissi',
		weight = 300,
		stack = true,
		close = true,
		client = {
			status = { hunger = 50000 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			prop = { model = `bzzz_food_grill_corn_grill_a`, pos = vec3(0.04, -0.02, -0.03), rot = vec3(15.0, -30.0, 65.0) },
			usetime = 5000, 
			--notification = 'Bon appétit!'
		}
	},	
['bzzz_food_grill_chicken_grill_d'] = {
		label = 'Grillattu kanapihvi',
		weight = 300,
		stack = true,
		close = true,
		client = {
			status = { hunger = 330000 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			prop = { model = `bzzz_food_grill_chicken_grill_d`, pos = vec3(-0.01, 0.0, 0.0), rot = vec3(-20.0, -16.0, -83.0) },
			usetime = 5000, 
			--notification = 'Bon appétit!'
		}
	},
	['bzzz_food_grill_chicken_fresh_d'] = {
		label = 'Kanapihvi (raaka)',
		weight = 300,
		stack = true,
		close = true,
	},
['bzzz_food_grill_chicken_grill_c'] = {
		label = 'Kanan wings',
		weight = 300,
		stack = true,
		close = true,
		client = {
			status = { hunger = 300000 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			prop = { model = `bzzz_food_grill_chicken_grill_c`, pos = vec3(-0.01, 0.0, 0.0), rot = vec3(-20.0, -16.0, -83.0) },
			usetime = 5000, 
			--notification = 'Bon appétit!'
		}
	},
	['bzzz_food_grill_chicken_fresh_c'] = {
		label = 'Kanan wings (raaka)',
		weight = 300,
		stack = true,
		close = true,
	},
['bzzz_food_grill_chicken_grill_b'] = {
		label = 'Grillattu kananreisi',
		weight = 300,
		stack = true,
		close = true,
		client = {
			status = { hunger = 400000 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			prop = { model = `bzzz_food_grill_chicken_grill_b`, pos = vec3(-0.01, 0.0, 0.0), rot = vec3(-20.0, -16.0, -83.0) },
			usetime = 5000, 
			--notification = 'Bon appétit!'
		}
	},
	['bzzz_food_grill_chicken_fresh_b'] = {
		label = 'Kananreisi (raaka)',
		weight = 300,
		stack = true,
		close = true,
	},
['bzzz_food_grill_camembert_grill_a'] = {
		label = 'Grillattua camembert:a',
		weight = 300,
		stack = true,
		close = true,
		client = {
			status = { hunger = 200000 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			prop = { model = `bzzz_food_grill_camembert_grill_a`, pos = vec3(-0.01, 0.0, 0.0), rot = vec3(-20.0, -16.0, -83.0) },
			usetime = 5000, 
			--notification = 'Bon appétit!'
		}
	},
	['bzzz_food_grill_camembert_fresh_a'] = {
		label = 'Camembert:a',
		weight = 300,
		stack = true,
		close = true,

	},
['bzzz_food_grill_burger_grill_d'] = {
		label = 'Grillattu burgeri',
		weight = 600,
		stack = true,
		close = true,
		client = {
			status = { hunger = 250000 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			prop = { model = `bzzz_food_grill_burger_grill_d`, pos = vec3(0.0, -0.02, -0.03), rot = vec3(0.0, 0.0, -50.0) },
			usetime = 5000, 
			--notification = 'Bon appétit!'
		}
	},
	['bzzz_food_grill_burger_fresh_d'] = {
		label = 'Burger',
		weight = 600,
		stack = true,
		close = true,
	},
['bzzz_food_grill_baguette_grill_c'] = {
		label = 'Grillattu kanapatonki',
		weight = 600,
		stack = true,
		close = true,
		client = {
			status = { hunger = 600000 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			prop = { model = `bzzz_food_grill_baguette_grill_c`, pos = vec3(0.07, 0.01, -0.02), rot = vec3(0.15, 0.0, -60.0) },
			usetime = 5000, 
			--notification = 'Bon appétit!'
		}
	},
	['bzzz_food_grill_baguette_fresh_c'] = {
		label = 'Kanapatonki (raaka)',
		weight = 600,
		stack = true,
		close = true,

	},
['bzzz_food_grill_bacon_grill_a'] = {
		label = 'Grillattu pekoni',
		weight = 50,
		stack = true,
		close = true,
		client = {
			status = { hunger = 100000 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			prop = { model = `bzzz_food_grill_bacon_grill_a`, pos = vec3(0.02, -0.01, -0.01), rot = vec3(0.0, 0.0, 80.0) },
			usetime = 5000, 
			--notification = 'Bon appétit!'
		}
	},
	['bzzz_food_grill_bacon_fresh_a'] = {
		label = 'Pekoni',
		weight = 50,
		stack = true,
		close = true,
	},

	--bzzz juomat--

		
['bzzz_drink_beer_a'] = {
	label = 'Kermakalja',
	weight = 350,
	stack = true,
		close = true,
	client = {
		status = { thirst = 200000 },
		anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
		prop = { model = `bzzz_drink_beer_a`, pos = vec3(0.03, 0.02, -0.01), rot = vec3(5.0, -4.0, 28.0) },
		usetime = 5000,
		--notification = 'Cheers!'
		},
	},
['bzzz_drink_beer_b'] = {
	label = 'Big Beer',
	weight = 350,
	stack = true,
		close = true,
	client = {
		status = { thirst = 200000 },
		anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
		prop = { model = `bzzz_drink_beer_b`, pos = vec3(0.02, 0.01, -0.07), rot = vec3(5.0, -4.0, 28.0) },
		usetime = 5000,
		notification = 'Cheers!'
	}
},
['bzzz_drink_beer_c'] = {
	label = 'Small Beer',
	weight = 350,
	stack = true,
		close = true,
	client = {
		status = { thirst = 200000 },
		anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
		prop = { model = `bzzz_drink_beer_c`, pos = vec3(0.04, 0.02, -0.02), rot = vec3(5.0, -4.0, 28.0) },
		usetime = 5000,
		notification = 'Cheers!'
	}
},	
['bzzz_drink_beer_d'] = {
	label = 'Pint of beer',
	weight = 350,
	stack = true,
		close = true,
	client = {
		status = { thirst = 200000 },
		anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
		prop = { model = `bzzz_drink_beer_d`, pos = vec3(0.04, 0.02, -0.02), rot = vec3(5.0, -4.0, 28.0) },
		usetime = 5000,
		notification = 'Cheers!'
	}
},	
['bzzz_drink_bahamamama_a'] = {
	label = 'Aurinkodrinkki',
	weight = 350,
	stack = true,
		close = true,
	client = {
		status = { thirst = 200000 },
		anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
		prop = { model = `bzzz_drink_bahamamama_a`, pos = vec3(0.02, 0.02, -0.03), rot = vec3(5.0, -1.0, -27.0) },
		usetime = 5000,
		--notification = 'Cheers!'
	}
},	
['bzzz_drink_bluelagoon_a'] = {
	label = 'Velhon uni',
	weight = 350,
	stack = true,
		close = true,
	client = {
		status = { thirst = 200000 },
		anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
		prop = { model = `bzzz_drink_bluelagoon_a`, pos = vec3(0.02, 0.02, -0.03), rot = vec3(5.0, -1.0, -27.0) },
		usetime = 5000,
		notification = 'Cheers!'
	}
},	
['bzzz_drink_longislandicedtea_a'] = {
	label = 'Noidan auringonnousu',
	weight = 350,
	stack = true,
		close = true,
	client = {
		status = { thirst = 200000 },
		anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
		prop = { model = `bzzz_drink_longislandicedtea_a`, pos = vec3(0.02, 0.02, -0.03), rot = vec3(5.0, -1.0, -27.0) },
		usetime = 5000,
		notification = 'Cheers!'
	}
},	
['bzzz_drink_sexonthebeach_a'] = {
	label = 'Sex on the Beach',
	weight = 350,
	client = {
		status = { thirst = 200000 },
		anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
		prop = { model = `bzzz_drink_longislandicedtea_a`, pos = vec3(0.02, 0.02, -0.03), rot = vec3(5.0, -1.0, -27.0) },
		usetime = 5000,
		notification = 'Cheers!'
	}
},	
['bzzz_drink_blackrussian_a'] = {
	label = 'Pimeydenruhtinas',
	weight = 350,
	stack = true,
		close = true,
	client = {
		status = { thirst = 200000 },
		anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
		prop = { model = `bzzz_drink_blackrussian_a`, pos = vec3(0.03, 0.02, 0.04), rot = vec3(5.0, -1.0, -27.0) },
		usetime = 5000,
		--notification = 'Cheers!'
	}
},	
['bzzz_drink_maitai_a'] = {
	label = 'Lemon Leya',
	weight = 350,
	stack = true,
		close = true,
	client = {
		status = { thirst = 200000 },
		anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
		prop = { model = `bzzz_drink_maitai_a`, pos = vec3(0.03, 0.02, 0.04), rot = vec3(5.0, -1.0, -27.0) },
		usetime = 5000,
		--notification = 'Cheers!'
	}
},	
['bzzz_drink_negroni_a'] = {
	label = 'Negroni',
	weight = 350,
	stack = true,
		close = true,
	client = {
		status = { thirst = 200000 },
		anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
		prop = { model = `bzzz_drink_negroni_a`, pos = vec3(0.03, 0.02, 0.04), rot = vec3(5.0, -1.0, -27.0) },
		usetime = 5000,
		notification = 'Cheers!'
	}
},	
['bzzz_drink_oldfashioned_a'] = {
	label = 'Old Fashioned',
	weight = 350,
	client = {
		status = { thirst = 200000 },
		anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
		prop = { model = `bzzz_drink_oldfashioned_a`, pos = vec3(0.03, 0.02, 0.04), rot = vec3(5.0, -1.0, -27.0) },
		usetime = 5000,
		notification = 'Cheers!'
	}
},	
['bzzz_drink_whiskeysour_a'] = {
	label = 'Konjakkipaukku',
	weight = 350,
	stack = true,
		close = true,
	client = {
		status = { thirst = 200000 },
		anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
		prop = { model = `bzzz_drink_whiskeysour_a`, pos = vec3(0.03, 0.02, 0.04), rot = vec3(5.0, -1.0, -27.0) },
		usetime = 5000,
		--notification = 'Cheers!'
	}
},	
['bzzz_drink_whiterussian_a'] = {
	label = 'Valonlapsi',
	weight = 350,
	stack = true,
		close = true,
	client = {
		status = { thirst = 200000 },
		anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
		prop = { model = `bzzz_drink_whiterussian_a`, pos = vec3(0.03, 0.02, 0.04), rot = vec3(5.0, -1.0, -27.0) },
		usetime = 5000,
		--notification = 'Cheers!'
	}
},	
['bzzz_drink_bloodymary_a'] = {
	label = 'Marian aamunnousu',
	weight = 350,
	stack = true,
		close = true,
	client = {
		status = { thirst = 200000 },
		anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
		prop = { model = `bzzz_drink_bloodymary_a`, pos = vec3(0.02, 0.02, -0.05), rot = vec3(5.0, -1.0, -27.0) },
		usetime = 5000,
		--notification = 'Cheers!'
	}
},	
['bzzz_drink_gintonic_a'] = {
	label = 'Sitruunalimonadi',
	weight = 350,
	stack = true,
		close = true,
	client = {
		status = { thirst = 200000 },
		anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
		prop = { model = `bzzz_drink_gintonic_a`, pos = vec3(0.02, 0.02, -0.05), rot = vec3(5.0, -1.0, -27.0) },
		usetime = 5000,
		--notification = 'Cheers!'
	}
},	
['bzzz_drink_rumcoke_a'] = {
	label = 'Colalimonadi',
	weight = 350,
	stack = true,
		close = true,
	client = {
		status = { thirst = 200000 },
		anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
		prop = { model = `bzzz_drink_rumcoke_a`, pos = vec3(0.02, 0.02, -0.05), rot = vec3(5.0, -1.0, -27.0) },
		usetime = 5000,
		--notification = 'Cheers!'
	}
},	
['bzzz_drink_screwdriver_a'] = {
	label = 'Ananaslimonadi',
	weight = 350,
	stack = true,
		close = true,
	client = {
		status = { thirst = 200000 },
		anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
		prop = { model = `bzzz_drink_screwdriver_a`, pos = vec3(0.02, 0.02, -0.05), rot = vec3(5.0, -1.0, -27.0) },
		usetime = 5000,
		--notification = 'Cheers!'
	}
},	
['bzzz_drink_tomcollins_a'] = {
	label = 'Piimädrinkki',
	weight = 350,
	stack = true,
		close = true,
	client = {
		status = { thirst = 200000 },
		anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
		prop = { model = `bzzz_drink_tomcollins_a`, pos = vec3(0.02, 0.02, -0.05), rot = vec3(5.0, -1.0, -27.0) },
		usetime = 5000,
		--notification = 'Cheers!'
	}
},	
['bzzz_drink_cosmopolitan_a'] = {
	label = 'Mansikkadrinkki',
	weight = 350,
	stack = true,
		close = true,
	client = {
		status = { thirst = 200000 },
		anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
		prop = { model = `bzzz_drink_cosmopolitan_a`, pos = vec3(0.04, 0.01, 0.0), rot = vec3(12.0, -8.0, -48.0) },
		usetime = 5000,
		--notification = 'Cheers!'
	}
},	
['bzzz_drink_gimlet_a'] = {
	label = 'Sitruunadrinkki',
	weight = 350,
	stack = true,
		close = true,
	client = {
		status = { thirst = 200000 },
		anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
		prop = { model = `bzzz_drink_gimlet_a`, pos = vec3(0.04, 0.01, 0.0), rot = vec3(12.0, -8.0, -48.0) },
		usetime = 5000,
		--notification = 'Cheers!'
	}
},	
['bzzz_drink_margarita_a'] = {
	label = 'Margarita',
	weight = 350,
	client = {
		status = { thirst = 200000 },
		anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
		prop = { model = `bzzz_drink_margarita_a`, pos = vec3(0.04, 0.01, 0.0), rot = vec3(12.0, -8.0, -48.0) },
		usetime = 5000,
		notification = 'Cheers!'
	}
},	
['bzzz_drink_martini_a'] = {
	label = 'Oliividrinkki',
	weight = 350,
	stack = true,
		close = true,
	client = {
		status = { thirst = 200000 },
		anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
		prop = { model = `bzzz_drink_martini_a`, pos = vec3(0.04, 0.01, 0.0), rot = vec3(12.0, -8.0, -48.0) },
		usetime = 5000,
		--notification = 'Cheers!'
	}
},	
['bzzz_drink_manhattan_a'] = {
	label = 'Appelsiinidrinkki',
	weight = 350,
	stack = true,
		close = true,
	client = {
		status = { thirst = 200000 },
		anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
		prop = { model = `bzzz_drink_manhattan_a`, pos = vec3(0.04, 0.01, 0.0), rot = vec3(12.0, -8.0, -48.0) },
		usetime = 5000,
		--notification = 'Cheers!'
	}
},	
['bzzz_drink_shot_b52_b'] = {
	label = 'Liekehtivä pikari',
	weight = 350,
	stack = true,
		close = true,
	client = {
		status = { thirst = 20000 },
		anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
		prop = { model = `bzzz_drink_shot_b52_a`, pos = vec3(0.0, 0.01, 0.07), rot = vec3(12.0, -8.0, 18.0) },
		usetime = 3000,
		--notification = 'Cheers!'
	}
},
['bzzz_drink_shot_bluekamikaze_a'] = {
	label = 'Velhon loitsu',
	weight = 350,
	stack = true,
		close = true,
	client = {
		status = { thirst = 20000 },
		anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
		prop = { model = `bzzz_drink_shot_bluekamikaze_a`, pos = vec3(0.0, 0.01, 0.07), rot = vec3(12.0, -8.0, 18.0) },
		usetime = 3000,
		--notification = 'Cheers!'
	}
},	
['bzzz_drink_shot_kamikaze_a'] = {
	label = 'Shot of Kamikaze',
	weight = 350,
	client = {
		status = { thirst = 200000 },
		anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
		prop = { model = `bzzz_drink_shot_kamikaze_a`, pos = vec3(0.0, 0.01, 0.07), rot = vec3(12.0, -8.0, 18.0) },
		usetime = 3000,
		notification = 'Cheers!'
	}
},	
['bzzz_drink_shot_lemondrop_a'] = {
	label = 'Shot of Lemon Drop',
	weight = 350,
	client = {
		status = { thirst = 200000 },
		anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
		prop = { model = `bzzz_drink_shot_lemondrop_a`, pos = vec3(0.0, 0.01, 0.07), rot = vec3(12.0, -8.0, 18.0) },
		usetime = 3000,
		notification = 'Cheers!'
	}
},	
['bzzz_drink_shot_rum_a'] = {
	label = 'Rommishotti',
	weight = 350,
	stack = true,
		close = true,
	client = {
		status = { thirst = 20000 },
		anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
		prop = { model = `bzzz_drink_shot_rum_a`, pos = vec3(0.0, 0.01, 0.07), rot = vec3(12.0, -8.0, 18.0) },
		usetime = 3000,
		--notification = 'Cheers!'
	}
},	
['bzzz_drink_shot_vodka_a'] = {
	label = 'Shot of Vodka',
	weight = 350,
	client = {
		status = { thirst = 200000 },
		anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
		prop = { model = `bzzz_drink_shot_vodka_a`, pos = vec3(0.0, 0.01, 0.07), rot = vec3(12.0, -8.0, 18.0) },
		usetime = 3000,
		notification = 'Cheers!'
	}
},	
['bzzz_drink_shot_washinapple_a'] = {
	label = 'Shot of Washington Apple',
	weight = 350,
	client = {
		status = { thirst = 200000 },
		anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
		prop = { model = `bzzz_drink_shot_washinapple_a`, pos = vec3(0.0, 0.01, 0.07), rot = vec3(12.0, -8.0, 18.0) },
		usetime = 3000,
		notification = 'Cheers!'
	}
},	
['bzzz_drink_moscowmule_a'] = {
	label = 'Sitruunakermakaljamix',
	weight = 350,
	stack = true,
		close = true,
	client = {
		status = { thirst = 200000 },
		anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
		prop = { model = `bzzz_drink_moscowmule_a`, pos = vec3(0.03, 0.03, 0.02), rot = vec3(12.0, -8.0, 18.0) },
		usetime = 5000,
		--notification = 'Cheers!'
	}
},	
['bzzz_drink_coconut_a'] = {
	label = 'Coconut',
	weight = 350,
	client = {
		status = { thirst = 200000 },
		anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
		prop = { model = `bzzz_drink_coconut_a`, pos = vec3(0.07, 0.05, 0.04), rot = vec3(28.0, -50.0, 14.0) },
		usetime = 5000,
		notification = 'Cheers!'
	}
},
	

	["worms"] = {
		label = "Worms",
		weight = 10,
		stack = true,
		close = true,
	},

	["anchovy"] = {
		label = "Anchovy",
		weight = 20,
		stack = true,
		close = true,
	},

	["artificial_bait"] = {
		label = "Artificial bait",
		weight = 30,
		stack = true,
		close = true,
	},

	["piranha"] = {
		label = "Piranha",
		weight = 1500,
		stack = true,
		close = true,
		durability = 0.1,
	},

	["basic_rod"] = {
		label = "Fishing rod",
		weight = 250,
		stack = true,
		close = true,
		durability = 0.1,
	},

	["red_snapper"] = {
		label = "Red Snapper",
		weight = 2500,
		stack = true,
		close = true,
	},

	["graphite_rod"] = {
		label = "Graphite rod",
		weight = 350,
		stack = true,
		close = true,
	},

	["grouper"] = {
		label = "Grouper",
		weight = 3500,
		stack = true,
		close = true,
	},

	["haddock"] = {
		label = "Haddock",
		weight = 500,
		stack = true,
		close = true,
	},

	["titanium_rod"] = {
		label = "Titanium rod",
		weight = 450,
		stack = true,
		close = true,
	},

	["mahi_mahi"] = {
		label = "Mahi Mahi",
		weight = 3500,
		stack = true,
		close = true,
	},

	["trout"] = {
		label = "Trout",
		weight = 750,
		stack = true,
		close = true,
	},

	["tuna"] = {
		label = "Tuna",
		weight = 10000,
		stack = true,
		close = true,
	},

	["shark"] = {
		label = "Shark",
		weight = 7500,
		stack = true,
		close = true,
	},

	["salmon"] = {
		label = "Salmon",
		weight = 1000,
		stack = true,
		close = true,
	},

	["aarrekartta"] = {
		label = "Aarrekartta",
		weight = 100,
		stack = true,
		close = true,
	},

	---bzzz sienet---
	["bzzz_mushrooms_amanita_a"] = {
		label = "Myrkkysieni",
		weight = 100,
		stack = true,
		close = true,
	},
	["bzzz_mushrooms_boletus_a"] = {
		label = "Boletus",
		weight = 100,
		stack = true,
		close = true,
	},
	["bzzz_mushrooms_light_a"] = {
		label = "Lesufors",
		weight = 100,
		stack = true,
		close = true,
	},
	["bzzz_mushrooms_light_b"] = {
		label = "Akaran",
		weight = 100,
		stack = true,
		close = true,
	},
	["bzzz_mushrooms_light_c"] = {
		label = "Dakeno",
		weight = 100,
		stack = true,
		close = true,
	},
	["bzzz_mushrooms_morchella_a"] = {
		label = "Morchella",
		weight = 100,
		stack = true,
		close = true,
	},
	["bzzz_mushrooms_oyster_a"] = {
		label = "Sinirave",
		weight = 100,
		stack = true,
		close = true,
	},
	["bzzz_mushrooms_oyster_b"] = {
		label = "Keltarave",
		weight = 100,
		stack = true,
		close = true,
	},
	["bzzz_mushrooms_oyster_c"] = {
		label = "Punarave",
		weight = 100,
		stack = true,
		close = true,
	},
	["bzzz_mushrooms_parasol"] = {
		label = "Parasol",
		weight = 100,
		stack = true,
		close = true,
	},
	["bzzz_mushrooms_trumpet_a"] = {
		label = "Trumpet",
		weight = 100,
		stack = true,
		close = true,
	},
	["sukka"] = {
		label = "Vanha sukka",
		weight = 100,
		stack = true,
		close = true,
	},
	["tulisiemenet"] = {
		label = "Tulisiemenet",
		weight = 100,
		stack = true,
		close = true,
	},
	["lyhty"] = {
		label = "Vanha lyhty",
		weight = 300,
		stack = true,
		close = true,
	},
	["tiimalasi"] = {
		label = "Tiimalasi",
		weight = 50,
		stack = true,
		close = true,
	},
	["muistipallo"] = {
		label = "Muistipallo",
		weight = 200,
		stack = true,
		close = true,
	},
	["kirjoituskone"] = {
		label = "Kirjoituskone",
		weight = 700,
		stack = true,
		close = true,
	},
	["rakeet"] = {
		label = "Joka maun rakeet",
		weight = 300,
		stack = true,
		close = true,
	},
	["avain"] = {
		label = "Siivekäs avain",
		weight = 100,
		stack = true,
		close = true,
	},

	--eläin jutut

	["ba_prop_battle_headphones_dj"] = {
		label = "DJ Headphones",
		weight = 1,
		stack = true,
		close = true,
	},

	["ch_prop_drills_hat01x"] = {
		label = "Drills Hat",
		weight = 1,
		stack = true,
		close = true,
	},

	["ch_prop_drills_hat02x"] = {
		label = "Drills Hat",
		weight = 1,
		stack = true,
		close = true,
	},

	["ch_p_ch_jimmy_necklace_2_s"] = {
		label = "Jimmy Necklace",
		weight = 1,
		stack = true,
		close = true,
	},

	["ch_p_m_bag_var01_arm_s"] = {
		label = "Bag Variant",
		weight = 2,
		stack = true,
		close = true,
	},

	["ch_p_m_bag_var03_arm_s"] = {
		label = "Bag Variant",
		weight = 2,
		stack = true,
		close = true,
	},

	["ch_p_m_bag_var04_arm_s"] = {
		label = "Bag Variant",
		weight = 2,
		stack = true,
		close = true,
	},

	["ch_p_m_bag_var06_arm_s"] = {
		label = "Bag Variant",
		weight = 2,
		stack = true,
		close = true,
	},

	["ch_p_m_bag_var07_arm_s"] = {
		label = "Bag Variant",
		weight = 2,
		stack = true,
		close = true,
	},

	["ch_p_m_bag_var08_arm_s"] = {
		label = "Bag Variant",
		weight = 2,
		stack = true,
		close = true,
	},

	["ch_p_m_bag_var09_arm_s"] = {
		label = "Bag Variant",
		weight = 2,
		stack = true,
		close = true,
	},

	["ch_p_m_bag_var10_arm_s"] = {
		label = "Bag Variant",
		weight = 2,
		stack = true,
		close = true,
	},

	["collar_black"] = {
		label = "Black Collar",
		weight = 1,
		stack = true,
		close = true,
	},

	["collar_blue"] = {
		label = "Blue Collar",
		weight = 1,
		stack = true,
		close = true,
	},

	["collar_brown"] = {
		label = "Brown Collar",
		weight = 1,
		stack = true,
		close = true,
	},

	["collar_green"] = {
		label = "Green Collar",
		weight = 1,
		stack = true,
		close = true,
	},

	["collar_orange"] = {
		label = "Orange Collar",
		weight = 1,
		stack = true,
		close = true,
	},

	["collar_pink"] = {
		label = "Pink Collar",
		weight = 1,
		stack = true,
		close = true,
	},

	["collar_red"] = {
		label = "Red Collar",
		weight = 1,
		stack = true,
		close = true,
	},

	["collar_white"] = {
		label = "White Collar",
		weight = 1,
		stack = true,
		close = true,
	},

	["prop_cap_01"] = {
		label = "Cap",
		weight = 1,
		stack = true,
		close = true,
	},

	["prop_cs_panties_03"] = {
		label = "Panties",
		weight = 1,
		stack = true,
		close = true,
	},

	["prop_cs_sol_glasses"] = {
		label = "Sol Glasses",
		weight = 1,
		stack = true,
		close = true,
	},

	["prop_ear_defenders_01"] = {
		label = "Ear Defenders",
		weight = 1,
		stack = true,
		close = true,
	},

	["prop_hard_hat_01"] = {
		label = "Hard Hat",
		weight = 1,
		stack = true,
		close = true,
	},

	["prop_ld_hat_01"] = {
		label = "LD Hat",
		weight = 1,
		stack = true,
		close = true,
	},

	["prop_luggage_04a"] = {
		label = "Luggage",
		weight = 3,
		stack = true,
		close = true,
	},

	["prop_michael_backpack"] = {
		label = "Michael's Backpack",
		weight = 2,
		stack = true,
		close = true,
	},

	["prop_parapack_01"] = {
		label = "Parapack",
		weight = 2,
		stack = true,
		close = true,
	},

	["prop_player_gasmask"] = {
		label = "Gas Mask",
		weight = 1,
		stack = true,
		close = true,
	},

	["prop_proxy_hat_01"] = {
		label = "Proxy Hat",
		weight = 1,
		stack = true,
		close = true,
	},

	["prop_safety_glasses"] = {
		label = "Safety Glasses",
		weight = 1,
		stack = true,
		close = true,
	},

	["prop_stat_pack_01"] = {
		label = "Stat Pack",
		weight = 2,
		stack = true,
		close = true,
	},

	["p_cs_beverly_lanyard_s"] = {
		label = "Beverly Lanyard",
		weight = 1,
		stack = true,
		close = true,
	},

	["p_cs_tracy_neck2_s"] = {
		label = "Tracy Necklace",
		weight = 1,
		stack = true,
		close = true,
	},

	["p_jewel_necklace01_s"] = {
		label = "Jewel Necklace",
		weight = 1,
		stack = true,
		close = true,
	},

	["p_jewel_necklace_02"] = {
		label = "Jewel Necklace",
		weight = 1,
		stack = true,
		close = true,
	},

	["p_jimmy_necklace_s"] = {
		label = "Jimmy Necklace",
		weight = 1,
		stack = true,
		close = true,
	},

	["p_lamarneck_01_s"] = {
		label = "Lamar Necklace",
		weight = 1,
		stack = true,
		close = true,
	},

	["p_ld_heist_bag_01"] = {
		label = "Heist Bag",
		weight = 3,
		stack = true,
		close = true,
	},

	["p_omega_neck_01_s"] = {
		label = "Omega Necklace",
		weight = 1,
		stack = true,
		close = true,
	},

	["p_omega_neck_02_s"] = {
		label = "Omega Necklace",
		weight = 1,
		stack = true,
		close = true,
	},

	["p_oscar_necklace_s"] = {
		label = "Oscar Necklace",
		weight = 1,
		stack = true,
		close = true,
	},

	["p_single_rose_s"] = {
		label = "Single Rose",
		weight = 1,
		stack = true,
		close = true,
	},

	["p_stretch_necklace_s"] = {
		label = "Stretch Necklace",
		weight = 1,
		stack = true,
		close = true,
	},

	["p_wade_necklace_s"] = {
		label = "Wade Necklace",
		weight = 1,
		stack = true,
		close = true,
	},

	["reh_prop_reh_hat_cowboy_01a"] = {
		label = "Cowboy Hat",
		weight = 1,
		stack = true,
		close = true,
	},

	["reh_prop_reh_rebreather_01a"] = {
		label = "Rebreather",
		weight = 1,
		stack = true,
		close = true,
	},

	["sf_prop_art_cap_01a"] = {
		label = "Art Cap",
		weight = 1,
		stack = true,
		close = true,
	},

	["sf_prop_sf_helmet_01a"] = {
		label = "SF Helmet",
		weight = 1,
		stack = true,
		close = true,
	},

	["sf_prop_sf_necklace_01a"] = {
		label = "SF Necklace",
		weight = 1,
		stack = true,
		close = true,
	},

	["doghouse_1"] = {
		label = "Eläimen koti",
		weight = 1500,
		stack = false,
		close = true,
	},

	["tr_prop_tr_dd_necklace_01a"] = {
		label = "DD Necklace",
		weight = 1,
		stack = true,
		close = true,
	},

	["v_26_cophelmet2"] = {
		label = "Cop Helmet",
		weight = 1,
		stack = true,
		close = true,
	},

	["v_ret_gc_ear01"] = {
		label = "GC Ear",
		weight = 1,
		stack = true,
		close = true,
	},

	["h4_prop_h4_necklace_01a"] = {
		label = "H4 Necklace",
		weight = 1,
		stack = true,
		close = true,
	},

	["h4_prop_h4_pouch_01a"] = {
		label = "H4 Pouch",
		weight = 1,
		stack = true,
		close = true,
	},

	["xm3_int1_mask_new"] = {
		label = "New Mask",
		weight = 1,
		stack = true,
		close = true,
	},

	["m23_2_prop_m32_hat_captain_01a"] = {
		label = "Captain's Hat",
		weight = 1,
		stack = true,
		close = true,
	},

	["m23_2_prop_m32_peterscap_01a"] = {
		label = "Peter's Cap",
		weight = 1,
		stack = true,
		close = true,
	},

	["xm3_prop_xm3_hat_ron_01a"] = {
		label = "Ron's Hat",
		weight = 1,
		stack = true,
		close = true,
	},

	["xm3_prop_xm3_helmet_01a"] = {
		label = "Xm3 Helmet",
		weight = 1,
		stack = true,
		close = true,
	},

	["xm_prop_x17_bag_med_01a"] = {
		label = "Medium Bag",
		weight = 2,
		stack = true,
		close = true,
	},

	["xm_prop_x17_b_glasses_01"] = {
		label = "X17 Glasses",
		weight = 1,
		stack = true,
		close = true,
	},

	["pet_food"] = {
		label = "Eläimen ruoka",
		weight = 1,
		stack = true,
		close = true,
	},

	["pet_leash"] = {
		label = "Talutushihna",
		weight = 1,
		stack = true,
		close = true,
	},

	["xm3_prop_xm3_glasses_ron_01a"] = {
		label = "Ron's Glasses",
		weight = 1,
		stack = true,
		close = true,
	},

	["prop_beach_bag_01b"] = {
		label = "Beach Bag",
		weight = 2,
		stack = true,
		close = true,
	},

	["xm3_prop_xm3_backpack_01a"] = {
		label = "Xm3 Backpack",
		weight = 2,
		stack = true,
		close = true,
	},

	['empty_polyjuice'] = {
		label = 'Monijuomaliemi',
		description = 'Tässä liemessä ei ole kenenkään hiusta',
		weight = 100,
		stack = false,
		close = true,
		consume = 0,
		client = {
			event = 'polyjuice:captureWithEmpty',
			args = true, -- send item info including slot
		}
	},

	['polyjuice_potion'] = {
		label = 'Monijuomaliemi',
		weight = 200,
		stack = false,
		close = true,
		consume = 0,
		client = {
			event = 'polyjuice:usePotion',
			args = true,
		}
	},

	["pimeanpiirto"] = {
		label = "Pimeänpiirto",
		description = "HUOM! Kyseistä tavaraa käyttävät VAIN pahaksi velhoksi/noidaksi itsensä luokittelevat. Kun käytät tavaran, se luo taivaalle pimeänpiirron, joka merkitsee sitä, että sinulla, tai ryhmälläsi on pahat aikeet mielessä! Ethän väärinkäytä kyseistä tavaraa!",
		--weight = 400,
		stack = true,
		close = true,
	},

	["pusep_no"] = {
		label = "Kaikkoontuminen",
		description = "",
		--weight = 400,
		stack = true,
		close = true,
	},

	["notepad"] = {
		label = "Muistikirja",
		weight = 160,
		stack = false,
		close = true,
		consume = 0,
		description = "Joskus on ihan hyvä muistaa asioita :)",
		server = {
			export = 'randol_notes.notepad',
		},
	},
	
	["tornnote"] = {
		label = "Repäisty sivu",
		weight = 10,
		stack = false,
		close = false,
	},

	--uusia itemeitä--

	['skiving_snackbox'] = {
	label = 'Lintsauspakkis',
	description = 'Makeisia, jotka aiheuttavat tekosairauksia.',
	weight = 60,
	stack = true,
},

['puking_pastille'] = {
	label = 'Oksennuspastilli',
	--description = 'Teko-oksennus karkki',
	weight = 10,
	stack = true,
},

['extendable_ear'] = {
	label = 'Jatkokorva',
	description = '',
	weight = 50,
	stack = true,
},

['bezoar_stone'] = {
	label = 'Bezoarikivi',
	description = '',
	weight = 50,
	stack = true,
},

['quill_auto_ink'] = {
	label = 'Sulkakynä',
	description = 'Loitsittu kirjoittamaan itsekseen',
	weight = 50,
	stack = false,
},
['firewhisky'] = {
	label = 'Tuliviski',
	description = 'Ei nautittavaksi!',
	weight = 200,
	stack = true,
},
['necklace_time_turner'] = {
	label = 'Ajankääntäjä',
	description = '',
	weight = 100,
	stack = false,
},

['cloak_invisibility'] = {
	label = 'Näkymättömyysviitta',
	description = '',
	weight = 0,
	stack = false,
},

['sneakoscope'] = {
	label = 'Hiipparoitiotutka',
	description = '',
	weight = 150,
	stack = false,
},

['invisible_ink'] = {
	label = 'Näkymätön muste',
	description = '',
	weight = 10,
	stack = true,
},

['sneezing_powder'] = {
    label = 'Aivastuspulveri',
    description = 'Saa kohteen aivastelemaan hallitsemattomasti.',
    weight = 10,
    stack = true,
	close = true,
	usable = true,
},

--uusia--

['marauders_map'] = {
    label = 'Kelmien kartta',
    description = '',
    weight = 150,
    stack = false,
    close = true,
},

['horcrux'] = {
    label = 'Hirnyrkki',
    description = 'Sisältää osan sielusta... vaarallinen esine väärissä käsissä',
    weight = 200,
    stack = false,
    close = true,
},

['horcrux_diadem'] = {
    label = 'Korpinkynnen diadeemi',
    description = 'Yksi Voldemortin hirnyrkeistä. Kätkee suuren voiman.',
    weight = 300,
    stack = false,
    close = true,
},

['horcrux_ring'] = {
    label = 'Korpin sormus',
    description = 'Marvolo Gauntin perintösormus – kirottu hirnyrkki.',
    weight = 100,
    stack = false,
    close = true,
},

['horcrux_locket'] = {
    label = 'Salazarin riipus',
    description = 'Luihuisen riipus, muuttunut hirnyrkiksi.',
    weight = 200,
    stack = false,
    close = true,
},

['horcrux_cup'] = {
    label = 'Helga Hufflepuffin kuppi',
    description = 'Hufflepuffin taikakuppi, kätkee pimeää voimaa.',
    weight = 150,
    stack = false,
    close = true,
},

['horcrux_diary'] = {
    label = 'Tom Riddlen päiväkirja',
    description = 'Kirja, jonka sisällä piilee pimeää taikuutta.',
    weight = 300,
    stack = false,
    close = true,
},

--sivut joista löytyy infoa salaistenkirjojen osastolle--

['sivu1'] = {
    label = 'Erikoinen sivu',
    description = 'J',
    weight = 10,
    stack = false,
    close = true,
},
['sivu2'] = {
    label = 'Erikoinen sivu',
    description = 'J',
    weight = 10,
    stack = false,
    close = true,
},
['sivu3'] = {
    label = 'Erikoinen sivu',
    description = 'F',
    weight = 10,
    stack = false,
    close = true,
},
['sivu4'] = {
    label = 'Erikoinen sivu',
    description = '6',
    weight = 10,
    stack = false,
    close = true,
},
['sivu5'] = {
    label = 'Erikoinen sivu',
    description = '7',
    weight = 10,
    stack = false,
    close = true,
},
['sivu6'] = {
    label = 'Erikoinen sivu',
    description = '3',
    weight = 10,
    stack = false,
    close = true,
},

}