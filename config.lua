Config									= {}
Config.Locale						= 'en'
Config.DrawDistance			= 25.0

Config.PercentCurrentMoney = 40 -- % of store current money to transfert to bank
Config.MaxRandomMultiplier = 2	-- multiplier (musn't go over 100% of PercentCurrentMoney)
-- For example : if 25% : multiplieur max = 4 (4*25=100)
-- partOfCurrentMoney = CurrentMoney * Config.PercentCurrentMoney / 100
-- randomMoneyToBank 	= math.random(partOfCurrentMoney, partOfCurrentMoney * Config.MaxRandomMultiplier)

Config.AddMoneyToStoresTimeOut	= 10 -- minutes
Config.AddMoneyToBanksTimeOut		= 60 -- minutes

--[[
---------- TEMPLATES ----------

-- STORES
["My Little Store"] = {
	Pos				= { x = 28.288, y = -1339.537, z = 28.497 },
	Size  		= { x = 1.5, y = 1.5, z = 1.0 },
	Color 		= { r = 220, g = 110, b = 0 },
	Type  		= 1,
	AreaSize 	= 15, -- maximum area size the player can walk in without canceling the robbery
	CurrentMoney			= 1000, -- store starting money
	MaxMoney 					= 25000, -- store maximum money
	MoneyRegeneration	= math.random(1000,3000), -- store money generation each Config.AddMoneyToStoresTimeOut
	BankToDeliver 		= "My Little Bank", -- bank where the store money will go each Config.AddMoneyToBanksTimeOut
	Robbed						= 0, -- DO NOT CHANGE : current timer before new robbery allowed for this store
	TimeToRob					= 10, -- time to take the store money
	TimeBeforeNewRob 	= 100, -- time reference before new robbery allowed
	PoliceRequired		= 1 -- number of cops required to rob this store
},

-- BANKS (must be related to store's BankToDeliver)
["My Little Bank"] = {
	Pos				= { x = -706.193, y = -910.005, z = 18.216 },
	Size  		= { x = 1.5, y = 1.5, z = 1.0 },
	Color 		= { r = 220, g = 110, b = 0 },
	Type  		= 1,
	AreaSize 	= 15, -- maximum area size the player can walk in without canceling the robbery
	CurrentMoney			= 0, -- bank starting money
	MaxMoney 					= 200000,	-- bank maximum money
	Robbed						= 0, -- DO NOT CHANGE : current timer before new robbery allowed for this bank
	TimeToRob					= 10, -- time to take the bank money
	TimeBeforeNewRob 	= 100, -- time reference before new robbery allowed
	PoliceRequired		= 1 -- number of cops required to rob this bank
},

-------------------------------
]]--

Config.Zones = {

	-- STORES
	["24/7 Innocence Boulevard"] = {
		Pos			= { x = 28.288, y = -1339.537, z = 28.520 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 255, g = 0, b = 0 },
		AreaSize 	= 15,
		Type  		= 27,
		CurrentMoney			= 1000,
		MaxMoney 					= 30000,
		MoneyRegeneration	= math.random(1000,3000),
		BankToDeliver 		= "Fleeca Bank 206 Vespucci Boulevard",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 3600,
		PoliceRequired		= 1
	},
	["LTD Gasoline Grove Street"] = {
		Pos			= { x = -43.057, y = -1748.811, z = 28.421 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 255, g = 0, b = 0 },
		AreaSize 	= 15,
		Type  		= 27,
		CurrentMoney			= 1000,
		MaxMoney 					= 30000,
		MoneyRegeneration	= math.random(1000,3000),
		BankToDeliver 		= "Fleeca Bank 206 Vespucci Boulevard",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 80,
		TimeBeforeNewRob 	= 3600,
		PoliceRequired		= 1
	},
	
	
	["Sandy Shore RobLiquor 840 Route 68"] = {
		Pos			= { x = 1169.01, y = 2717.84, z = 36.19 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 255, g = 0, b = 0 },
		AreaSize 	= 15,
		Type  		= 27,
		CurrentMoney			= 1000,
		MaxMoney 					= 30000,
		MoneyRegeneration	= math.random(1000,3000),
		BankToDeliver 		= "Sandy Shore Fleeca Bank 940 Route 68",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 3600,
		PoliceRequired		= 1
	},
	
	["Sandy Shore RobLiquor 1016 Algonquin Boulevard"] = {
		Pos			= { x = 1395.21, y = 3613.51, z = 34.03 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 255, g = 0, b = 0 },
		AreaSize 	= 15,
		Type  		= 27,
		CurrentMoney			= 1000,
		MaxMoney 					= 30000,
		MoneyRegeneration	= math.random(1000,3000),
		BankToDeliver 		= "Sandy Shore Fleeca Bank 940 Route 68",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 3600,
		PoliceRequired		= 1
	},
	
	["Sandy Shore 24/7 928 Route 68"] = {
		Pos			= { x = 546.39, y = 2662.96, z = 41.21 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 255, g = 0, b = 0 },
		AreaSize 	= 15,
		Type  		= 27,
		CurrentMoney			= 1000,
		MaxMoney 					= 30000,
		MoneyRegeneration	= math.random(1000,3000),
		BankToDeliver 		= "Sandy Shore Fleeca Bank 940 Route 68",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 3600,
		PoliceRequired		= 1
	},
	
	["Sandy Shore 24/7 1036 Alhambra Drive"] = {
		Pos			= { x = 1959.34, y = 3748.72, z = 31.38 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 255, g = 0, b = 0 },
		AreaSize 	= 15,
		Type  		= 27,
		CurrentMoney			= 1000,
		MaxMoney 					= 30000,
		MoneyRegeneration	= math.random(1000,3000),
		BankToDeliver 		= "Sandy Shore Fleeca Bank 940 Route 68",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 3600,
		PoliceRequired		= 1
	},
	
	["Sandy Shore 24/7 957 Senora Fwy"] = {
		Pos			= { x = 2673.15, y = 3286.47, z = 54.29 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 255, g = 0, b = 0 },
		AreaSize 	= 15,
		Type  		= 27,
		CurrentMoney			= 1000,
		MaxMoney 					= 30000,
		MoneyRegeneration	= math.random(1000,3000),
		BankToDeliver 		= "Sandy Shore Fleeca Bank 940 Route 68",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 3600,
		PoliceRequired		= 1
	},
	
	["Grapeseed LTD Gasoline 2013 Main Street"] = {
		Pos			= { x = 1707.7, y = 4920.19, z = 41.12 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 255, g = 0, b = 0 },
		AreaSize 	= 15,
		Type  		= 27,
		CurrentMoney			= 1000,
		MaxMoney 					= 30000,
		MoneyRegeneration	= math.random(1000,3000),
		BankToDeliver 		= "Sandy Shore Fleeca Bank 940 Route 68",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 3600,
		PoliceRequired		= 1
	},
	
	["Paleto 24/7 3030 Senora Fwy"] = {
		Pos			= { x = 1734.74, y = 6420.62, z = 34.11 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 255, g = 0, b = 0 },
		AreaSize 	= 15,
		Type  		= 27,
		CurrentMoney			= 1000,
		MaxMoney 					= 30000,
		MoneyRegeneration	= math.random(1000,3000),
		BankToDeliver 		= "Paleto Fleeca Bank 3019 Cascabel Ave",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 3600,
		PoliceRequired		= 1
	},
	
	["Great Ocean Hwy 24/7 905 Barbanero Road"] = {
		Pos			= { x = -3249.74, y = 1004.36, z = 11.87 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 255, g = 0, b = 0 },
		AreaSize 	= 15,
		Type  		= 27,
		CurrentMoney			= 1000,
		MaxMoney 					= 30000,
		MoneyRegeneration	= math.random(1000,3000),
		BankToDeliver 		= "Fleeca Bank 814 Great Ocean Hwy",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 3600,
		PoliceRequired		= 1
	},
	
	["Great Ocean Hwy 24/7 804 Ineseno Road"] = {
		Pos			= { x = -3047.61, y = 585.67, z = 6.96 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 255, g = 0, b = 0 },
		AreaSize 	= 15,
		Type  		= 27,
		CurrentMoney			= 1000,
		MaxMoney 					= 30000,
		MoneyRegeneration	= math.random(1000,3000),
		BankToDeliver 		= "Fleeca Bank 814 Great Ocean Hwy",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 3600,
		PoliceRequired		= 1
	},
	
	["Great Ocean Hwy RobsLiquor 815 Great Ocean Hwy"] = {
		Pos			= { x = -2959.56, y = 387.48, z = 13.13 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 255, g = 0, b = 0 },
		AreaSize 	= 15,
		Type  		= 27,
		CurrentMoney			= 1000,
		MaxMoney 					= 30000,
		MoneyRegeneration	= math.random(1000,3000),
		BankToDeliver 		= "Fleeca Bank 814 Great Ocean Hwy",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 3600,
		PoliceRequired		= 1
	},
	
	["LTD Gasoline 817 North Rockford Drive"] = {
		Pos			= { x = -1828.97, y = 798.91, z = 137.23 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 255, g = 0, b = 0 },
		AreaSize 	= 15,
		Type  		= 27,
		CurrentMoney			= 1000,
		MaxMoney 					= 30000,
		MoneyRegeneration	= math.random(1000,3000),
		BankToDeliver 		= "Fleeca Bank 656 Boulevard Del Perro",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 3600,
		PoliceRequired		= 1
	},
	
	["LTD Gasoline 366 Lindsay Circus"] = {
		Pos			= { x = -709.43, y = -904.16, z = 18.27 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 255, g = 0, b = 0 },
		AreaSize 	= 15,
		Type  		= 27,
		CurrentMoney			= 1000,
		MaxMoney 					= 30000,
		MoneyRegeneration	= math.random(1000,3000),
		BankToDeliver 		= "Fleeca Bank 656 Boulevard Del Perro",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 3600,
		PoliceRequired		= 1
	},
	
	["Del Perro RobsLiquor 635 Prosperity Street"] = {
		Pos			= { x = -1479.13, y = -375.18, z = 38.2 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 255, g = 0, b = 0 },
		AreaSize 	= 15,
		Type  		= 27,
		CurrentMoney			= 1000,
		MaxMoney 					= 30000,
		MoneyRegeneration	= math.random(1000,3000),
		BankToDeliver 		= "Fleeca Bank 656 Boulevard Del Perro",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 3600,
		PoliceRequired		= 1
	},
	
	["Del Perro RobsLiquor 333 San Andreas Ave"] = {
		Pos			= { x = -1220.6, y = -915.79, z = 10.36 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 255, g = 0, b = 0 },
		AreaSize 	= 15,
		Type  		= 27,
		CurrentMoney			= 1000,
		MaxMoney 					= 30000,
		MoneyRegeneration	= math.random(1000,3000),
		BankToDeliver 		= "Fleeca Bank 656 Boulevard Del Perro",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 3600,
		PoliceRequired		= 1
	},
	
	["RobsLiquor 449 El Rancho Boulevard"] = {
		Pos			= { x = 1126.87, y = -980.47, z = 44.45 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 255, g = 0, b = 0 },
		AreaSize 	= 15,
		Type  		= 27,
		CurrentMoney			= 1000,
		MaxMoney 					= 30000,
		MoneyRegeneration	= math.random(1000,3000),
		BankToDeliver 		= "Fleeca Bank 584 Hawick Avenue",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 3600,
		PoliceRequired		= 1
	},
	
	["LTD Gasoline 411 Mirror Park Boulevard"] = {
		Pos			= { x = 1159.87, y = -313.97, z = 68.23 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 255, g = 0, b = 0 },
		AreaSize 	= 15,
		Type  		= 27,
		CurrentMoney			= 1000,
		MaxMoney 					= 30000,
		MoneyRegeneration	= math.random(1000,3000),
		BankToDeliver 		= "Fleeca Bank 584 Hawick Avenue",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 3600,
		PoliceRequired		= 1
	},
	
	["24/7 574 Clinton Avenue"] = {
		Pos			= { x = 378.06, y = 333.17, z = 102.62 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 255, g = 0, b = 0 },
		AreaSize 	= 15,
		Type  		= 27,
		CurrentMoney			= 1000,
		MaxMoney 					= 30000,
		MoneyRegeneration	= math.random(1000,3000),
		BankToDeliver 		= "Fleeca Bank 575 Vinewood Boulevard",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 3600,
		PoliceRequired		= 1
	},
	
	--Bar
	["Stripclub 133 Strawberry Ave"] = {
		Pos			= { x = 92.63, y = -1291.91, z = 28.28 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 255, g = 0, b = 0 },
		AreaSize 	= 15,
		Type  		= 27,
		CurrentMoney			= 1000,
		MaxMoney 					= 60000,
		MoneyRegeneration	= math.random(1000,3000),
		BankToDeliver 		= "Fleeca Bank 575 Vinewood Boulevard",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 3600,
		PoliceRequired		= 2
	},
	
	["Tequi-La-La 513 Eclipse Boulevard"] = {
		Pos			= { x = -562.58, y = 282.16, z = 84.7 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 255, g = 0, b = 0 },
		AreaSize 	= 15,
		Type  		= 27,
		CurrentMoney			= 1000,
		MaxMoney 					= 60000,
		MoneyRegeneration	= math.random(1000,3000),
		BankToDeliver 		= "Fleeca Bank 575 Vinewood Boulevard",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 3600,
		PoliceRequired		= 2
	},
	
	["Bahama 628 Marathon Avenue"] = {
		Pos			= { x = -1388.47, y = -586.79, z = 29.3 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 255, g = 0, b = 0 },
		AreaSize 	= 15,
		Type  		= 27,
		CurrentMoney			= 1000,
		MaxMoney 					= 60000,
		MoneyRegeneration	= math.random(1000,3000),
		BankToDeliver 		= "Fleeca Bank 575 Vinewood Boulevard",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 3600,
		PoliceRequired		= 2
	},
	
	["Yellow Jack 949 Panorama Drive"] = {
		Pos			= { x = 1990.54, y = 3044.95, z = 46.24 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 255, g = 0, b = 0 },
		AreaSize 	= 15,
		Type  		= 27,
		CurrentMoney			= 1000,
		MaxMoney 					= 60000,
		MoneyRegeneration	= math.random(1000,3000),
		BankToDeliver 		= "Fleeca Bank 575 Vinewood Boulevard",
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 60,
		TimeBeforeNewRob 	= 3600,
		PoliceRequired		= 2
	},
	
	

	-- BANKS
	["Fleeca Bank 206 Vespucci Boulevard"] = {
		Pos			= { x = 146.913, y = -1044.836, z = 28.376 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 255, g = 0, b = 0 },
		Type  		= 27,
		AreaSize 	= 15,
		CurrentMoney			= 0,
		MaxMoney 					= 300000,
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 120,
		TimeBeforeNewRob 	= 7200,
		PoliceRequired		= 3
	},
	
	["Fleeca Bank 584 Hawick Avenue"] = {
		Pos			= { x = 311.06, y = -283.21, z = 53.22 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 255, g = 0, b = 0 },
		Type  		= 27,
		AreaSize 	= 15,
		CurrentMoney			= 0,
		MaxMoney 					= 300000,
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 300,
		TimeBeforeNewRob 	= 7200,
		PoliceRequired		= 3
	},
	
	["Fleeca Bank 656 Boulevard Del Perro"] = {
		Pos			= { x = -1211.47, y = -335.7, z = 36.8 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 255, g = 0, b = 0 },
		Type  		= 27,
		AreaSize 	= 15,
		CurrentMoney			= 0,
		MaxMoney 					= 300000,
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 300,
		TimeBeforeNewRob 	= 7200,
		PoliceRequired		= 3
	},
	
	["Fleeca Bank 529 Hawick Ave"] = {
		Pos			= { x = -353.77, y = -54.16, z = 48.07 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 255, g = 0, b = 0 },
		Type  		= 27,
		AreaSize 	= 15,
		CurrentMoney			= 0,
		MaxMoney 					= 300000,
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 300,
		TimeBeforeNewRob 	= 7200,
		PoliceRequired		= 3
	},
	
	["Fleeca Bank 814 Great Ocean Hwy"] = {
		Pos			= { x = -2957.64, y = 481.55, z = 14.74 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 255, g = 0, b = 0 },
		Type  		= 27,
		AreaSize 	= 15,
		CurrentMoney			= 0,
		MaxMoney 					= 300000,
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 300,
		TimeBeforeNewRob 	= 7200,
		PoliceRequired		= 3
	},
	
	["Paleto Fleeca Bank 3019 Cascabel Ave"] = {
		Pos			= { x = -103.77, y = 6477.94, z = 30.65 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 255, g = 0, b = 0 },
		Type  		= 27,
		AreaSize 	= 15,
		CurrentMoney			= 0,
		MaxMoney 					= 300000,
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 300,
		TimeBeforeNewRob 	= 7200,
		PoliceRequired		= 3
	},
	
	["Sandy Shore Fleeca Bank 940 Route 68"] = {
		Pos			= { x = 1176.24, y = 2711.74, z = 37.11 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 255, g = 0, b = 0 },
		Type  		= 27,
		AreaSize 	= 15,
		CurrentMoney			= 0,
		MaxMoney 					= 300000,
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 300,
		TimeBeforeNewRob 	= 7200,
		PoliceRequired		= 3
	},
	
	["Fleeca Bank 575 Vinewood Boulevard"] = {
		Pos				= { x = 253.56, y = 228.28, z = 100.73 },
		Size  		= { x = 1.5, y = 1.5, z = 1.0 },
		Color 		= { r = 255, g = 0, b = 0 },
		Type  		= 27,
		AreaSize 	= 30,
		CurrentMoney			= 0,
		MaxMoney 					= 300000,
		Robbed						= 0, -- DO NOT CHANGE
		TimeToRob					= 300,
		TimeBeforeNewRob 	= 7200,
		PoliceRequired		= 3
	},

}

