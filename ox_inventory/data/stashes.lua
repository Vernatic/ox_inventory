return {
	{
		coords = vec3(452.3, -991.4, 30.7),
		target = {
			loc = vec3(451.25, -994.28, 30.69),
			length = 1.2,
			width = 5.6,
			heading = 0,
			minZ = 29.49,
			maxZ = 32.09,
			label = 'Open personal locker'
		},
		name = 'policelocker',
		label = 'Personal locker',
		owner = true,
		slots = 70,
		weight = 70000,
		groups = shared.police
	},

	{
		coords = vec3(301.3, -600.23, 43.28),
		target = {
			loc = vec3(301.82, -600.99, 43.29),
			length = 0.6,
			width = 1.8,
			heading = 340,
			minZ = 43.34,
			maxZ = 44.74,
			label = 'Open personal locker'
		},
		name = 'emslocker',
		label = 'Personal Locker',
		owner = true,
		slots = 70,
		weight = 70000,
		groups = {['ambulance'] = 0}
	},

	{
		coords = vec3(4818.2090, 3440.3389, 60.1177),
		target = {
			loc = vec3(4818.2090, 3440.3389, 60.1177),
			length = 0.6,
			width = 1.8,
			heading = 340,
			minZ = 43.34,
			maxZ = 44.74,
			distance = 3,
			label = 'Velhopankki Irveta'
		},
		name = 'property',
		label = 'Velhopankki Irveta',
		owner = true,
		slots = 200,
		weight = 200000,
	},
	--[[
		coords = vec3(3429.1790, 7035.4585, 74.3078),
		target = {
			loc = vec3(3429.1790, 7035.4585, 74.3078), 3429.1790,
			length = 2.6,
			width = 2.8,
			heading = 380,
			minZ = 43.34,
			maxZ = 44.74,
			distance = 3,
			label = 'Valokuvataulu'
		},
		name = 'valokuva',
		label = 'Valokuvataulu',
		whitelist = 'tripolar_paper',
		owner = false,
		slots = 30,
		weight = 200,
	},]]--
}
