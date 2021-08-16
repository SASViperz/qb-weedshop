## Dependencies
- [nh-context](https://github.com/nerohiro/nh-context)

## Features
* Simple Weed Dispensary Job
* Pick Weed To Craft Joints
* Craft Joints To Sell

## qb-core/shared.lua

```
	--Joints--
	["og_kush"] 					 = {["name"] = "og_kush", 			  	  		["label"] = "OG-Kush", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "og-kush.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "OG-Kush Rolled Up"},
	["purple_haze"] 				 = {["name"] = "purple_haze", 			  	  	["label"] = "Purple-Haze", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "purple-haze.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Purple-Haze Rolled Up"},
	["ak47"] 						 = {["name"] = "ak47", 			  	  		    ["label"] = "AK47", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "ak47.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "AK47 Rolled Up"},
	["skunk"] 						 = {["name"] = "skunk", 			  	  		["label"] = "Skunk", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "skunk.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Skunk Rolled Up"},
	["white_widow"] 				 = {["name"] = "white_widow", 			  	  	["label"] = "White-Widow", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "white-widow.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "White-Widow Rolled Up"},
	["amnesia"] 					 = {["name"] = "amnesia", 			  	  		["label"] = "Amnesia", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "amnesia.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Amnesia Rolled Up"},

	--Weed--
	["weed_white_widow"] 			 = {["name"] = "weed_white_widow", 			 	["label"] = "White Widow 2g", 			["weight"] = 200, 		["type"] = "item", 		["image"] = "weed-baggie.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "A weed bag with 2g White Widow"},
	["weed_skunk"] 				  	 = {["name"] = "weed_skunk", 			 		["label"] = "Skunk 2g", 				["weight"] = 200, 		["type"] = "item", 		["image"] = "weed-baggie.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "A weed bag with 2g Skunk"},
	["weed_purple_haze"] 			 = {["name"] = "weed_purple_haze", 			 	["label"] = "Purple Haze 2g", 			["weight"] = 200, 		["type"] = "item", 		["image"] = "weed-baggie.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "A weed bag with 2g Purple Haze"},
	["weed_og_kush"] 				 = {["name"] = "weed_og_kush", 			 		["label"] = "OGKush 2g", 				["weight"] = 200, 		["type"] = "item", 		["image"] = "weed-baggie.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "A weed bag with 2g OG Kush"},
	["weed_amnesia"] 				 = {["name"] = "weed_amnesia", 			 		["label"] = "Amnesia 2g", 				["weight"] = 200, 		["type"] = "item", 		["image"] = "weed-baggie.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "A weed bag with 2g Amnesia"},
	["weed_ak47"] 				     = {["name"] = "weed_ak47", 			 		["label"] = "AK47 2g", 					["weight"] = 200, 		["type"] = "item", 		["image"] = "weed-baggie.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "A weed bag with 2g AK47"},

	--Weed Seeds--
	["weed_white_widow_seed"] 		 = {["name"] = "weed_white_widow_seed", 		["label"] = "White Widow Seed", 		["weight"] = 0, 		["type"] = "item", 		["image"] = "weed-plant-seed.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "A weed seed of White Widow"},
	["weed_skunk_seed"] 			 = {["name"] = "weed_skunk_seed", 			    ["label"] = "Skunk Seed", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "weed-plant-seed.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "A weed seed of Skunk"},
	["weed_purple_haze_seed"] 		 = {["name"] = "weed_purple_haze_seed", 		["label"] = "Purple Haze Seed", 		["weight"] = 0, 		["type"] = "item", 		["image"] = "weed-plant-seed.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "A weed seed of Purple Haze"},
	["weed_og_kush_seed"] 			 = {["name"] = "weed_og_kush_seed", 			["label"] = "OGKush Seed", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "weed-plant-seed.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "A weed seed of OG Kush"},
	["weed_amnesia_seed"] 			 = {["name"] = "weed_amnesia_seed", 			["label"] = "Amnesia Seed", 			["weight"] = 0, 		["type"] = "item", 		["image"] = "weed-plant-seed.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "A weed seed of Amnesia"},
	["weed_ak47_seed"] 				 = {["name"] = "weed_ak47_seed", 			    ["label"] = "AK47 Seed", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "weed-plant-seed.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "A weed seed of AK47"},

	--Weed Needs--
	["empty_weed_bag"] 				 = {["name"] = "empty_weed_bag", 			    ["label"] = "Empty Baggies", 			["weight"] = 0, 		["type"] = "item", 		["image"] = "weed-empty-bag.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "A empty bag for weed buds"},
	["weed_nutrition"] 				 = {["name"] = "weed_nutrition", 			    ["label"] = "Plant Fertilizer", 		["weight"] = 2000, 		["type"] = "item", 		["image"] = "weed_nutrition.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Plant nutrition"},
	--------- Weed Shit End---------
```


