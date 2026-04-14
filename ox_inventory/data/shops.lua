return {
	General = {
		name = 'Professori Rapakäpälä',
		blip = {
			id = 59, colour = 69, scale = 0.8
		}, inventory = {
			{ name = 'basic_spell', currency = 'score_magic', price = 120 },
			{ name = 'lumos', currency = 'score_magic', price = 60 },
			--{ name = 'lumos_solem', currency = 'score_magic', price = 40 },
			--{ name = 'lumos_maxima', currency = 'score_magic', price = 70 },
			{ name = 'confundo', currency = 'score_magic', price = 100 },
			{ name = 'alohomora', currency = 'score_muggle_studies', price = 150 },
			{ name = 'aberto', currency = 'score_muggle_studies', price = 200 },
			{ name = 'muffliato', currency = 'score_muggle_studies', price = 100 },
			{ name = 'homorphus_charm', currency = 'score_transfiguration', price = 250 },
			{ name = 'immobulus', currency = 'score_transfiguration', price = 500 },
			{ name = 'accio', currency = 'score_aviation', price = 350 },
			{ name = 'mobilicorpus', currency = 'score_aviation', price = 500 },
			--{ name = 'descendo', currency = 'score_aviation', price = 30 },
			{ name = 'lepusrifors', currency = 'score_magical_creatures', price = 70 },
			--{ name = 'episky', currency = 'score_herbology', price = 300 },
			--{ name = 'decendio', currency = 'score_herbology', price = 500 },
			{ name = 'disillusionment', currency = 'score_divination', price = 500 },
			--{ name = 'incendio', currency = 'score_alchemy', price = 120 },
			--{ name = 'confringo', currency = 'score_alchemy', price = 40 },
			{ name = 'fumos', currency = 'score_charms', price = 50 },          
			{ name = 'expelliarmus_spell', currency = 'score_darkarts', price = 250 },
			{ name = 'diffindo', currency = 'score_darkarts', price = 300 },
			{ name = 'protego_totalum', currency = 'score_darkarts', price = 500 },
			--{ name = 'reducto', currency = 'score_darkarts', price = 800 },

		}, locations = {
			vec3(3358.8586, 6753.9619, 70.8124),

		}, targets = {
			{ loc = vec3(3358.8586, 6753.9619, 70.8124), length = 0.7, width = 0.5, heading = 0.0, minZ = 29.5, maxZ = 29.9, distance = 1.5 },
		}
	},
	Pimeanpiirto = {
		name = 'Pimeänpiirto',
		blip = {
			id = 59, colour = 69, scale = 0.8
		}, inventory = {
			{ name = 'pimeanpiirto', currency = 'tuhka', price = 300 },
			--{ name = 'pusep_no', currency = 'tuhka', price = 150 },

		}, locations = {
			vec3(4429.5298, 7567.5591, 133.0376),

		}, targets = {
			{ loc = vec3(4429.5298, 7567.5591, 133.0376), length = 0.7, width = 0.5, heading = 0.0, minZ = 29.5, maxZ = 29.9, distance = 1.5 },
		}
	},
	Kaikkoontuminen = {
		name = 'Fredrik',
		blip = {
			id = 59, colour = 69, scale = 0.8
		}, inventory = {
			--{ name = 'pimeanpiirto', currency = 'tuhka', price = 30 },
			{ name = 'pusep_no', currency = 'tuhka', price = 5000 },

		}, locations = {
			vec3(4746.6143, 3755.5969, 60.8036),

		}, targets = {
			{ loc = vec3(4746.6143, 3755.5969, 60.8036), length = 0.7, width = 0.5, heading = 0.0, minZ = 29.5, maxZ = 29.9, distance = 1.5 },
		}
	},
}
