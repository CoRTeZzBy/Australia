class CfgExileLootServer
{
	class LootTables
	{

		/*
			Percental Item Group Spawn Chances of CivillianLowerClass:

			Restraints        = 0,60%
			PistolAttachments = 1,79%
			ShotgunAmmo       = 1,79%
			SMGAmmo           = 1,79%
			SMGAttachments    = 1,79%
			Shotguns          = 2,38%
			SMG               = 2,38%
			CivilianVests     = 2,98%
			PistolAmmo        = 2,98%
			Pistols           = 4,76%
			CivilianItems     = 5,95%
			Drinks            = 5,95%
			CivilianBackpacks = 6,55%
			CivilianClothing  = 11,90%
			CivilianHeadgear  = 11,90%
			Food              = 16,67%
			Trash             = 17,86%
		*/
		CivillianLowerClass[] = {"CivilianBackpacks", "Drinks", "CivilianBackpacks", "CivilianVests", "Trash", "Food", "Food", "Trash", "Food", "Trash", "CivilianItems", "CivilianBackpacks", "Food", "Pistols", "Shotguns", "CivilianClothing", "CivilianVests", "CivilianClothing", "Trash", "CivilianClothing", "CivilianHeadgear", "Trash", "Food", "CivilianClothing", "CivilianBackpacks", "Food", "Food", "CivilianClothing", "Trash", "SMGAttachments", "CivilianClothing", "Pistols", "SMG", "Drinks", "Trash", "SMG", "CivilianHeadgear", "Food", "CivilianItems", "CivilianHeadgear", "SMGAttachments", "Food", "Food", "Food", "PistolAmmo", "CivilianItems", "CivilianHeadgear", "Drinks", "Food", "CivilianHeadgear", "CivilianHeadgear", "CivilianBackpacks", "Shotguns", "CivilianItems", "ShotgunAmmo", "CivilianHeadgear", "Trash", "Pistols", "Pistols", "CivilianHeadgear", "Pistols", "Food", "CivilianClothing", "Trash", "Trash", "PistolAmmo", "CivilianHeadgear", "CivilianHeadgear", "CivilianClothing", "CivilianVests", "Drinks", "ShotgunAmmo", "Food", "CivilianClothing", "Food", "Pistols", "SMGAmmo", "CivilianClothing", "Trash", "CivilianBackpacks", "CivilianClothing", "Food", "Drinks", "Trash", "SMGAttachments", "Food", "CivilianHeadgear", "Drinks", "CivilianHeadgear", "CivilianItems", "CivilianClothing", "Drinks", "Trash", "CivilianItems", "Trash", "PistolAttachments", "Trash", "Restraints", "Drinks", "Trash", "CivilianBackpacks", "CivilianHeadgear", "CivilianItems", "Trash", "CivilianClothing", "CivilianHeadgear", "PistolAttachments", "Pistols", "Food", "CivilianHeadgear", "Trash", "Food", "PistolAmmo", "Trash", "Drinks", "SMG", "SMGAmmo", "Food", "CivilianClothing", "Drinks", "Food", "Food", "CivilianClothing", "CivilianClothing", "PistolAttachments", "Trash", "Food", "CivilianClothing", "CivilianVests", "SMGAmmo", "CivilianItems", "CivilianBackpacks", "CivilianItems", "Shotguns", "PistolAmmo", "SMG", "Trash", "CivilianHeadgear", "Food", "Food", "CivilianBackpacks", "Trash", "Pistols", "CivilianClothing", "Trash", "Trash", "Trash", "CivilianHeadgear", "CivilianVests", "Food", "Shotguns", "PistolAmmo", "Trash", "Trash", "CivilianHeadgear", "Food", "ShotgunAmmo", "Trash", "Trash", "CivilianHeadgear", "Food", "CivilianClothing", "CivilianItems", "CivilianHeadgear", "CivilianBackpacks", "CivilianClothing", "Trash", "CivilianBackpacks"};

		/*
			Percental Item Group Spawn Chances of CivillianUpperClass:

			Restraints        = 0,56%
			PistolAttachments = 1,69%
			RifleAmmo         = 1,69%
			RifleAttachments  = 1,69%
			Rifles            = 1,69%
			ShotgunAmmo       = 1,69%
			SMGAmmo           = 1,69%
			SMGAttachments    = 1,69%
			Shotguns          = 2,26%
			SMG               = 2,26%
			CivilianVests     = 2,82%
			PistolAmmo        = 2,82%
			Pistols           = 4,52%
			CivilianItems     = 5,65%
			Drinks            = 5,65%
			CivilianBackpacks = 6,21%
			CivilianClothing  = 11,30%
			CivilianHeadgear  = 11,30%
			Food              = 15,82%
			Trash             = 16,95%
		*/
		CivillianUpperClass[] = {"CivilianClothing", "Drinks", "CivilianItems", "Food", "Drinks", "Food", "SMGAmmo", "CivilianClothing", "Drinks", "Food", "Shotguns", "CivilianHeadgear", "CivilianBackpacks", "Trash", "CivilianItems", "CivilianClothing", "CivilianHeadgear", "Food", "Food", "CivilianVests", "CivilianItems", "ShotgunAmmo", "Restraints", "RifleAmmo", "CivilianHeadgear", "CivilianClothing", "Food", "Pistols", "CivilianClothing", "SMG", "SMG", "CivilianClothing", "CivilianHeadgear", "Food", "SMGAttachments", "Rifles", "CivilianClothing", "Trash", "Food", "Food", "CivilianClothing", "CivilianHeadgear", "CivilianClothing", "Pistols", "CivilianBackpacks", "Food", "SMG", "CivilianHeadgear", "RifleAmmo", "CivilianItems", "Trash", "Pistols", "RifleAttachments", "CivilianHeadgear", "Shotguns", "Food", "Trash", "Trash", "Trash", "Food", "Trash", "PistolAmmo", "Pistols", "Trash", "Drinks", "CivilianClothing", "Food", "RifleAttachments", "Trash", "SMGAttachments", "CivilianClothing", "CivilianHeadgear", "CivilianClothing", "CivilianHeadgear", "Trash", "CivilianHeadgear", "SMGAttachments", "CivilianBackpacks", "Trash", "Trash", "CivilianHeadgear", "Trash", "SMGAmmo", "CivilianClothing", "Trash", "CivilianBackpacks", "Trash", "Trash", "Trash", "Trash", "CivilianHeadgear", "CivilianHeadgear", "Trash", "Trash", "Food", "Shotguns", "Food", "Trash", "CivilianClothing", "PistolAmmo", "CivilianItems", "SMGAmmo", "Food", "CivilianVests", "PistolAmmo", "CivilianVests", "CivilianBackpacks", "CivilianClothing", "CivilianClothing", "PistolAttachments", "Food", "Trash", "Trash", "Food", "CivilianItems", "Pistols", "CivilianClothing", "Food", "Trash", "CivilianHeadgear", "CivilianBackpacks", "Trash", "CivilianVests", "Rifles", "CivilianBackpacks", "RifleAttachments", "Drinks", "Pistols", "CivilianBackpacks", "Food", "CivilianHeadgear", "PistolAmmo", "Drinks", "RifleAmmo", "CivilianHeadgear", "PistolAttachments", "Trash", "PistolAttachments", "CivilianHeadgear", "Food", "CivilianHeadgear", "Pistols", "Food", "Food", "Drinks", "SMG", "Trash", "ShotgunAmmo", "Food", "CivilianItems", "CivilianBackpacks", "CivilianBackpacks", "Food", "CivilianItems", "Drinks", "CivilianItems", "CivilianVests", "CivilianHeadgear", "CivilianItems", "Shotguns", "PistolAmmo", "Trash", "ShotgunAmmo", "CivilianClothing", "Food", "CivilianBackpacks", "Food", "CivilianClothing", "Trash", "Drinks", "Food", "Drinks", "Trash", "CivilianHeadgear", "Pistols", "Rifles", "CivilianClothing"};

		/*
			Percental Item Group Spawn Chances of Shop:

			CivilianClothing  = 0,87%
			CivilianVests     = 0,87%
			PistolAttachments = 0,87%
			ShotgunAmmo       = 0,87%
			SMGAmmo           = 0,87%
			SMGAttachments    = 0,87%
			PistolAmmo        = 1,74%
			CivilianHeadgear  = 2,61%
			IndustrialItems   = 2,61%
			MedicalItems      = 2,61%
			Restraints        = 2,61%
			Shotguns          = 3,48%
			SmokeGrenades     = 3,48%
			CivilianBackpacks = 4,35%
			SMG               = 4,35%
			CivilianItems     = 6,09%
			Pistols           = 8,70%
			Drinks            = 13,04%
			Food              = 13,04%
			Trash             = 26,09%
		*/
		Shop[] = {"CivilianItems", "PistolAmmo", "SMGAmmo", "Drinks", "Shotguns", "Trash", "SMG", "Trash", "Food", "CivilianItems", "SMG", "Pistols", "Pistols", "Trash", "SmokeGrenades", "Trash", "ShotgunAmmo", "Trash", "Trash", "Drinks", "Trash", "Food", "Trash", "CivilianVests", "Drinks", "Trash", "SmokeGrenades", "CivilianBackpacks", "Food", "Food", "CivilianItems", "Trash", "Pistols", "Drinks", "Pistols", "SMG", "IndustrialItems", "MedicalItems", "CivilianBackpacks", "Trash", "Shotguns", "Drinks", "Drinks", "Food", "Pistols", "IndustrialItems", "CivilianHeadgear", "Trash", "Drinks", "Food", "Trash", "Drinks", "Food", "Shotguns", "Trash", "Drinks", "CivilianHeadgear", "Food", "CivilianClothing", "Trash", "SmokeGrenades", "Food", "Pistols", "CivilianHeadgear", "Drinks", "Pistols", "IndustrialItems", "PistolAttachments", "SMGAttachments", "CivilianItems", "Food", "CivilianItems", "CivilianBackpacks", "CivilianItems", "CivilianBackpacks", "Drinks", "Drinks", "Drinks", "Food", "SmokeGrenades", "CivilianItems", "Trash", "MedicalItems", "Trash", "Pistols", "Food", "Trash", "Trash", "Trash", "Food", "Pistols", "SMG", "Trash", "Restraints", "Restraints", "Trash", "CivilianBackpacks", "Trash", "Pistols", "MedicalItems", "Drinks", "Food", "Trash", "Shotguns", "Food", "Trash", "Trash", "Drinks", "SMG", "Restraints", "Trash", "Trash", "Trash", "Trash", "PistolAmmo"};

		/*
			Percental Item Group Spawn Chances of Industrial:

			Restraints      = 4,76%
			Electronics     = 4,76%
			Vehicle         = 23,81%
			Trash           = 28,57%
			IndustrialItems = 38,10%
		*/
		Industrial[] = {"Vehicle", "IndustrialItems", "IndustrialItems", "IndustrialItems", "IndustrialItems", "Trash", "Vehicle", "Vehicle", "Restraints", "Vehicle", "Trash", "Vehicle", "Trash", "Trash", "Trash", "IndustrialItems", "Electronics", "IndustrialItems", "IndustrialItems", "IndustrialItems", "Trash"};

		/*
			Percental Item Group Spawn Chances of Factories:

			Electronics     = 10,00%
			Trash           = 40,00%
			IndustrialItems = 50,00%
		*/
		Factories[] = {"Electronics", "IndustrialItems", "IndustrialItems", "IndustrialItems", "Trash", "IndustrialItems", "IndustrialItems", "Trash", "Trash", "Trash"};

		/*
			Percental Item Group Spawn Chances of VehicleService:

			Restraints      = 4,76%
			Electronics     = 4,76%
			IndustrialItems = 23,81%
			Trash           = 28,57%
			Vehicle         = 38,10%
		*/
		VehicleService[] = {"Trash", "Trash", "Trash", "Vehicle", "Trash", "Restraints", "Vehicle", "Vehicle", "IndustrialItems", "IndustrialItems", "Vehicle", "IndustrialItems", "Vehicle", "Vehicle", "Electronics", "IndustrialItems", "Trash", "Vehicle", "Vehicle", "Trash", "IndustrialItems"};

		/*
			Percental Item Group Spawn Chances of Military:

			DLCGhillies       = 0,50%
			Ghillies          = 0,50%
			Rebreathers       = 0,50%
			Bipods            = 0,99%
			DLCAmmo           = 0,99%
			DLCOptics         = 0,99%
			DLCSupressor      = 0,99%
			LMGAmmo           = 0,99%
			MedicalItems      = 0,99%
			Restraints        = 0,99%
			SniperAmmo        = 0,99%
			SniperAttachments = 0,99%
			DLCRifles         = 1,49%
			DLCVests          = 1,49%
			GuerillaHeadgear  = 1,49%
			GuerillaVests     = 1,49%
			HandGrenades      = 1,49%
			HEGrenades        = 1,49%
			MilitaryBackpacks = 1,49%
			MilitaryHeadgear  = 1,49%
			MilitaryVests     = 1,49%
			RifleAmmo         = 1,49%
			RifleAttachments  = 1,49%
			SmokeGrenades     = 1,49%
			Snipers           = 1,49%
			UGLFlares         = 1,49%
			UGLSmokes         = 1,49%
			CivilianItems     = 1,98%
			GuerillaBackpacks = 1,98%
			GuerillaItems     = 1,98%
			LMG               = 1,98%
			Explosives        = 2,48%
			GuerillaClothing  = 2,48%
			MilitaryClothing  = 2,48%
			Rifles            = 2,48%
			Trash             = 49,50%
		*/
		Military[] = {"CivilianItems", "Trash", "Explosives", "DLCSupressor", "Trash", "Trash", "LMG", "Trash", "Trash", "Trash", "GuerillaBackpacks", "RifleAttachments", "Trash", "DLCRifles", "GuerillaItems", "MilitaryVests", "Trash", "Trash", "Trash", "Trash", "Trash", "Trash", "Trash", "Snipers", "GuerillaClothing", "Trash", "Trash", "Trash", "SniperAttachments", "Trash", "Trash", "GuerillaBackpacks", "SmokeGrenades", "HEGrenades", "Trash", "Trash", "MilitaryClothing", "HandGrenades", "MedicalItems", "Trash", "SniperAmmo", "SmokeGrenades", "SmokeGrenades", "Rifles", "Trash", "Trash", "Restraints", "Explosives", "Trash", "SniperAmmo", "CivilianItems", "Trash", "Ghillies", "GuerillaClothing", "Explosives", "Trash", "Trash", "UGLSmokes", "Trash", "MilitaryClothing", "GuerillaVests", "Trash", "CivilianItems", "Trash", "Trash", "Trash", "Trash", "Trash", "Trash", "Trash", "GuerillaClothing", "Explosives", "Trash", "DLCVests", "Rebreathers", "LMG", "Snipers", "GuerillaHeadgear", "MilitaryVests", "MilitaryBackpacks", "Trash", "Trash", "Trash", "MilitaryBackpacks", "Trash", "Trash", "RifleAttachments", "Trash", "DLCSupressor", "HandGrenades", "UGLSmokes", "Trash", "MilitaryVests", "Trash", "RifleAmmo", "Trash", "DLCAmmo", "DLCRifles", "Trash", "UGLFlares", "Trash", "UGLFlares", "DLCGhillies", "GuerillaVests", "GuerillaClothing", "Trash", "Trash", "CivilianItems", "Trash", "Trash", "HandGrenades", "Trash", "LMGAmmo", "Trash", "Trash", "Trash", "Trash", "Rifles", "Trash", "Trash", "Trash", "HEGrenades", "MilitaryBackpacks", "DLCVests", "Trash", "Trash", "Trash", "Trash", "Trash", "Trash", "Trash", "DLCOptics", "RifleAttachments", "MilitaryClothing", "LMGAmmo", "Trash", "Trash", "Trash", "MilitaryHeadgear", "Trash", "Trash", "Bipods", "GuerillaVests", "UGLFlares", "Trash", "DLCOptics", "GuerillaItems", "Trash", "Trash", "GuerillaItems", "DLCVests", "Trash", "MilitaryHeadgear", "GuerillaBackpacks", "RifleAmmo", "GuerillaBackpacks", "Rifles", "Trash", "Rifles", "GuerillaHeadgear", "Rifles", "DLCRifles", "Trash", "Trash", "Snipers", "Trash", "MedicalItems", "Trash", "Trash", "MilitaryClothing", "MilitaryClothing", "Trash", "Trash", "SniperAttachments", "RifleAmmo", "Trash", "Trash", "Trash", "Restraints", "Trash", "GuerillaItems", "Explosives", "Trash", "Trash", "Trash", "GuerillaHeadgear", "Trash", "Trash", "UGLSmokes", "Trash", "Trash", "LMG", "MilitaryHeadgear", "Bipods", "GuerillaClothing", "HEGrenades", "Trash", "Trash", "LMG", "Trash", "DLCAmmo", "Trash"};

		/*
			Percental Item Group Spawn Chances of Medical:

			Trash        = 27,27%
			Electronics  = 9,09%
			MedicalItems = 63,64%
		*/
		Medical[] = {"Trash", "MedicalItems", "MedicalItems", "Trash", "MedicalItems", "MedicalItems", "MedicalItems", "Trash", "MedicalItems", "Electronics", "MedicalItems"};

		/*
			Percental Item Group Spawn Chances of Tourist:

			DLCAmmo           = 2,17%
			DLCOptics         = 2,17%
			Electronics       = 2,17%
			DLCSupressor      = 2,17%
			SniperAmmo        = 2,17%
			SniperAttachments = 2,17%
			CivilianItems     = 4,35%
			Explosives        = 4,35%
			HandGrenades      = 4,35%
			MedicalItems      = 4,35%
			Restraints        = 4,35%
			DLCGhillies       = 6,52%
			Ghillies          = 6,52%
			MilitaryBackpacks = 8,70%
			MilitaryHeadgear  = 8,70%
			DLCRifles         = 17,39%
			Snipers           = 17,39%
		*/
		Tourist[] = {"DLCGhillies", "MilitaryHeadgear", "HandGrenades", "Snipers", "DLCRifles", "Snipers", "DLCGhillies", "Ghillies", "DLCRifles", "DLCGhillies", "DLCRifles", "Explosives", "Snipers", "Snipers", "DLCRifles", "DLCRifles", "Restraints", "MedicalItems", "MilitaryBackpacks", "MilitaryHeadgear", "Restraints", "DLCOptics", "MilitaryBackpacks", "Ghillies", "CivilianItems", "MilitaryBackpacks", "Snipers", "Snipers", "DLCSupressor", "MilitaryBackpacks", "HandGrenades", "Snipers", "MilitaryHeadgear", "DLCAmmo", "SniperAmmo", "MedicalItems", "Snipers", "SniperAttachments", "DLCRifles", "DLCRifles", "CivilianItems", "Electronics", "MilitaryHeadgear", "DLCRifles", "Explosives", "Ghillies"};

		/*
			Percental Item Group Spawn Chances of Radiation:

			DLCAmmo           = 2,27%
			DLCOptics         = 2,27%
			DLCSupressor      = 2,27%
			SniperAmmo        = 2,27%
			SniperAttachments = 2,27%
			EpicWeapons       = 4,55%
			HandGrenades      = 4,55%
			MedicalItems      = 4,55%
			Restraints        = 4,55%
			DLCGhillies       = 6,82%
			Ghillies          = 6,82%
			Explosives        = 11,36%
			MilitaryBackpacks = 11,36%
			MilitaryHeadgear  = 11,36%
			DLCRifles         = 11,36%
			Snipers           = 11,36%
		*/
		Radiation[] = {"MilitaryBackpacks", "DLCAmmo", "Ghillies", "DLCRifles", "Explosives", "Explosives", "DLCRifles", "Snipers", "DLCSupressor", "DLCGhillies", "MilitaryHeadgear", "Explosives", "MilitaryBackpacks", "Ghillies", "HandGrenades", "MilitaryHeadgear", "MedicalItems", "MilitaryBackpacks", "DLCOptics", "Snipers", "DLCRifles", "Restraints", "Snipers", "MilitaryBackpacks", "DLCGhillies", "EpicWeapons", "SniperAmmo", "Explosives", "DLCRifles", "MilitaryHeadgear", "Snipers", "Restraints", "MedicalItems", "Snipers", "MilitaryHeadgear", "MilitaryHeadgear", "EpicWeapons", "Explosives", "SniperAttachments", "DLCGhillies", "HandGrenades", "DLCRifles", "Ghillies", "MilitaryBackpacks"};
	};

	class ItemGroups
	{

		/*
			Percental Item Spawn Chances of Food:

			Exile_Item_CookingPot        = 2,08%
			Exile_Item_CanOpener         = 3,47%
			Exile_Item_Matches           = 3,47%
			Exile_Item_EMRE              = 2,08%
			Exile_Item_GloriousKnakworst = 4,17%
			Exile_Item_Surstromming      = 4,86%
			Exile_Item_SausageGravy      = 4,86%
			Exile_Item_ChristmasTinner   = 4,86%
			Exile_Item_MacasCheese       = 4,86%
			Exile_Item_BBQSandwich       = 4,86%
			Exile_Item_CatFood           = 4,86%
			Exile_Item_Dogfood           = 4,86%
			Exile_Item_BeefParts         = 4,86%
			Exile_Item_Cheathas          = 4,86%
			Exile_Item_DsNuts            = 4,86%
			Exile_Item_Noodles           = 4,86%
			Exile_Item_CockONut          = 5,56%
			Exile_Item_SeedAstics        = 5,56%
			Exile_Item_Raisins           = 6,25%
			Exile_Item_Moobar            = 6,25%
			Exile_Item_InstantCoffee     = 7,64%
		*/
		Food[] = {"Exile_Item_Noodles", "Exile_Item_CatFood", "Exile_Item_SausageGravy", "Exile_Item_ChristmasTinner", "Exile_Item_ChristmasTinner", "Exile_Item_Matches", "Exile_Item_CatFood", "Exile_Item_Moobar", "Exile_Item_EMRE", "Exile_Item_Surstromming", "Exile_Item_Surstromming", "Exile_Item_InstantCoffee", "Exile_Item_Surstromming", "Exile_Item_CatFood", "Exile_Item_BeefParts", "Exile_Item_InstantCoffee", "Exile_Item_Raisins", "Exile_Item_DsNuts", "Exile_Item_CanOpener", "Exile_Item_Dogfood", "Exile_Item_ChristmasTinner", "Exile_Item_Moobar", "Exile_Item_GloriousKnakworst", "Exile_Item_BBQSandwich", "Exile_Item_InstantCoffee", "Exile_Item_InstantCoffee", "Exile_Item_Raisins", "Exile_Item_Cheathas", "Exile_Item_CockONut", "Exile_Item_CockONut", "Exile_Item_Noodles", "Exile_Item_SeedAstics", "Exile_Item_MacasCheese", "Exile_Item_Moobar", "Exile_Item_Dogfood", "Exile_Item_Cheathas", "Exile_Item_Raisins", "Exile_Item_BeefParts", "Exile_Item_Moobar", "Exile_Item_BBQSandwich", "Exile_Item_SausageGravy", "Exile_Item_CatFood", "Exile_Item_SausageGravy", "Exile_Item_GloriousKnakworst", "Exile_Item_Dogfood", "Exile_Item_InstantCoffee", "Exile_Item_Dogfood", "Exile_Item_MacasCheese", "Exile_Item_SausageGravy", "Exile_Item_Cheathas", "Exile_Item_GloriousKnakworst", "Exile_Item_SausageGravy", "Exile_Item_EMRE", "Exile_Item_Moobar", "Exile_Item_DsNuts", "Exile_Item_ChristmasTinner", "Exile_Item_Raisins", "Exile_Item_CatFood", "Exile_Item_Surstromming", "Exile_Item_Noodles", "Exile_Item_Noodles", "Exile_Item_Noodles", "Exile_Item_SausageGravy", "Exile_Item_Raisins", "Exile_Item_Matches", "Exile_Item_BBQSandwich", "Exile_Item_Surstromming", "Exile_Item_BBQSandwich", "Exile_Item_Cheathas", "Exile_Item_CookingPot", "Exile_Item_CockONut", "Exile_Item_SeedAstics", "Exile_Item_Matches", "Exile_Item_Raisins", "Exile_Item_CanOpener", "Exile_Item_DsNuts", "Exile_Item_CanOpener", "Exile_Item_Moobar", "Exile_Item_MacasCheese", "Exile_Item_SausageGravy", "Exile_Item_BBQSandwich", "Exile_Item_Dogfood", "Exile_Item_SeedAstics", "Exile_Item_SeedAstics", "Exile_Item_Raisins", "Exile_Item_ChristmasTinner", "Exile_Item_Moobar", "Exile_Item_CatFood", "Exile_Item_Cheathas", "Exile_Item_Noodles", "Exile_Item_SeedAstics", "Exile_Item_BeefParts", "Exile_Item_DsNuts", "Exile_Item_CanOpener", "Exile_Item_Matches", "Exile_Item_Cheathas", "Exile_Item_Raisins", "Exile_Item_InstantCoffee", "Exile_Item_GloriousKnakworst", "Exile_Item_BBQSandwich", "Exile_Item_BBQSandwich", "Exile_Item_DsNuts", "Exile_Item_Cheathas", "Exile_Item_CatFood", "Exile_Item_ChristmasTinner", "Exile_Item_Surstromming", "Exile_Item_GloriousKnakworst", "Exile_Item_EMRE", "Exile_Item_BeefParts", "Exile_Item_CookingPot", "Exile_Item_Dogfood", "Exile_Item_SeedAstics", "Exile_Item_Moobar", "Exile_Item_MacasCheese", "Exile_Item_DsNuts", "Exile_Item_InstantCoffee", "Exile_Item_GloriousKnakworst", "Exile_Item_CookingPot", "Exile_Item_Matches", "Exile_Item_InstantCoffee", "Exile_Item_MacasCheese", "Exile_Item_CockONut", "Exile_Item_InstantCoffee", "Exile_Item_MacasCheese", "Exile_Item_BeefParts", "Exile_Item_Raisins", "Exile_Item_SeedAstics", "Exile_Item_InstantCoffee", "Exile_Item_CockONut", "Exile_Item_Noodles", "Exile_Item_SeedAstics", "Exile_Item_DsNuts", "Exile_Item_CockONut", "Exile_Item_MacasCheese", "Exile_Item_CockONut", "Exile_Item_Dogfood", "Exile_Item_CockONut", "Exile_Item_CanOpener", "Exile_Item_Surstromming", "Exile_Item_InstantCoffee", "Exile_Item_Moobar", "Exile_Item_ChristmasTinner", "Exile_Item_BeefParts", "Exile_Item_BeefParts"};

		/*
			Percental Item Spawn Chances of Drinks:

			Exile_Item_Beer                    = 7,14%
			Exile_Item_EnergyDrink             = 7,14%
			Exile_Item_PlasticBottleFreshWater = 7,14%
			Exile_Item_PowerDrink              = 7,14%
			Exile_Item_MountainDupe            = 14,29%
			Exile_Item_ChocolateMilk           = 21,43%
			Exile_Item_PlasticBottleDirtyWater = 35,71%
		*/
		Drinks[] = {"Exile_Item_PlasticBottleDirtyWater", "Exile_Item_PlasticBottleDirtyWater", "Exile_Item_ChocolateMilk", "Exile_Item_MountainDupe", "Exile_Item_PlasticBottleDirtyWater", "Exile_Item_ChocolateMilk", "Exile_Item_EnergyDrink", "Exile_Item_MountainDupe", "Exile_Item_PlasticBottleDirtyWater", "Exile_Item_PlasticBottleDirtyWater", "Exile_Item_PlasticBottleFreshWater", "Exile_Item_ChocolateMilk", "Exile_Item_Beer", "Exile_Item_PowerDrink"};

		/*
			Percental Item Spawn Chances of Pistols:

			Exile_Weapon_Colt1911   = 5,88%
			Exile_Weapon_Makarov    = 5,88%
			Exile_Weapon_Taurus     = 5,88%
			Exile_Weapon_TaurusGold = 5,88%
			hgun_P07_khk_F          = 5,88%
			hgun_Pistol_01_F        = 5,88%
			hgun_Pistol_heavy_01_F  = 5,88%
			hgun_Pistol_heavy_02_F  = 5,88%
			hgun_Pistol_Signal_F    = 5,88%
			hgun_ACPC2_F            = 11,76%
			hgun_P07_F              = 11,76%
			hgun_Rook40_F           = 11,76%
			Exile_Weapon_SA61       = 11,76%
		*/
		Pistols[] = {"hgun_Rook40_F", "hgun_P07_F", "Exile_Weapon_SA61", "hgun_ACPC2_F", "Exile_Weapon_Taurus", "hgun_Pistol_Signal_F", "Exile_Weapon_Makarov", "Exile_Weapon_TaurusGold", "hgun_Pistol_heavy_01_F", "hgun_Pistol_heavy_02_F", "hgun_Rook40_F", "hgun_P07_F", "hgun_Pistol_01_F", "Exile_Weapon_Colt1911", "hgun_ACPC2_F", "Exile_Weapon_SA61", "hgun_P07_khk_F"};

		/*
			Percental Item Spawn Chances of PistolAmmo:

			6Rnd_GreenSignal_F               = 2,44%
			6Rnd_RedSignal_F                 = 2,44%
			16Rnd_9x21_Mag                   = 2,44%
			6Rnd_45ACP_Cylinder              = 4,88%
			10Rnd_9x21_Mag                   = 9,76%
			11Rnd_45ACP_Mag                  = 9,76%
			30Rnd_9x21_Mag                   = 9,76%
			9Rnd_45ACP_Mag                   = 9,76%
			Exile_Magazine_6Rnd_45ACP        = 9,76%
			Exile_Magazine_7Rnd_45ACP        = 9,76%
			Exile_Magazine_8Rnd_9x18         = 9,76%
			Exile_Magazine_10Rnd_765x17_SA61 = 9,76%
			Exile_Magazine_20Rnd_765x17_SA61 = 9,76%
		*/
		PistolAmmo[] = {"Exile_Magazine_20Rnd_765x17_SA61", "11Rnd_45ACP_Mag", "30Rnd_9x21_Mag", "Exile_Magazine_10Rnd_765x17_SA61", "30Rnd_9x21_Mag", "10Rnd_9x21_Mag", "6Rnd_GreenSignal_F", "Exile_Magazine_8Rnd_9x18", "Exile_Magazine_10Rnd_765x17_SA61", "30Rnd_9x21_Mag", "11Rnd_45ACP_Mag", "Exile_Magazine_7Rnd_45ACP", "Exile_Magazine_10Rnd_765x17_SA61", "9Rnd_45ACP_Mag", "Exile_Magazine_6Rnd_45ACP", "Exile_Magazine_7Rnd_45ACP", "30Rnd_9x21_Mag", "6Rnd_45ACP_Cylinder", "9Rnd_45ACP_Mag", "Exile_Magazine_20Rnd_765x17_SA61", "Exile_Magazine_6Rnd_45ACP", "Exile_Magazine_10Rnd_765x17_SA61", "10Rnd_9x21_Mag", "6Rnd_RedSignal_F", "11Rnd_45ACP_Mag", "Exile_Magazine_7Rnd_45ACP", "11Rnd_45ACP_Mag", "Exile_Magazine_8Rnd_9x18", "Exile_Magazine_20Rnd_765x17_SA61", "Exile_Magazine_6Rnd_45ACP", "9Rnd_45ACP_Mag", "16Rnd_9x21_Mag", "10Rnd_9x21_Mag", "9Rnd_45ACP_Mag", "Exile_Magazine_6Rnd_45ACP", "10Rnd_9x21_Mag", "Exile_Magazine_20Rnd_765x17_SA61", "Exile_Magazine_8Rnd_9x18", "Exile_Magazine_7Rnd_45ACP", "6Rnd_45ACP_Cylinder", "Exile_Magazine_8Rnd_9x18"};

		/*
			Percental Item Spawn Chances of PistolAttachments:

			optic_MRD       = 20,00%
			muzzle_snds_acp = 40,00%
			muzzle_snds_L   = 40,00%
		*/
		PistolAttachments[] = {"muzzle_snds_L", "muzzle_snds_L", "muzzle_snds_acp", "optic_MRD", "muzzle_snds_acp"};

		/*
			Percental Item Spawn Chances of Shotguns:

			Exile_Weapon_M1014 = 100,00%
		*/
		Shotguns[] = {"Exile_Weapon_M1014"};

		/*
			Percental Item Spawn Chances of ShotgunAmmo:

			Exile_Magazine_8Rnd_74Slug = 100,00%
		*/
		ShotgunAmmo[] = {"Exile_Magazine_8Rnd_74Slug"};

		/*
			Percental Item Spawn Chances of SMG:

			SMG_01_F = 100,00%
		*/
		SMG[] = {"SMG_01_F"};

		/*
			Percental Item Spawn Chances of SMGAmmo:

			30Rnd_45ACP_Mag_SMG_01              = 50,00%
			30Rnd_45ACP_Mag_SMG_01_Tracer_Green = 50,00%
		*/
		SMGAmmo[] = {"30Rnd_45ACP_Mag_SMG_01_Tracer_Green", "30Rnd_45ACP_Mag_SMG_01"};

		/*
			Percental Item Spawn Chances of SMGAttachments:

			optic_Holosight_smg       = 16,67%
			optic_Holosight_smg_blk_F = 16,67%
			optic_ACO_grn_smg         = 16,67%
			optic_Aco_smg             = 16,67%
			optic_ACO_grn             = 16,67%
			optic_Aco                 = 16,67%
		*/
		SMGAttachments[] = {"optic_Holosight_smg_blk_F", "optic_ACO_grn", "optic_Aco", "optic_Aco_smg", "optic_ACO_grn_smg", "optic_Holosight_smg"};

		/*
			Percental Item Spawn Chances of Rifles:

			arifle_Katiba_GL_F       = 0,71%
			arifle_Mk20_GL_F         = 0,71%
			arifle_MX_GL_Black_F     = 0,71%
			arifle_MX_GL_F           = 0,71%
			arifle_MXM_F             = 0,71%
			arifle_TRG21_GL_F        = 0,71%
			Exile_Weapon_AK107_GL    = 0,71%
			Exile_Weapon_AK74_GL     = 0,71%
			arifle_AK12_GL_F         = 1,43%
			arifle_AKM_F             = 1,43%
			arifle_AKM_FL_F          = 1,43%
			arifle_AKS_F             = 1,43%
			arifle_ARX_blk_F         = 1,43%
			arifle_ARX_ghex_F        = 1,43%
			arifle_ARX_hex_F         = 1,43%
			arifle_CTAR_blk_F        = 1,43%
			arifle_CTAR_ghex_F       = 1,43%
			arifle_CTAR_GL_blk_F     = 1,43%
			arifle_CTAR_hex_F        = 1,43%
			arifle_CTARS_blk_F       = 1,43%
			arifle_CTARS_ghex_F      = 1,43%
			arifle_CTARS_hex_F       = 1,43%
			arifle_Katiba_F          = 1,43%
			arifle_Mk20_F            = 1,43%
			arifle_Mk20C_F           = 1,43%
			arifle_MX_Black_F        = 1,43%
			arifle_MX_F              = 1,43%
			arifle_MXC_Black_F       = 1,43%
			arifle_MXC_F             = 1,43%
			arifle_MXM_Black_F       = 1,43%
			arifle_SDAR_F            = 1,43%
			arifle_SPAR_01_blk_F     = 1,43%
			arifle_SPAR_01_GL_blk_F  = 1,43%
			arifle_SPAR_01_GL_khk_F  = 1,43%
			arifle_SPAR_01_GL_snd_F  = 1,43%
			arifle_SPAR_01_khk_F     = 1,43%
			arifle_SPAR_01_snd_F     = 1,43%
			arifle_SPAR_02_blk_F     = 1,43%
			arifle_SPAR_02_khk_F     = 1,43%
			arifle_SPAR_02_snd_F     = 1,43%
			arifle_SPAR_03_blk_F     = 1,43%
			arifle_SPAR_03_khk_F     = 1,43%
			arifle_SPAR_03_snd_F     = 1,43%
			arifle_TRG20_F           = 1,43%
			arifle_TRG21_F           = 1,43%
			Exile_Weapon_AK107       = 1,43%
			Exile_Weapon_AK74        = 1,43%
			Exile_Weapon_DMR         = 1,43%
			arifle_MXM_khk_F         = 2,14%
			Exile_Weapon_AK47        = 2,14%
			Exile_Weapon_AKS_Gold    = 2,14%
			Exile_Weapon_SVD         = 2,14%
			Exile_Weapon_SVDCamo     = 2,14%
			Exile_Weapon_VSSVintorez = 2,14%
			arifle_MX_GL_khk_F       = 2,14%
			arifle_AK12_F            = 2,14%
			Exile_Weapon_CZ550       = 2,14%
			arifle_MX_khk_F          = 2,14%
			arifle_MXC_khk_F         = 2,14%
			Exile_Weapon_M4          = 2,14%
			Exile_Weapon_M16A4       = 2,14%
			Exile_Weapon_M16A2       = 2,14%
			Exile_Weapon_LeeEnfield  = 7,14%
		*/
		Rifles[] = {"Exile_Weapon_AK47", "Exile_Weapon_SVDCamo", "Exile_Weapon_M16A2", "Exile_Weapon_LeeEnfield", "Exile_Weapon_AK47", "Exile_Weapon_LeeEnfield", "arifle_MXC_F", "Exile_Weapon_M16A2", "arifle_AK12_GL_F", "arifle_SPAR_02_blk_F", "Exile_Weapon_LeeEnfield", "arifle_MX_khk_F", "arifle_TRG20_F", "Exile_Weapon_VSSVintorez", "arifle_SPAR_01_GL_khk_F", "arifle_AKM_FL_F", "arifle_SPAR_01_GL_khk_F", "Exile_Weapon_SVDCamo", "arifle_ARX_hex_F", "Exile_Weapon_M16A4", "arifle_MXC_khk_F", "arifle_AK12_F", "arifle_CTARS_hex_F", "arifle_MX_Black_F", "arifle_ARX_hex_F", "arifle_Katiba_F", "Exile_Weapon_M16A4", "arifle_TRG21_F", "arifle_AKM_F", "arifle_MX_GL_khk_F", "arifle_SPAR_03_khk_F", "arifle_SPAR_02_snd_F", "arifle_MX_khk_F", "arifle_MXC_F", "arifle_MXC_Black_F", "arifle_CTAR_ghex_F", "arifle_MX_Black_F", "Exile_Weapon_M4", "Exile_Weapon_DMR", "arifle_AKS_F", "arifle_CTARS_blk_F", "Exile_Weapon_LeeEnfield", "arifle_MXM_khk_F", "arifle_ARX_ghex_F", "arifle_MXC_Black_F", "arifle_Mk20_F", "arifle_MX_GL_Black_F", "arifle_CTARS_ghex_F", "arifle_MX_GL_khk_F", "arifle_SPAR_02_khk_F", "arifle_AK12_GL_F", "Exile_Weapon_AK74", "arifle_Mk20C_F", "arifle_Katiba_F", "arifle_SPAR_01_GL_blk_F", "arifle_CTARS_ghex_F", "arifle_CTAR_ghex_F", "Exile_Weapon_LeeEnfield", "arifle_Katiba_GL_F", "arifle_SPAR_03_snd_F", "arifle_CTARS_hex_F", "arifle_MX_F", "arifle_SPAR_01_GL_blk_F", "arifle_TRG21_F", "arifle_MX_GL_khk_F", "arifle_SPAR_01_GL_snd_F", "Exile_Weapon_AK107_GL", "Exile_Weapon_CZ550", "arifle_AK12_F", "arifle_SPAR_01_blk_F", "arifle_SPAR_03_khk_F", "arifle_MXM_F", "arifle_MXM_khk_F", "arifle_MXM_Black_F", "Exile_Weapon_DMR", "Exile_Weapon_M16A4", "Exile_Weapon_AK107", "arifle_MX_F", "Exile_Weapon_AKS_Gold", "Exile_Weapon_LeeEnfield", "arifle_ARX_blk_F", "arifle_ARX_blk_F", "Exile_Weapon_AKS_Gold", "arifle_MX_khk_F", "Exile_Weapon_LeeEnfield", "arifle_SPAR_01_khk_F", "arifle_SPAR_01_GL_snd_F", "arifle_TRG21_GL_F", "arifle_SPAR_01_snd_F", "Exile_Weapon_VSSVintorez", "Exile_Weapon_SVD", "arifle_AKS_F", "arifle_MXM_Black_F", "Exile_Weapon_SVD", "Exile_Weapon_AK74_GL", "Exile_Weapon_LeeEnfield", "arifle_CTAR_hex_F", "Exile_Weapon_LeeEnfield", "Exile_Weapon_CZ550", "arifle_MXC_khk_F", "arifle_SPAR_02_khk_F", "arifle_CTAR_GL_blk_F", "Exile_Weapon_M4", "arifle_AKM_F", "arifle_Mk20_F", "arifle_ARX_ghex_F", "Exile_Weapon_M16A2", "arifle_SDAR_F", "Exile_Weapon_AK107", "arifle_SPAR_02_snd_F", "arifle_TRG20_F", "Exile_Weapon_SVDCamo", "arifle_MX_GL_F", "arifle_SPAR_01_snd_F", "arifle_MXM_khk_F", "arifle_SPAR_03_snd_F", "arifle_CTARS_blk_F", "arifle_CTAR_blk_F", "Exile_Weapon_SVD", "arifle_SPAR_01_blk_F", "arifle_Mk20C_F", "Exile_Weapon_AKS_Gold", "Exile_Weapon_VSSVintorez", "Exile_Weapon_M4", "arifle_AK12_F", "arifle_CTAR_GL_blk_F", "arifle_CTAR_hex_F", "arifle_AKM_FL_F", "arifle_CTAR_blk_F", "arifle_SPAR_03_blk_F", "arifle_SPAR_03_blk_F", "arifle_Mk20_GL_F", "arifle_SPAR_01_khk_F", "Exile_Weapon_AK47", "arifle_SDAR_F", "Exile_Weapon_LeeEnfield", "arifle_MXC_khk_F", "Exile_Weapon_AK74", "arifle_SPAR_02_blk_F", "Exile_Weapon_CZ550"};

		/*
			Percental Item Spawn Chances of RifleAmmo:

			20Rnd_556x45_UW_mag                    = 2,20%
			30Rnd_556x45_Stanag                    = 2,20%
			30Rnd_556x45_Stanag_green              = 2,20%
			30Rnd_556x45_Stanag_red                = 2,20%
			30Rnd_556x45_Stanag_Tracer_Green       = 2,20%
			30Rnd_556x45_Stanag_Tracer_Red         = 2,20%
			30Rnd_556x45_Stanag_Tracer_Yellow      = 2,20%
			30Rnd_65x39_caseless_green             = 2,20%
			30Rnd_65x39_caseless_green_mag_Tracer  = 2,20%
			30Rnd_65x39_caseless_mag               = 2,20%
			30Rnd_65x39_caseless_mag_Tracer        = 2,20%
			Exile_Magazine_10Rnd_303               = 10,99%
			Exile_Magazine_30Rnd_762x39_AK         = 2,20%
			Exile_Magazine_30Rnd_545x39_AK         = 2,20%
			Exile_Magazine_30Rnd_545x39_AK_Green   = 2,20%
			Exile_Magazine_30Rnd_545x39_AK_Red     = 2,20%
			Exile_Magazine_30Rnd_545x39_AK_White   = 2,20%
			Exile_Magazine_30Rnd_545x39_AK_Yellow  = 2,20%
			Exile_Magazine_20Rnd_762x51_DMR        = 1,10%
			Exile_Magazine_20Rnd_762x51_DMR_Yellow = 1,10%
			Exile_Magazine_20Rnd_762x51_DMR_Red    = 1,10%
			Exile_Magazine_20Rnd_762x51_DMR_Green  = 1,10%
			Exile_Magazine_20Rnd_762x51_DMR_White  = 1,10%
			Exile_Magazine_5Rnd_22LR               = 2,20%
			Exile_Magazine_10Rnd_762x54            = 2,20%
			Exile_Magazine_10Rnd_9x39              = 2,20%
			Exile_Magazine_20Rnd_9x39              = 2,20%
			30Rnd_762x39_Mag_F                     = 2,20%
			30Rnd_762x39_Mag_Green_F               = 2,20%
			30Rnd_762x39_Mag_Tracer_F              = 2,20%
			30Rnd_762x39_Mag_Tracer_Green_F        = 2,20%
			30Rnd_762x39_AK47_M                    = 2,20%
			30Rnd_545x39_Mag_F                     = 2,20%
			30Rnd_545x39_Mag_Green_F               = 2,20%
			30Rnd_545x39_Mag_Tracer_F              = 2,20%
			30Rnd_545x39_Mag_Tracer_Green_F        = 2,20%
			10Rnd_50BW_Mag_F                       = 2,20%
			30Rnd_580x42_Mag_F                     = 2,20%
			30Rnd_580x42_Mag_Tracer_F              = 2,20%
			100Rnd_580x42_Mag_F                    = 2,20%
			100Rnd_580x42_Mag_Tracer_F             = 2,20%
			150Rnd_556x45_Drum_Mag_F               = 2,20%
			150Rnd_556x45_Drum_Mag_Tracer_F        = 2,20%
			20Rnd_762x51_Mag                       = 2,20%
		*/
		RifleAmmo[] = {"Exile_Magazine_20Rnd_762x51_DMR_Yellow", "30Rnd_556x45_Stanag_Tracer_Red", "30Rnd_580x42_Mag_Tracer_F", "20Rnd_556x45_UW_mag", "30Rnd_545x39_Mag_Tracer_Green_F", "30Rnd_762x39_Mag_Green_F", "30Rnd_762x39_Mag_Tracer_Green_F", "Exile_Magazine_10Rnd_303", "30Rnd_762x39_AK47_M", "30Rnd_762x39_Mag_Tracer_F", "30Rnd_65x39_caseless_green", "30Rnd_545x39_Mag_Tracer_F", "Exile_Magazine_10Rnd_303", "30Rnd_65x39_caseless_mag", "100Rnd_580x42_Mag_F", "30Rnd_545x39_Mag_Tracer_Green_F", "30Rnd_545x39_Mag_Green_F", "100Rnd_580x42_Mag_Tracer_F", "30Rnd_556x45_Stanag_Tracer_Green", "Exile_Magazine_10Rnd_762x54", "Exile_Magazine_30Rnd_545x39_AK", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_red", "Exile_Magazine_10Rnd_762x54", "Exile_Magazine_10Rnd_303", "30Rnd_762x39_Mag_Tracer_Green_F", "Exile_Magazine_10Rnd_303", "30Rnd_65x39_caseless_green_mag_Tracer", "Exile_Magazine_30Rnd_762x39_AK", "30Rnd_580x42_Mag_F", "30Rnd_65x39_caseless_mag_Tracer", "Exile_Magazine_10Rnd_303", "30Rnd_545x39_Mag_F", "Exile_Magazine_30Rnd_762x39_AK", "Exile_Magazine_30Rnd_545x39_AK_Yellow", "30Rnd_762x39_Mag_Tracer_F", "30Rnd_580x42_Mag_Tracer_F", "150Rnd_556x45_Drum_Mag_Tracer_F", "Exile_Magazine_30Rnd_545x39_AK_Green", "Exile_Magazine_30Rnd_545x39_AK", "Exile_Magazine_10Rnd_303", "30Rnd_65x39_caseless_green", "30Rnd_556x45_Stanag_green", "30Rnd_762x39_Mag_F", "10Rnd_50BW_Mag_F", "30Rnd_556x45_Stanag_Tracer_Red", "30Rnd_556x45_Stanag_Tracer_Green", "Exile_Magazine_20Rnd_762x51_DMR", "30Rnd_762x39_Mag_F", "30Rnd_545x39_Mag_Tracer_F", "30Rnd_556x45_Stanag", "Exile_Magazine_10Rnd_303", "Exile_Magazine_20Rnd_9x39", "Exile_Magazine_20Rnd_762x51_DMR_Green", "150Rnd_556x45_Drum_Mag_Tracer_F", "Exile_Magazine_20Rnd_9x39", "100Rnd_580x42_Mag_Tracer_F", "30Rnd_65x39_caseless_mag", "30Rnd_556x45_Stanag_Tracer_Yellow", "150Rnd_556x45_Drum_Mag_F", "30Rnd_545x39_Mag_F", "Exile_Magazine_10Rnd_303", "Exile_Magazine_30Rnd_545x39_AK_White", "Exile_Magazine_10Rnd_9x39", "20Rnd_762x51_Mag", "30Rnd_65x39_caseless_mag_Tracer", "Exile_Magazine_30Rnd_545x39_AK_Red", "100Rnd_580x42_Mag_F", "30Rnd_580x42_Mag_F", "Exile_Magazine_5Rnd_22LR", "20Rnd_762x51_Mag", "Exile_Magazine_30Rnd_545x39_AK_Red", "Exile_Magazine_30Rnd_545x39_AK_Yellow", "Exile_Magazine_10Rnd_9x39", "150Rnd_556x45_Drum_Mag_F", "Exile_Magazine_20Rnd_762x51_DMR_White", "Exile_Magazine_10Rnd_303", "Exile_Magazine_30Rnd_545x39_AK_White", "Exile_Magazine_10Rnd_303", "10Rnd_50BW_Mag_F", "30Rnd_556x45_Stanag_green", "Exile_Magazine_5Rnd_22LR", "30Rnd_556x45_Stanag_red", "30Rnd_556x45_Stanag_Tracer_Yellow", "30Rnd_762x39_Mag_Green_F", "Exile_Magazine_30Rnd_545x39_AK_Green", "30Rnd_65x39_caseless_green_mag_Tracer", "20Rnd_556x45_UW_mag", "30Rnd_762x39_AK47_M", "30Rnd_545x39_Mag_Green_F", "Exile_Magazine_20Rnd_762x51_DMR_Red"};

		/*
			Percental Item Spawn Chances of RifleAttachments:

			muzzle_snds_M            = 3,39%
			muzzle_snds_H            = 3,39%
			muzzle_snds_H_khk_F      = 3,39%
			muzzle_snds_H_snd_F      = 3,39%
			muzzle_snds_58_blk_F     = 3,39%
			muzzle_snds_m_khk_F      = 3,39%
			muzzle_snds_m_snd_F      = 3,39%
			muzzle_snds_58_wdm_F     = 3,39%
			muzzle_snds_65_TI_blk_F  = 3,39%
			muzzle_snds_65_TI_hex_F  = 3,39%
			muzzle_snds_65_TI_ghex_F = 3,39%
			muzzle_snds_H_MG_blk_F   = 3,39%
			muzzle_snds_H_MG_khk_F   = 3,39%
			optic_Arco               = 3,39%
			optic_Arco_blk_F         = 3,39%
			optic_Arco_ghex_F        = 3,39%
			optic_Hamr               = 3,39%
			optic_Hamr_khk_F         = 3,39%
			optic_Holosight          = 3,39%
			optic_Holosight_blk_F    = 3,39%
			optic_Holosight_khk_F    = 3,39%
			acc_flashlight           = 3,39%
			acc_pointer_IR           = 3,39%
			optic_MRCO               = 3,39%
			optic_DMS                = 3,39%
			optic_DMS_ghex_F         = 3,39%
			optic_ERCO_blk_F         = 3,39%
			optic_ERCO_khk_F         = 3,39%
			optic_ERCO_snd_F         = 3,39%
			optic_NVS                = 1,69%
		*/
		RifleAttachments[] = {"muzzle_snds_M", "optic_Holosight", "optic_Arco_blk_F", "optic_ERCO_blk_F", "muzzle_snds_M", "optic_ERCO_blk_F", "optic_DMS", "optic_Arco_ghex_F", "optic_Holosight_khk_F", "optic_Arco_ghex_F", "optic_Arco", "optic_Holosight", "optic_Holosight_blk_F", "optic_ERCO_khk_F", "optic_DMS_ghex_F", "muzzle_snds_H_MG_khk_F", "muzzle_snds_58_blk_F", "optic_Holosight_blk_F", "muzzle_snds_58_blk_F", "optic_MRCO", "optic_Hamr_khk_F", "optic_Hamr_khk_F", "optic_Holosight_khk_F", "optic_ERCO_snd_F", "muzzle_snds_H", "muzzle_snds_H_MG_blk_F", "optic_DMS", "muzzle_snds_58_wdm_F", "muzzle_snds_m_khk_F", "optic_ERCO_snd_F", "optic_Arco_blk_F", "optic_DMS_ghex_F", "muzzle_snds_H_khk_F", "muzzle_snds_m_snd_F", "muzzle_snds_H_snd_F", "acc_flashlight", "muzzle_snds_65_TI_blk_F", "muzzle_snds_65_TI_hex_F", "muzzle_snds_58_wdm_F", "muzzle_snds_m_snd_F", "muzzle_snds_H_MG_blk_F", "optic_MRCO", "muzzle_snds_65_TI_blk_F", "acc_pointer_IR", "optic_NVS", "acc_pointer_IR", "muzzle_snds_H_khk_F", "optic_Hamr", "optic_Arco", "muzzle_snds_65_TI_ghex_F", "muzzle_snds_H_snd_F", "optic_Hamr", "optic_ERCO_khk_F", "muzzle_snds_m_khk_F", "acc_flashlight", "muzzle_snds_65_TI_hex_F", "muzzle_snds_H_MG_khk_F", "muzzle_snds_65_TI_ghex_F", "muzzle_snds_H"};

		/*
			Percental Item Spawn Chances of LMG:

			arifle_MX_SW_Black_F = 12,50%
			arifle_MX_SW_F       = 12,50%
			LMG_Mk200_F          = 12,50%
			LMG_Zafir_F          = 12,50%
			Exile_Weapon_RPK     = 12,50%
			Exile_Weapon_PK      = 12,50%
			Exile_Weapon_PKP     = 12,50%
			LMG_03_F             = 12,50%
		*/
		LMG[] = {"LMG_Zafir_F", "LMG_03_F", "Exile_Weapon_RPK", "Exile_Weapon_PKP", "Exile_Weapon_PK", "arifle_MX_SW_Black_F", "LMG_Mk200_F", "arifle_MX_SW_F"};

		/*
			Percental Item Spawn Chances of LMGAmmo:

			100Rnd_65x39_caseless_mag             = 7,69%
			100Rnd_65x39_caseless_mag_Tracer      = 11,54%
			150Rnd_762x54_Box                     = 11,54%
			150Rnd_762x54_Box_Tracer              = 3,85%
			130Rnd_338_Mag                        = 19,23%
			150Rnd_93x64_Mag                      = 19,23%
			Exile_Magazine_45Rnd_545x39_RPK_Green = 3,85%
			Exile_Magazine_75Rnd_545x39_RPK_Green = 3,85%
			Exile_Magazine_100Rnd_762x54_PK_Green = 3,85%
			200Rnd_556x45_Box_F                   = 3,85%
			200Rnd_556x45_Box_Red_F               = 3,85%
			200Rnd_556x45_Box_Tracer_F            = 3,85%
			200Rnd_556x45_Box_Tracer_Red_F        = 3,85%
		*/
		LMGAmmo[] = {"200Rnd_556x45_Box_Tracer_Red_F", "100Rnd_65x39_caseless_mag", "150Rnd_762x54_Box", "150Rnd_93x64_Mag", "200Rnd_556x45_Box_Tracer_F", "150Rnd_93x64_Mag", "Exile_Magazine_75Rnd_545x39_RPK_Green", "130Rnd_338_Mag", "150Rnd_762x54_Box_Tracer", "130Rnd_338_Mag", "130Rnd_338_Mag", "100Rnd_65x39_caseless_mag_Tracer", "Exile_Magazine_100Rnd_762x54_PK_Green", "150Rnd_93x64_Mag", "130Rnd_338_Mag", "130Rnd_338_Mag", "150Rnd_93x64_Mag", "100Rnd_65x39_caseless_mag_Tracer", "150Rnd_762x54_Box", "200Rnd_556x45_Box_Red_F", "150Rnd_93x64_Mag", "100Rnd_65x39_caseless_mag_Tracer", "Exile_Magazine_45Rnd_545x39_RPK_Green", "150Rnd_762x54_Box", "200Rnd_556x45_Box_F", "100Rnd_65x39_caseless_mag"};

		/*
			Percental Item Spawn Chances of Snipers:

			srifle_DMR_01_F      = 9,09%
			srifle_EBR_F         = 9,09%
			srifle_GM6_F         = 9,09%
			srifle_LRR_F         = 9,09%
			srifle_LRR_tna_F     = 9,09%
			srifle_GM6_ghex_F    = 9,09%
			srifle_DMR_07_blk_F  = 9,09%
			srifle_DMR_07_hex_F  = 9,09%
			srifle_DMR_07_ghex_F = 9,09%
			Exile_Weapon_m107    = 9,09%
			Exile_Weapon_ksvk    = 9,09%
		*/
		Snipers[] = {"srifle_GM6_F", "srifle_LRR_F", "srifle_LRR_tna_F", "srifle_GM6_ghex_F", "Exile_Weapon_m107", "srifle_DMR_07_blk_F", "srifle_EBR_F", "srifle_DMR_07_hex_F", "srifle_DMR_01_F", "srifle_DMR_07_ghex_F", "Exile_Weapon_ksvk"};

		/*
			Percental Item Spawn Chances of SniperAmmo:

			Exile_Magazine_5Rnd_127x108_APDS_Bullet_Cam_Mag      = 0,74%
			Exile_Magazine_5Rnd_127x108_APDS_KSVK_Bullet_Cam_Mag = 0,74%
			Exile_Magazine_5Rnd_127x108_KSVK_Bullet_Cam_Mag      = 1,48%
			Exile_Magazine_5Rnd_127x108_Bullet_Cam_Mag           = 1,48%
			Exile_Magazine_10Rnd_127x99_m107_Bullet_Cam_Mag      = 2,22%
			Exile_Magazine_7Rnd_408_Bullet_Cam_Mag               = 2,22%
			Exile_Magazine_10Rnd_338_Bullet_Cam_Mag              = 3,70%
			Exile_Magazine_10Rnd_93x64_DMR_05_Bullet_Cam_Mag     = 3,70%
			Exile_Magazine_5Rnd_127x108_APDS_KSVK                = 5,93%
			5Rnd_127x108_APDS_Mag                                = 5,93%
			5Rnd_127x108_Mag                                     = 7,41%
			Exile_Magazine_10Rnd_127x99_m107                     = 7,41%
			Exile_Magazine_5Rnd_127x108_KSVK                     = 7,41%
			7Rnd_408_Mag                                         = 7,41%
			10Rnd_762x54_Mag                                     = 12,59%
			20Rnd_762x51_Mag                                     = 14,07%
			20Rnd_650x39_Cased_Mag_F                             = 15,56%
		*/
		SniperAmmo[] = {"Exile_Magazine_5Rnd_127x108_Bullet_Cam_Mag", "7Rnd_408_Mag", "20Rnd_650x39_Cased_Mag_F", "5Rnd_127x108_APDS_Mag", "7Rnd_408_Mag", "Exile_Magazine_5Rnd_127x108_KSVK", "20Rnd_650x39_Cased_Mag_F", "5Rnd_127x108_Mag", "Exile_Magazine_5Rnd_127x108_KSVK", "20Rnd_650x39_Cased_Mag_F", "7Rnd_408_Mag", "20Rnd_762x51_Mag", "20Rnd_650x39_Cased_Mag_F", "10Rnd_762x54_Mag", "10Rnd_762x54_Mag", "7Rnd_408_Mag", "Exile_Magazine_5Rnd_127x108_KSVK", "Exile_Magazine_5Rnd_127x108_KSVK", "20Rnd_650x39_Cased_Mag_F", "Exile_Magazine_10Rnd_93x64_DMR_05_Bullet_Cam_Mag", "5Rnd_127x108_Mag", "7Rnd_408_Mag", "7Rnd_408_Mag", "20Rnd_650x39_Cased_Mag_F", "20Rnd_762x51_Mag", "20Rnd_650x39_Cased_Mag_F", "20Rnd_650x39_Cased_Mag_F", "Exile_Magazine_10Rnd_338_Bullet_Cam_Mag", "Exile_Magazine_10Rnd_127x99_m107", "20Rnd_762x51_Mag", "20Rnd_762x51_Mag", "7Rnd_408_Mag", "Exile_Magazine_7Rnd_408_Bullet_Cam_Mag", "10Rnd_762x54_Mag", "10Rnd_762x54_Mag", "5Rnd_127x108_APDS_Mag", "Exile_Magazine_5Rnd_127x108_APDS_KSVK", "Exile_Magazine_10Rnd_93x64_DMR_05_Bullet_Cam_Mag", "5Rnd_127x108_Mag", "10Rnd_762x54_Mag", "10Rnd_762x54_Mag", "10Rnd_762x54_Mag", "5Rnd_127x108_Mag", "7Rnd_408_Mag", "Exile_Magazine_5Rnd_127x108_APDS_KSVK", "20Rnd_762x51_Mag", "10Rnd_762x54_Mag", "Exile_Magazine_10Rnd_127x99_m107", "Exile_Magazine_10Rnd_338_Bullet_Cam_Mag", "Exile_Magazine_5Rnd_127x108_APDS_KSVK_Bullet_Cam_Mag", "Exile_Magazine_10Rnd_127x99_m107", "Exile_Magazine_10Rnd_93x64_DMR_05_Bullet_Cam_Mag", "5Rnd_127x108_APDS_Mag", "Exile_Magazine_10Rnd_127x99_m107_Bullet_Cam_Mag", "Exile_Magazine_10Rnd_338_Bullet_Cam_Mag", "20Rnd_762x51_Mag", "20Rnd_650x39_Cased_Mag_F", "10Rnd_762x54_Mag", "7Rnd_408_Mag", "5Rnd_127x108_Mag", "5Rnd_127x108_APDS_Mag", "Exile_Magazine_10Rnd_127x99_m107", "Exile_Magazine_5Rnd_127x108_KSVK", "20Rnd_762x51_Mag", "10Rnd_762x54_Mag", "20Rnd_762x51_Mag", "20Rnd_650x39_Cased_Mag_F", "5Rnd_127x108_Mag", "5Rnd_127x108_APDS_Mag", "Exile_Magazine_5Rnd_127x108_APDS_Bullet_Cam_Mag", "Exile_Magazine_5Rnd_127x108_KSVK", "10Rnd_762x54_Mag", "5Rnd_127x108_APDS_Mag", "20Rnd_650x39_Cased_Mag_F", "Exile_Magazine_5Rnd_127x108_KSVK_Bullet_Cam_Mag", "Exile_Magazine_10Rnd_127x99_m107", "Exile_Magazine_5Rnd_127x108_KSVK", "20Rnd_762x51_Mag", "Exile_Magazine_10Rnd_127x99_m107", "20Rnd_762x51_Mag", "10Rnd_762x54_Mag", "10Rnd_762x54_Mag", "Exile_Magazine_5Rnd_127x108_APDS_KSVK", "5Rnd_127x108_Mag", "Exile_Magazine_7Rnd_408_Bullet_Cam_Mag", "20Rnd_650x39_Cased_Mag_F", "20Rnd_762x51_Mag", "20Rnd_650x39_Cased_Mag_F", "7Rnd_408_Mag", "Exile_Magazine_5Rnd_127x108_APDS_KSVK", "20Rnd_650x39_Cased_Mag_F", "5Rnd_127x108_Mag", "10Rnd_762x54_Mag", "5Rnd_127x108_Mag", "20Rnd_762x51_Mag", "Exile_Magazine_5Rnd_127x108_Bullet_Cam_Mag", "Exile_Magazine_10Rnd_127x99_m107", "10Rnd_762x54_Mag", "20Rnd_762x51_Mag", "20Rnd_762x51_Mag", "Exile_Magazine_10Rnd_338_Bullet_Cam_Mag", "Exile_Magazine_10Rnd_127x99_m107", "Exile_Magazine_10Rnd_338_Bullet_Cam_Mag", "Exile_Magazine_5Rnd_127x108_KSVK", "Exile_Magazine_5Rnd_127x108_KSVK", "Exile_Magazine_5Rnd_127x108_KSVK", "20Rnd_762x51_Mag", "5Rnd_127x108_Mag", "Exile_Magazine_5Rnd_127x108_APDS_KSVK", "20Rnd_650x39_Cased_Mag_F", "Exile_Magazine_5Rnd_127x108_APDS_KSVK", "20Rnd_762x51_Mag", "5Rnd_127x108_APDS_Mag", "Exile_Magazine_5Rnd_127x108_KSVK_Bullet_Cam_Mag", "20Rnd_650x39_Cased_Mag_F", "Exile_Magazine_10Rnd_93x64_DMR_05_Bullet_Cam_Mag", "20Rnd_762x51_Mag", "Exile_Magazine_10Rnd_127x99_m107", "Exile_Magazine_10Rnd_93x64_DMR_05_Bullet_Cam_Mag", "20Rnd_650x39_Cased_Mag_F", "Exile_Magazine_5Rnd_127x108_APDS_KSVK", "20Rnd_762x51_Mag", "Exile_Magazine_10Rnd_127x99_m107_Bullet_Cam_Mag", "10Rnd_762x54_Mag", "10Rnd_762x54_Mag", "20Rnd_650x39_Cased_Mag_F", "20Rnd_650x39_Cased_Mag_F", "Exile_Magazine_10Rnd_127x99_m107", "Exile_Magazine_5Rnd_127x108_APDS_KSVK", "5Rnd_127x108_APDS_Mag", "20Rnd_762x51_Mag", "Exile_Magazine_10Rnd_127x99_m107_Bullet_Cam_Mag", "20Rnd_650x39_Cased_Mag_F", "20Rnd_650x39_Cased_Mag_F", "Exile_Magazine_7Rnd_408_Bullet_Cam_Mag"};

		/*
			Percental Item Spawn Chances of SniperAttachments:

			muzzle_snds_B_khk_F = 11,11%
			muzzle_snds_B_snd_F = 11,11%
			muzzle_snds_B       = 11,11%
			optic_LRPS          = 11,11%
			optic_LRPS_ghex_F   = 11,11%
			optic_LRPS_tna_F    = 11,11%
			optic_SOS           = 11,11%
			optic_SOS_khk_F     = 11,11%
			optic_DMS           = 11,11%
		*/
		SniperAttachments[] = {"optic_SOS_khk_F", "optic_LRPS", "muzzle_snds_B_snd_F", "muzzle_snds_B", "optic_LRPS_ghex_F", "optic_SOS", "optic_LRPS_tna_F", "optic_DMS", "muzzle_snds_B_khk_F"};

		/*
			Percental Item Spawn Chances of DLCRifles:

			MMG_01_hex_F             = 4,00%
			MMG_01_tan_F             = 4,00%
			MMG_02_black_F           = 6,00%
			MMG_02_camo_F            = 6,00%
			MMG_02_sand_F            = 6,00%
			srifle_DMR_03_F          = 3,00%
			srifle_DMR_03_khaki_F    = 3,00%
			srifle_DMR_03_tan_F      = 3,00%
			srifle_DMR_03_woodland_F = 3,00%
			srifle_DMR_06_camo_F     = 3,00%
			srifle_DMR_06_olive_F    = 3,00%
			srifle_DMR_02_camo_F     = 6,00%
			srifle_DMR_02_F          = 6,00%
			srifle_DMR_02_sniper_F   = 6,00%
			srifle_DMR_04_F          = 7,00%
			srifle_DMR_04_Tan_F      = 7,00%
			srifle_DMR_05_blk_F      = 8,00%
			srifle_DMR_05_hex_F      = 8,00%
			srifle_DMR_05_tan_F      = 8,00%
		*/
		DLCRifles[] = {"srifle_DMR_05_hex_F", "srifle_DMR_02_F", "srifle_DMR_05_hex_F", "srifle_DMR_03_khaki_F", "srifle_DMR_05_blk_F", "srifle_DMR_03_F", "srifle_DMR_03_woodland_F", "srifle_DMR_05_blk_F", "srifle_DMR_05_blk_F", "MMG_02_black_F", "srifle_DMR_02_sniper_F", "MMG_01_tan_F", "srifle_DMR_04_F", "srifle_DMR_02_camo_F", "srifle_DMR_03_woodland_F", "srifle_DMR_03_woodland_F", "srifle_DMR_03_khaki_F", "srifle_DMR_02_sniper_F", "srifle_DMR_03_tan_F", "MMG_02_sand_F", "srifle_DMR_05_hex_F", "srifle_DMR_04_Tan_F", "MMG_02_black_F", "srifle_DMR_04_F", "srifle_DMR_02_camo_F", "MMG_02_camo_F", "srifle_DMR_05_blk_F", "srifle_DMR_05_hex_F", "srifle_DMR_02_sniper_F", "srifle_DMR_05_hex_F", "MMG_02_sand_F", "srifle_DMR_03_khaki_F", "MMG_02_black_F", "MMG_02_camo_F", "srifle_DMR_04_F", "srifle_DMR_04_F", "srifle_DMR_05_tan_F", "srifle_DMR_02_F", "MMG_01_tan_F", "MMG_01_tan_F", "srifle_DMR_05_blk_F", "srifle_DMR_05_hex_F", "srifle_DMR_05_tan_F", "srifle_DMR_02_camo_F", "srifle_DMR_05_blk_F", "srifle_DMR_05_tan_F", "srifle_DMR_02_sniper_F", "srifle_DMR_06_olive_F", "srifle_DMR_04_F", "srifle_DMR_02_F", "MMG_02_black_F", "srifle_DMR_03_F", "srifle_DMR_03_F", "srifle_DMR_05_tan_F", "srifle_DMR_05_hex_F", "MMG_01_tan_F", "srifle_DMR_04_Tan_F", "srifle_DMR_02_F", "srifle_DMR_06_olive_F", "srifle_DMR_06_olive_F", "MMG_01_hex_F", "srifle_DMR_04_Tan_F", "srifle_DMR_04_F", "srifle_DMR_03_tan_F", "srifle_DMR_05_hex_F", "srifle_DMR_04_Tan_F", "srifle_DMR_05_tan_F", "MMG_02_sand_F", "MMG_02_sand_F", "MMG_01_hex_F", "MMG_02_camo_F", "MMG_01_hex_F", "MMG_02_sand_F", "srifle_DMR_04_Tan_F", "srifle_DMR_06_camo_F", "srifle_DMR_06_camo_F", "MMG_02_camo_F", "srifle_DMR_05_tan_F", "srifle_DMR_02_sniper_F", "srifle_DMR_02_camo_F", "srifle_DMR_05_tan_F", "srifle_DMR_02_sniper_F", "MMG_02_sand_F", "srifle_DMR_03_tan_F", "srifle_DMR_02_F", "srifle_DMR_02_camo_F", "srifle_DMR_02_camo_F", "MMG_02_black_F", "srifle_DMR_04_Tan_F", "srifle_DMR_02_F", "MMG_01_hex_F", "srifle_DMR_04_F", "MMG_02_camo_F", "srifle_DMR_06_camo_F", "MMG_02_black_F", "srifle_DMR_05_blk_F", "srifle_DMR_05_blk_F", "MMG_02_camo_F", "srifle_DMR_05_tan_F", "srifle_DMR_04_Tan_F"};

		/*
			Percental Item Spawn Chances of DLCAmmo:

			10Rnd_127x54_Mag       = 20,00%
			20Rnd_762x51_Mag       = 20,00%
			10Rnd_338_Mag          = 30,00%
			10Rnd_93x64_DMR_05_Mag = 30,00%
		*/
		DLCAmmo[] = {"10Rnd_93x64_DMR_05_Mag", "10Rnd_338_Mag", "10Rnd_338_Mag", "20Rnd_762x51_Mag", "10Rnd_127x54_Mag", "10Rnd_338_Mag", "20Rnd_762x51_Mag", "10Rnd_127x54_Mag", "10Rnd_93x64_DMR_05_Mag", "10Rnd_93x64_DMR_05_Mag"};

		/*
			Percental Item Spawn Chances of DLCOptics:

			optic_AMS     = 14,29%
			optic_AMS_khk = 14,29%
			optic_AMS_snd = 14,29%
			optic_KHS_blk = 14,29%
			optic_KHS_hex = 14,29%
			optic_KHS_old = 14,29%
			optic_KHS_tan = 14,29%
		*/
		DLCOptics[] = {"optic_KHS_blk", "optic_KHS_hex", "optic_KHS_old", "optic_AMS_khk", "optic_AMS", "optic_KHS_tan", "optic_AMS_snd"};

		/*
			Percental Item Spawn Chances of DLCSupressor:

			muzzle_snds_338_black = 16,67%
			muzzle_snds_338_green = 16,67%
			muzzle_snds_338_sand  = 16,67%
			muzzle_snds_93mmg     = 16,67%
			muzzle_snds_93mmg_tan = 16,67%
			muzzle_snds_B         = 16,67%
		*/
		DLCSupressor[] = {"muzzle_snds_338_black", "muzzle_snds_338_sand", "muzzle_snds_93mmg_tan", "muzzle_snds_B", "muzzle_snds_93mmg", "muzzle_snds_338_green"};

		/*
			Percental Item Spawn Chances of EpicWeapons:

			MMG_01_hex_F   = 20,00%
			MMG_01_tan_F   = 20,00%
			MMG_02_black_F = 20,00%
			MMG_02_camo_F  = 20,00%
			MMG_02_sand_F  = 20,00%
		*/
		EpicWeapons[] = {"MMG_02_black_F", "MMG_01_tan_F", "MMG_01_hex_F", "MMG_02_sand_F", "MMG_02_camo_F"};

		/*
			Percental Item Spawn Chances of Bipods:

			bipod_03_F_oli = 11,11%
			bipod_03_F_blk = 11,11%
			bipod_02_F_tan = 11,11%
			bipod_02_F_hex = 11,11%
			bipod_02_F_blk = 11,11%
			bipod_01_F_snd = 11,11%
			bipod_01_F_mtp = 11,11%
			bipod_01_F_blk = 11,11%
			bipod_01_F_khk = 11,11%
		*/
		Bipods[] = {"bipod_03_F_blk", "bipod_01_F_khk", "bipod_03_F_oli", "bipod_01_F_snd", "bipod_02_F_blk", "bipod_01_F_mtp", "bipod_02_F_hex", "bipod_01_F_blk", "bipod_02_F_tan"};

		/*
			Percental Item Spawn Chances of HEGrenades:

			3Rnd_HE_Grenade_shell = 25,00%
			1Rnd_HE_Grenade_shell = 75,00%
		*/
		HEGrenades[] = {"1Rnd_HE_Grenade_shell", "3Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell"};

		/*
			Percental Item Spawn Chances of HandGrenades:

			HandGrenade = 50,00%
			MiniGrenade = 50,00%
		*/
		HandGrenades[] = {"MiniGrenade", "HandGrenade"};

		/*
			Percental Item Spawn Chances of Explosives:

			SatchelCharge_Remote_Mag    = 5,26%
			APERSBoundingMine_Range_Mag = 15,79%
			APERSMine_Range_Mag         = 15,79%
			APERSTripMine_Wire_Mag      = 15,79%
			DemoCharge_Remote_Mag       = 15,79%
			IEDLandSmall_Remote_Mag     = 15,79%
			IEDUrbanSmall_Remote_Mag    = 15,79%
		*/
		Explosives[] = {"DemoCharge_Remote_Mag", "APERSBoundingMine_Range_Mag", "DemoCharge_Remote_Mag", "IEDLandSmall_Remote_Mag", "IEDUrbanSmall_Remote_Mag", "APERSMine_Range_Mag", "APERSTripMine_Wire_Mag", "APERSMine_Range_Mag", "IEDLandSmall_Remote_Mag", "APERSMine_Range_Mag", "IEDLandSmall_Remote_Mag", "DemoCharge_Remote_Mag", "APERSBoundingMine_Range_Mag", "APERSTripMine_Wire_Mag", "APERSBoundingMine_Range_Mag", "APERSTripMine_Wire_Mag", "SatchelCharge_Remote_Mag", "IEDUrbanSmall_Remote_Mag", "IEDUrbanSmall_Remote_Mag"};

		/*
			Percental Item Spawn Chances of CivilianItems:

			Exile_Item_MobilePhone = 2,78%
			Binocular              = 11,11%
			ItemGPS                = 11,11%
			ItemRadio              = 16,67%
			ItemWatch              = 16,67%
			ItemMap                = 19,44%
			Exile_Item_Heatpack    = 22,22%
		*/
		CivilianItems[] = {"ItemWatch", "ItemMap", "ItemMap", "ItemRadio", "Exile_Item_Heatpack", "Exile_Item_Heatpack", "Binocular", "Exile_Item_Heatpack", "Exile_Item_Heatpack", "ItemRadio", "ItemGPS", "ItemWatch", "Binocular", "ItemMap", "ItemMap", "ItemWatch", "ItemRadio", "ItemGPS", "ItemWatch", "ItemGPS", "Binocular", "ItemRadio", "ItemRadio", "ItemWatch", "Exile_Item_MobilePhone", "Exile_Item_Heatpack", "ItemRadio", "Exile_Item_Heatpack", "ItemMap", "ItemMap", "ItemMap", "ItemGPS", "ItemWatch", "Exile_Item_Heatpack", "Exile_Item_Heatpack", "Binocular"};

		/*
			Percental Item Spawn Chances of CivilianClothing:

			U_NikosAgedBody          = 0,58%
			U_NikosBody              = 0,58%
			U_OrestesBody            = 0,58%
			U_C_Man_casual_1_F       = 2,92%
			U_C_Man_casual_2_F       = 2,92%
			U_C_Man_casual_3_F       = 2,92%
			U_C_Man_casual_4_F       = 2,92%
			U_C_Man_casual_5_F       = 2,92%
			U_C_Man_casual_6_F       = 2,92%
			U_C_man_sport_1_F        = 2,92%
			U_C_man_sport_2_F        = 2,92%
			U_C_man_sport_3_F        = 2,92%
			U_I_C_Soldier_Bandit_1_F = 2,92%
			U_I_C_Soldier_Bandit_2_F = 2,92%
			U_I_C_Soldier_Bandit_3_F = 2,92%
			U_I_C_Soldier_Bandit_4_F = 2,92%
			U_I_C_Soldier_Bandit_5_F = 2,92%
			U_C_Poloshirt_blue       = 4,09%
			U_C_Poloshirt_burgundy   = 4,09%
			U_C_Poloshirt_salmon     = 4,09%
			U_C_Poloshirt_stripped   = 4,09%
			U_C_Poloshirt_tricolour  = 4,09%
			U_C_HunterBody_grn       = 5,26%
			U_C_Journalist           = 5,26%
			U_C_Poor_1               = 5,26%
			U_C_Poor_2               = 5,26%
			U_C_Poor_shorts_1        = 5,26%
			U_C_Scientist            = 5,26%
			U_Rangemaster            = 5,26%
		*/
		CivilianClothing[] = {"U_C_Poloshirt_blue", "U_OrestesBody", "U_C_Poloshirt_salmon", "U_C_Man_casual_2_F", "U_C_Poor_shorts_1", "U_C_Scientist", "U_C_man_sport_2_F", "U_C_Poor_1", "U_C_Journalist", "U_C_HunterBody_grn", "U_C_Scientist", "U_C_Man_casual_5_F", "U_Rangemaster", "U_C_Journalist", "U_C_Poloshirt_burgundy", "U_C_Poloshirt_blue", "U_C_Scientist", "U_C_Poor_2", "U_C_Man_casual_4_F", "U_C_Poloshirt_tricolour", "U_C_Poloshirt_tricolour", "U_C_Poloshirt_stripped", "U_C_Poloshirt_tricolour", "U_C_Journalist", "U_C_Poloshirt_stripped", "U_C_Poloshirt_blue", "U_C_Poor_2", "U_C_Poloshirt_salmon", "U_C_Poloshirt_stripped", "U_C_Poloshirt_burgundy", "U_C_Poloshirt_blue", "U_I_C_Soldier_Bandit_3_F", "U_I_C_Soldier_Bandit_3_F", "U_C_Man_casual_3_F", "U_I_C_Soldier_Bandit_2_F", "U_C_Scientist", "U_C_Poloshirt_stripped", "U_I_C_Soldier_Bandit_2_F", "U_I_C_Soldier_Bandit_2_F", "U_C_Poor_shorts_1", "U_NikosBody", "U_C_Man_casual_1_F", "U_C_Poor_2", "U_C_Poloshirt_salmon", "U_I_C_Soldier_Bandit_1_F", "U_C_Poloshirt_blue", "U_C_man_sport_3_F", "U_C_HunterBody_grn", "U_C_Poloshirt_stripped", "U_C_Man_casual_2_F", "U_Rangemaster", "U_C_man_sport_1_F", "U_C_Poloshirt_burgundy", "U_Rangemaster", "U_C_Man_casual_6_F", "U_C_Poor_2", "U_C_Poor_2", "U_I_C_Soldier_Bandit_1_F", "U_C_HunterBody_grn", "U_C_Scientist", "U_C_Poor_2", "U_C_Poloshirt_burgundy", "U_I_C_Soldier_Bandit_5_F", "U_I_C_Soldier_Bandit_4_F", "U_C_Poor_1", "U_C_Man_casual_2_F", "U_C_Man_casual_6_F", "U_I_C_Soldier_Bandit_5_F", "U_NikosAgedBody", "U_C_Journalist", "U_C_man_sport_2_F", "U_C_Poloshirt_tricolour", "U_C_Journalist", "U_C_man_sport_3_F", "U_Rangemaster", "U_C_Poor_1", "U_C_Man_casual_1_F", "U_C_Poloshirt_salmon", "U_I_C_Soldier_Bandit_5_F", "U_C_Scientist", "U_C_Poloshirt_burgundy", "U_C_Poor_shorts_1", "U_Rangemaster", "U_C_Poloshirt_burgundy", "U_C_Man_casual_3_F", "U_C_Poloshirt_stripped", "U_C_Man_casual_5_F", "U_I_C_Soldier_Bandit_2_F", "U_C_Poor_2", "U_C_Poor_shorts_1", "U_C_Man_casual_5_F", "U_C_Man_casual_6_F", "U_C_HunterBody_grn", "U_C_Poor_1", "U_C_man_sport_3_F", "U_C_Poloshirt_salmon", "U_C_Man_casual_5_F", "U_I_C_Soldier_Bandit_1_F", "U_C_HunterBody_grn", "U_C_Poor_shorts_1", "U_C_man_sport_3_F", "U_C_Poloshirt_salmon", "U_C_Poor_1", "U_C_Man_casual_3_F", "U_I_C_Soldier_Bandit_1_F", "U_C_Journalist", "U_C_Man_casual_4_F", "U_Rangemaster", "U_Rangemaster", "U_C_Poloshirt_tricolour", "U_C_Poloshirt_salmon", "U_C_Poloshirt_blue", "U_C_Man_casual_6_F", "U_C_Man_casual_4_F", "U_C_HunterBody_grn", "U_C_Man_casual_3_F", "U_I_C_Soldier_Bandit_3_F", "U_C_Man_casual_1_F", "U_C_Poloshirt_burgundy", "U_C_HunterBody_grn", "U_C_Scientist", "U_C_Scientist", "U_C_Poor_shorts_1", "U_C_man_sport_2_F", "U_C_Man_casual_6_F", "U_C_Man_casual_2_F", "U_C_Man_casual_1_F", "U_I_C_Soldier_Bandit_4_F", "U_C_Poloshirt_tricolour", "U_C_Man_casual_5_F", "U_Rangemaster", "U_C_Journalist", "U_C_Man_casual_3_F", "U_C_Man_casual_4_F", "U_C_Journalist", "U_C_Poor_1", "U_C_Poor_shorts_1", "U_C_Poor_1", "U_C_man_sport_1_F", "U_C_Scientist", "U_C_Poor_shorts_1", "U_C_Poloshirt_stripped", "U_I_C_Soldier_Bandit_5_F", "U_C_man_sport_2_F", "U_C_Man_casual_1_F", "U_C_Poloshirt_blue", "U_I_C_Soldier_Bandit_3_F", "U_C_man_sport_1_F", "U_C_Poloshirt_tricolour", "U_C_man_sport_2_F", "U_C_Man_casual_4_F", "U_I_C_Soldier_Bandit_4_F", "U_I_C_Soldier_Bandit_4_F", "U_C_Poor_2", "U_I_C_Soldier_Bandit_1_F", "U_I_C_Soldier_Bandit_3_F", "U_C_Poor_1", "U_I_C_Soldier_Bandit_2_F", "U_C_Man_casual_2_F", "U_C_Journalist", "U_Rangemaster", "U_C_HunterBody_grn", "U_C_Poor_2", "U_C_Poor_1", "U_C_man_sport_3_F", "U_C_Poor_shorts_1", "U_C_man_sport_1_F", "U_C_HunterBody_grn", "U_I_C_Soldier_Bandit_4_F", "U_C_man_sport_1_F", "U_I_C_Soldier_Bandit_5_F"};

		/*
			Percental Item Spawn Chances of CivilianBackpacks:

			B_Kitbag_cbr        = 6,67%
			B_Kitbag_mcamo      = 6,67%
			B_Kitbag_sgg        = 6,67%
			B_AssaultPack_blk   = 6,67%
			B_AssaultPack_cbr   = 6,67%
			B_AssaultPack_dgtl  = 6,67%
			B_AssaultPack_khk   = 6,67%
			B_AssaultPack_mcamo = 6,67%
			B_AssaultPack_rgr   = 6,67%
			B_AssaultPack_sgg   = 6,67%
			B_AssaultPack_tna_F = 6,67%
			B_HuntingBackpack   = 6,67%
			B_OutdoorPack_blu   = 6,67%
			B_OutdoorPack_tan   = 6,67%
			B_OutdoorPack_blk   = 6,67%
		*/
		CivilianBackpacks[] = {"B_Kitbag_cbr", "B_AssaultPack_tna_F", "B_AssaultPack_blk", "B_OutdoorPack_blk", "B_AssaultPack_cbr", "B_AssaultPack_rgr", "B_HuntingBackpack", "B_OutdoorPack_blu", "B_AssaultPack_mcamo", "B_OutdoorPack_tan", "B_Kitbag_sgg", "B_AssaultPack_sgg", "B_AssaultPack_khk", "B_Kitbag_mcamo", "B_AssaultPack_dgtl"};

		/*
			Percental Item Spawn Chances of CivilianVests:

			V_Press_F            = 25,00%
			V_TacVest_blk_POLICE = 25,00%
			V_Rangemaster_belt   = 50,00%
		*/
		CivilianVests[] = {"V_Rangemaster_belt", "V_Press_F", "V_Rangemaster_belt", "V_TacVest_blk_POLICE"};

		/*
			Percental Item Spawn Chances of CivilianHeadgear:

			H_Bandanna_surfer  = 5,56%
			H_Beret_blk_POLICE = 5,56%
			H_Cap_blk          = 5,56%
			H_Cap_blk_Raven    = 5,56%
			H_Cap_blu          = 5,56%
			H_Cap_grn          = 5,56%
			H_Cap_headphones   = 5,56%
			H_Cap_oli          = 5,56%
			H_Cap_press        = 5,56%
			H_Cap_red          = 5,56%
			H_Cap_tan          = 5,56%
			H_Hat_blue         = 5,56%
			H_Hat_brown        = 5,56%
			H_Hat_checker      = 5,56%
			H_Hat_grey         = 5,56%
			H_Hat_tan          = 5,56%
			H_StrawHat         = 5,56%
			H_StrawHat_dark    = 5,56%
		*/
		CivilianHeadgear[] = {"H_Bandanna_surfer", "H_Cap_blu", "H_Hat_grey", "H_Hat_checker", "H_Cap_press", "H_Cap_oli", "H_Hat_brown", "H_Cap_red", "H_Cap_blk_Raven", "H_Hat_tan", "H_Cap_blk", "H_StrawHat_dark", "H_Cap_tan", "H_Beret_blk_POLICE", "H_Hat_blue", "H_Cap_headphones", "H_StrawHat", "H_Cap_grn"};

		/*
			Percental Item Spawn Chances of GuerillaItems:

			Rangefinder        = 6,25%
			ItemCompass        = 62,50%
			NVGoggles          = 6,25%
			NVGoggles_tna_F    = 6,25%
			O_NVGoggles_ghex_F = 6,25%
			O_NVGoggles_hex_F  = 6,25%
			O_NVGoggles_urb_F  = 6,25%
		*/
		GuerillaItems[] = {"O_NVGoggles_ghex_F", "ItemCompass", "Rangefinder", "ItemCompass", "O_NVGoggles_hex_F", "ItemCompass", "ItemCompass", "ItemCompass", "ItemCompass", "ItemCompass", "NVGoggles", "ItemCompass", "NVGoggles_tna_F", "O_NVGoggles_urb_F", "ItemCompass", "ItemCompass"};

		/*
			Percental Item Spawn Chances of GuerillaClothing:

			U_I_G_resistanceLeader_F = 1,75%
			U_I_C_Soldier_Camo_F     = 5,26%
			U_I_C_Soldier_Para_1_F   = 5,26%
			U_I_C_Soldier_Para_2_F   = 5,26%
			U_I_C_Soldier_Para_3_F   = 5,26%
			U_I_C_Soldier_Para_4_F   = 5,26%
			U_I_C_Soldier_Para_5_F   = 5,26%
			U_IG_leader              = 7,02%
			U_IG_Guerilla3_1         = 8,77%
			U_IG_Guerilla3_2         = 8,77%
			U_IG_Guerilla1_1         = 10,53%
			U_IG_Guerilla2_1         = 10,53%
			U_IG_Guerilla2_2         = 10,53%
			U_IG_Guerilla2_3         = 10,53%
		*/
		GuerillaClothing[] = {"U_IG_Guerilla2_3", "U_IG_Guerilla2_3", "U_IG_Guerilla2_1", "U_IG_Guerilla2_2", "U_IG_Guerilla2_3", "U_I_C_Soldier_Para_3_F", "U_I_G_resistanceLeader_F", "U_I_C_Soldier_Para_2_F", "U_IG_leader", "U_IG_Guerilla2_1", "U_IG_Guerilla3_1", "U_I_C_Soldier_Para_2_F", "U_I_C_Soldier_Para_3_F", "U_I_C_Soldier_Para_1_F", "U_IG_Guerilla2_2", "U_IG_Guerilla1_1", "U_IG_Guerilla3_2", "U_IG_Guerilla2_1", "U_I_C_Soldier_Camo_F", "U_IG_Guerilla3_2", "U_IG_Guerilla3_1", "U_IG_Guerilla1_1", "U_I_C_Soldier_Para_4_F", "U_IG_Guerilla2_2", "U_I_C_Soldier_Para_1_F", "U_I_C_Soldier_Para_2_F", "U_I_C_Soldier_Para_5_F", "U_I_C_Soldier_Para_5_F", "U_I_C_Soldier_Para_4_F", "U_IG_leader", "U_IG_Guerilla1_1", "U_IG_Guerilla2_1", "U_IG_leader", "U_IG_Guerilla3_2", "U_I_C_Soldier_Para_1_F", "U_IG_Guerilla2_3", "U_IG_Guerilla1_1", "U_IG_Guerilla2_2", "U_IG_Guerilla2_3", "U_I_C_Soldier_Para_5_F", "U_IG_Guerilla2_3", "U_IG_leader", "U_IG_Guerilla3_2", "U_IG_Guerilla2_2", "U_IG_Guerilla2_2", "U_IG_Guerilla1_1", "U_IG_Guerilla3_1", "U_IG_Guerilla3_1", "U_I_C_Soldier_Camo_F", "U_I_C_Soldier_Para_4_F", "U_I_C_Soldier_Para_3_F", "U_IG_Guerilla3_2", "U_IG_Guerilla2_1", "U_IG_Guerilla3_1", "U_I_C_Soldier_Camo_F", "U_IG_Guerilla1_1", "U_IG_Guerilla2_1"};

		/*
			Percental Item Spawn Chances of GuerillaBackpacks:

			B_Bergen_blk               = 1,82%
			B_Bergen_mcamo             = 1,82%
			B_Bergen_rgr               = 1,82%
			B_Bergen_sgg               = 1,82%
			B_FieldPack_ghex_F         = 1,82%
			B_ViperHarness_base_F      = 3,64%
			B_ViperHarness_blk_F       = 3,64%
			B_ViperHarness_ghex_F      = 3,64%
			B_ViperHarness_hex_F       = 3,64%
			B_ViperHarness_khk_F       = 3,64%
			B_ViperHarness_oli_F       = 3,64%
			B_ViperLightHarness_base_F = 5,45%
			B_ViperLightHarness_blk_F  = 5,45%
			B_ViperLightHarness_ghex_F = 5,45%
			B_ViperLightHarness_hex_F  = 5,45%
			B_ViperLightHarness_khk_F  = 5,45%
			B_ViperLightHarness_oli_F  = 5,45%
			B_FieldPack_blk            = 9,09%
			B_FieldPack_cbr            = 9,09%
			B_FieldPack_ocamo          = 9,09%
			B_FieldPack_oucamo         = 9,09%
		*/
		GuerillaBackpacks[] = {"B_ViperLightHarness_oli_F", "B_ViperLightHarness_hex_F", "B_FieldPack_ocamo", "B_ViperLightHarness_ghex_F", "B_FieldPack_ocamo", "B_FieldPack_blk", "B_ViperHarness_khk_F", "B_ViperHarness_base_F", "B_FieldPack_oucamo", "B_ViperHarness_ghex_F", "B_FieldPack_cbr", "B_ViperHarness_blk_F", "B_FieldPack_oucamo", "B_ViperLightHarness_blk_F", "B_FieldPack_oucamo", "B_FieldPack_cbr", "B_FieldPack_blk", "B_FieldPack_ghex_F", "B_ViperLightHarness_oli_F", "B_ViperHarness_hex_F", "B_Bergen_sgg", "B_FieldPack_cbr", "B_ViperHarness_ghex_F", "B_Bergen_blk", "B_FieldPack_oucamo", "B_ViperLightHarness_khk_F", "B_ViperHarness_oli_F", "B_ViperLightHarness_blk_F", "B_FieldPack_blk", "B_ViperHarness_base_F", "B_ViperHarness_hex_F", "B_ViperLightHarness_khk_F", "B_Bergen_rgr", "B_ViperLightHarness_ghex_F", "B_ViperHarness_oli_F", "B_FieldPack_ocamo", "B_ViperLightHarness_ghex_F", "B_ViperLightHarness_blk_F", "B_ViperHarness_khk_F", "B_FieldPack_blk", "B_ViperLightHarness_oli_F", "B_Bergen_mcamo", "B_FieldPack_cbr", "B_ViperLightHarness_base_F", "B_ViperLightHarness_hex_F", "B_FieldPack_oucamo", "B_FieldPack_cbr", "B_ViperLightHarness_base_F", "B_FieldPack_blk", "B_ViperLightHarness_hex_F", "B_ViperLightHarness_base_F", "B_FieldPack_ocamo", "B_FieldPack_ocamo", "B_ViperHarness_blk_F", "B_ViperLightHarness_khk_F"};

		/*
			Percental Item Spawn Chances of GuerillaVests:

			V_I_G_resistanceLeader_F = 3,23%
			V_BandollierB_blk        = 6,45%
			V_BandollierB_cbr        = 6,45%
			V_BandollierB_khk        = 6,45%
			V_BandollierB_oli        = 6,45%
			V_BandollierB_rgr        = 6,45%
			V_Chestrig_blk           = 6,45%
			V_Chestrig_khk           = 6,45%
			V_Chestrig_oli           = 6,45%
			V_Chestrig_rgr           = 6,45%
			V_HarnessO_brn           = 6,45%
			V_HarnessO_gry           = 6,45%
			V_HarnessOGL_brn         = 6,45%
			V_HarnessOGL_gry         = 6,45%
			V_HarnessOSpec_brn       = 6,45%
			V_HarnessOSpec_gry       = 6,45%
		*/
		GuerillaVests[] = {"V_BandollierB_oli", "V_HarnessO_gry", "V_HarnessOSpec_gry", "V_Chestrig_oli", "V_HarnessO_brn", "V_Chestrig_oli", "V_BandollierB_khk", "V_HarnessO_brn", "V_HarnessO_gry", "V_Chestrig_khk", "V_BandollierB_cbr", "V_HarnessOSpec_brn", "V_BandollierB_rgr", "V_HarnessOSpec_brn", "V_BandollierB_blk", "V_HarnessOSpec_gry", "V_HarnessOGL_brn", "V_Chestrig_rgr", "V_HarnessOGL_brn", "V_Chestrig_blk", "V_BandollierB_oli", "V_BandollierB_rgr", "V_Chestrig_rgr", "V_I_G_resistanceLeader_F", "V_Chestrig_khk", "V_BandollierB_cbr", "V_Chestrig_blk", "V_HarnessOGL_gry", "V_BandollierB_blk", "V_HarnessOGL_gry", "V_BandollierB_khk"};

		/*
			Percental Item Spawn Chances of GuerillaHeadgear:

			H_Beret_02                = 0,82%
			H_Beret_blk               = 0,82%
			H_Beret_brn_SF            = 0,82%
			H_Beret_Colonel           = 0,82%
			H_Beret_grn               = 0,82%
			H_Beret_grn_SF            = 0,82%
			H_Beret_ocamo             = 0,82%
			H_Beret_red               = 0,82%
			H_Booniehat_tna_F         = 1,64%
			H_Cap_blk_Syndikat_F      = 1,64%
			H_Cap_grn_Syndikat_F      = 1,64%
			H_Cap_oli_Syndikat_F      = 1,64%
			H_Cap_tan_Syndikat_F      = 1,64%
			H_FakeHeadgear_Syndikat_F = 1,64%
			H_MilCap_gen_F            = 1,64%
			H_MilCap_ghex_F           = 1,64%
			H_MilCap_tna_F            = 1,64%
			H_Shemag_khk              = 1,64%
			H_Shemag_olive            = 1,64%
			H_Shemag_olive_hs         = 1,64%
			H_Shemag_tan              = 1,64%
			H_ShemagOpen_khk          = 1,64%
			H_ShemagOpen_tan          = 1,64%
			H_TurbanO_blk             = 1,64%
			H_Watchcap_camo           = 1,64%
			H_Watchcap_sgg            = 1,64%
			H_Bandanna_camo           = 2,46%
			H_Bandanna_cbr            = 2,46%
			H_Bandanna_gry            = 2,46%
			H_Bandanna_khk            = 2,46%
			H_Bandanna_khk_hs         = 2,46%
			H_Bandanna_mcamo          = 2,46%
			H_Bandanna_sgg            = 2,46%
			H_BandMask_blk            = 2,46%
			H_Cap_brn_SPECOPS         = 2,46%
			H_Cap_khaki_specops_UK    = 2,46%
			H_Cap_tan_specops_US      = 2,46%
			H_Hat_camo                = 2,46%
			H_Watchcap_blk            = 2,46%
			H_Watchcap_khk            = 2,46%
			Exile_Headgear_GasMask    = 3,28%
			H_Booniehat_dgtl          = 3,28%
			H_Booniehat_dirty         = 3,28%
			H_Booniehat_grn           = 3,28%
			H_Booniehat_indp          = 3,28%
			H_Booniehat_khk           = 3,28%
			H_Booniehat_khk_hs        = 3,28%
			H_Booniehat_mcamo         = 3,28%
			H_Booniehat_tan           = 3,28%
		*/
		GuerillaHeadgear[] = {"H_Booniehat_khk_hs", "H_Beret_02", "H_Cap_tan_Syndikat_F", "H_Cap_tan_specops_US", "H_Watchcap_khk", "H_Cap_tan_specops_US", "H_Bandanna_khk", "H_Booniehat_dgtl", "H_Booniehat_mcamo", "H_Cap_grn_Syndikat_F", "H_Watchcap_khk", "H_Bandanna_cbr", "H_Cap_oli_Syndikat_F", "H_Beret_blk", "H_Cap_brn_SPECOPS", "H_Booniehat_khk", "H_Beret_grn", "H_Shemag_olive_hs", "H_Bandanna_khk_hs", "H_MilCap_ghex_F", "H_Booniehat_mcamo", "H_BandMask_blk", "H_Booniehat_dgtl", "H_Shemag_tan", "H_Bandanna_camo", "H_Bandanna_gry", "H_ShemagOpen_khk", "H_ShemagOpen_tan", "H_Watchcap_camo", "H_Watchcap_camo", "H_Booniehat_tna_F", "H_Booniehat_dirty", "H_Booniehat_tan", "H_Hat_camo", "H_Beret_ocamo", "H_MilCap_tna_F", "H_Cap_khaki_specops_UK", "H_Shemag_olive", "H_Bandanna_cbr", "H_Watchcap_blk", "H_Shemag_olive", "H_Cap_grn_Syndikat_F", "H_Beret_red", "H_Bandanna_khk_hs", "H_Bandanna_camo", "H_Hat_camo", "H_Booniehat_indp", "H_Bandanna_camo", "H_Bandanna_mcamo", "H_BandMask_blk", "H_Booniehat_indp", "H_Booniehat_khk", "H_Shemag_olive_hs", "H_Cap_brn_SPECOPS", "Exile_Headgear_GasMask", "H_Cap_khaki_specops_UK", "H_Bandanna_khk", "H_Booniehat_khk_hs", "H_Booniehat_mcamo", "H_Bandanna_sgg", "H_Bandanna_gry", "H_TurbanO_blk", "H_Bandanna_cbr", "H_Bandanna_sgg", "H_Booniehat_khk", "H_ShemagOpen_khk", "H_Booniehat_dirty", "H_Shemag_tan", "H_Beret_Colonel", "H_ShemagOpen_tan", "H_FakeHeadgear_Syndikat_F", "H_MilCap_tna_F", "H_Watchcap_blk", "H_Cap_blk_Syndikat_F", "H_Booniehat_indp", "H_Booniehat_khk_hs", "H_Booniehat_khk_hs", "H_Booniehat_mcamo", "H_Cap_tan_Syndikat_F", "H_Booniehat_khk", "H_Booniehat_dgtl", "H_Bandanna_sgg", "H_Watchcap_sgg", "H_MilCap_ghex_F", "H_Watchcap_blk", "H_Cap_blk_Syndikat_F", "H_Bandanna_mcamo", "H_Booniehat_dirty", "H_Shemag_khk", "H_MilCap_gen_F", "H_Booniehat_indp", "H_Booniehat_tan", "H_Booniehat_tna_F", "Exile_Headgear_GasMask", "H_Booniehat_grn", "H_Cap_brn_SPECOPS", "H_Booniehat_dirty", "H_Booniehat_tan", "H_Bandanna_mcamo", "H_MilCap_gen_F", "H_Cap_khaki_specops_UK", "H_Booniehat_grn", "H_Cap_tan_specops_US", "H_Watchcap_khk", "H_Booniehat_grn", "H_Beret_brn_SF", "H_Watchcap_sgg", "H_Shemag_khk", "H_Cap_oli_Syndikat_F", "H_Bandanna_khk", "H_Bandanna_gry", "H_FakeHeadgear_Syndikat_F", "H_BandMask_blk", "Exile_Headgear_GasMask", "H_Booniehat_grn", "H_Booniehat_tan", "H_TurbanO_blk", "H_Booniehat_dgtl", "H_Beret_grn_SF", "H_Bandanna_khk_hs", "Exile_Headgear_GasMask", "H_Hat_camo"};

		/*
			Percental Item Spawn Chances of MilitaryClothing:

			U_B_Wetsuit                   = 1,32%
			U_I_OfficerUniform            = 1,32%
			U_I_Wetsuit                   = 1,32%
			U_O_CombatUniform_ocamo       = 1,32%
			U_O_CombatUniform_oucamo      = 1,32%
			U_O_OfficerUniform_ocamo      = 1,32%
			U_O_SpecopsUniform_blk        = 1,32%
			U_O_SpecopsUniform_ocamo      = 1,32%
			U_O_V_Soldier_Viper_F         = 1,32%
			U_O_V_Soldier_Viper_hex_F     = 1,32%
			U_O_Wetsuit                   = 1,32%
			U_B_SpecopsUniform_sgg        = 1,97%
			U_B_HeliPilotCoveralls        = 2,63%
			U_B_PilotCoveralls            = 2,63%
			U_I_CombatUniform             = 2,63%
			U_I_CombatUniform_shortsleeve = 2,63%
			U_I_CombatUniform_tshirt      = 2,63%
			U_I_HeliPilotCoveralls        = 2,63%
			U_I_pilotCoveralls            = 2,63%
			U_O_PilotCoveralls            = 2,63%
			U_B_CombatUniform_mcam        = 3,29%
			U_B_CombatUniform_mcam_tshirt = 3,29%
			U_B_CombatUniform_mcam_vest   = 3,29%
			U_B_CombatUniform_mcam_worn   = 3,29%
			U_B_CTRG_1                    = 3,29%
			U_B_CTRG_2                    = 3,29%
			U_B_CTRG_3                    = 3,29%
			U_B_CTRG_Soldier_2_F          = 3,29%
			U_B_CTRG_Soldier_3_F          = 3,29%
			U_B_CTRG_Soldier_F            = 3,29%
			U_B_CTRG_Soldier_urb_1_F      = 3,29%
			U_B_CTRG_Soldier_urb_2_F      = 3,29%
			U_B_CTRG_Soldier_urb_3_F      = 3,29%
			U_B_GEN_Commander_F           = 3,29%
			U_B_GEN_Soldier_F             = 3,29%
			U_B_T_Soldier_AR_F            = 3,29%
			U_B_T_Soldier_SL_F            = 3,29%
			U_O_T_Officer_F               = 3,29%
			U_O_T_Soldier_F               = 3,29%
		*/
		MilitaryClothing[] = {"U_I_pilotCoveralls", "U_B_CTRG_Soldier_urb_3_F", "U_B_CTRG_Soldier_urb_1_F", "U_B_CTRG_Soldier_urb_2_F", "U_B_CombatUniform_mcam_worn", "U_O_V_Soldier_Viper_F", "U_B_CTRG_3", "U_B_CombatUniform_mcam_tshirt", "U_O_SpecopsUniform_blk", "U_O_PilotCoveralls", "U_B_CTRG_3", "U_B_T_Soldier_SL_F", "U_B_CTRG_Soldier_F", "U_B_CTRG_2", "U_B_CombatUniform_mcam_worn", "U_B_CTRG_Soldier_urb_1_F", "U_B_HeliPilotCoveralls", "U_B_GEN_Commander_F", "U_B_CTRG_Soldier_3_F", "U_B_CTRG_Soldier_F", "U_B_CTRG_Soldier_urb_3_F", "U_B_GEN_Commander_F", "U_B_CTRG_Soldier_2_F", "U_B_Wetsuit", "U_B_GEN_Soldier_F", "U_B_CTRG_Soldier_3_F", "U_I_pilotCoveralls", "U_O_T_Soldier_F", "U_B_T_Soldier_AR_F", "U_B_HeliPilotCoveralls", "U_I_HeliPilotCoveralls", "U_B_GEN_Commander_F", "U_B_T_Soldier_SL_F", "U_B_T_Soldier_AR_F", "U_B_CTRG_Soldier_urb_2_F", "U_B_CombatUniform_mcam_tshirt", "U_B_CombatUniform_mcam_worn", "U_I_CombatUniform_shortsleeve", "U_B_T_Soldier_AR_F", "U_B_HeliPilotCoveralls", "U_B_HeliPilotCoveralls", "U_B_CTRG_1", "U_O_CombatUniform_ocamo", "U_B_CTRG_Soldier_F", "U_O_CombatUniform_oucamo", "U_B_PilotCoveralls", "U_B_PilotCoveralls", "U_B_CTRG_Soldier_urb_3_F", "U_I_CombatUniform_shortsleeve", "U_B_CTRG_Soldier_urb_3_F", "U_O_T_Officer_F", "U_O_V_Soldier_Viper_hex_F", "U_B_CTRG_2", "U_B_CTRG_Soldier_urb_1_F", "U_B_GEN_Commander_F", "U_B_SpecopsUniform_sgg", "U_B_CombatUniform_mcam_vest", "U_B_CTRG_2", "U_B_PilotCoveralls", "U_B_SpecopsUniform_sgg", "U_B_T_Soldier_AR_F", "U_B_CTRG_Soldier_3_F", "U_I_HeliPilotCoveralls", "U_B_CTRG_Soldier_3_F", "U_O_PilotCoveralls", "U_B_GEN_Soldier_F", "U_B_CTRG_Soldier_urb_2_F", "U_O_CombatUniform_oucamo", "U_B_GEN_Soldier_F", "U_B_CTRG_Soldier_F", "U_O_T_Officer_F", "U_B_CTRG_Soldier_urb_2_F", "U_I_CombatUniform", "U_B_CTRG_3", "U_I_pilotCoveralls", "U_I_Wetsuit", "U_I_HeliPilotCoveralls", "U_B_CTRG_2", "U_B_CTRG_Soldier_urb_2_F", "U_B_CombatUniform_mcam_tshirt", "U_B_CombatUniform_mcam", "U_B_T_Soldier_SL_F", "U_B_CTRG_Soldier_2_F", "U_B_CombatUniform_mcam_vest", "U_I_pilotCoveralls", "U_B_CombatUniform_mcam_tshirt", "U_B_T_Soldier_SL_F", "U_O_PilotCoveralls", "U_I_CombatUniform_tshirt", "U_I_CombatUniform", "U_B_T_Soldier_AR_F", "U_B_CTRG_Soldier_2_F", "U_B_CombatUniform_mcam_vest", "U_B_CombatUniform_mcam_worn", "U_O_T_Officer_F", "U_B_CTRG_Soldier_F", "U_B_CTRG_3", "U_B_CTRG_1", "U_B_CTRG_1", "U_I_CombatUniform_tshirt", "U_I_HeliPilotCoveralls", "U_I_CombatUniform_tshirt", "U_B_CTRG_2", "U_B_GEN_Soldier_F", "U_I_CombatUniform", "U_B_CTRG_Soldier_urb_1_F", "U_O_SpecopsUniform_ocamo", "U_B_CTRG_Soldier_urb_1_F", "U_I_CombatUniform_shortsleeve", "U_I_Wetsuit", "U_B_CTRG_3", "U_I_CombatUniform_shortsleeve", "U_B_SpecopsUniform_sgg", "U_O_T_Officer_F", "U_O_Wetsuit", "U_O_Wetsuit", "U_B_GEN_Soldier_F", "U_B_CTRG_1", "U_B_CombatUniform_mcam", "U_B_CombatUniform_mcam_worn", "U_B_CTRG_Soldier_2_F", "U_B_CTRG_Soldier_2_F", "U_O_T_Soldier_F", "U_B_Wetsuit", "U_O_T_Soldier_F", "U_O_V_Soldier_Viper_hex_F", "U_I_CombatUniform", "U_B_CTRG_1", "U_I_CombatUniform_tshirt", "U_O_T_Officer_F", "U_B_T_Soldier_SL_F", "U_O_T_Soldier_F", "U_O_V_Soldier_Viper_F", "U_B_CombatUniform_mcam_tshirt", "U_O_OfficerUniform_ocamo", "U_B_GEN_Commander_F", "U_O_OfficerUniform_ocamo", "U_B_CTRG_Soldier_urb_3_F", "U_B_CombatUniform_mcam_vest", "U_O_SpecopsUniform_ocamo", "U_O_PilotCoveralls", "U_B_CTRG_Soldier_3_F", "U_B_CombatUniform_mcam", "U_O_CombatUniform_ocamo", "U_B_CombatUniform_mcam", "U_B_PilotCoveralls", "U_O_SpecopsUniform_blk", "U_I_OfficerUniform", "U_O_T_Soldier_F", "U_B_CombatUniform_mcam_vest", "U_B_CombatUniform_mcam", "U_I_OfficerUniform"};

		/*
			Percental Item Spawn Chances of MilitaryBackpacks:

			B_Bergen_Base_F   = 5,26%
			B_Bergen_dgtl_F   = 5,26%
			B_Bergen_hex_F    = 5,26%
			B_Bergen_mcamo_F  = 5,26%
			B_Bergen_tna_F    = 5,26%
			B_Carryall_mcamo  = 10,53%
			B_Carryall_ocamo  = 10,53%
			B_Carryall_oucamo = 10,53%
			B_Carryall_khk    = 10,53%
			B_Carryall_oli    = 10,53%
			B_Carryall_cbr    = 10,53%
			B_Carryall_ghex_F = 10,53%
		*/
		MilitaryBackpacks[] = {"B_Carryall_khk", "B_Carryall_oli", "B_Carryall_oucamo", "B_Bergen_hex_F", "B_Carryall_khk", "B_Carryall_oli", "B_Carryall_ocamo", "B_Bergen_dgtl_F", "B_Carryall_oucamo", "B_Bergen_mcamo_F", "B_Bergen_Base_F", "B_Carryall_cbr", "B_Carryall_ghex_F", "B_Carryall_cbr", "B_Carryall_mcamo", "B_Carryall_mcamo", "B_Carryall_ocamo", "B_Carryall_ghex_F", "B_Bergen_tna_F"};

		/*
			Percental Item Spawn Chances of MilitaryVests:

			V_PlateCarrierH_CTRG    = 5,00%
			V_PlateCarrierL_CTRG    = 5,00%
			V_PlateCarrier1_blk     = 10,00%
			V_PlateCarrier1_rgr     = 10,00%
			V_PlateCarrier2_rgr     = 10,00%
			V_PlateCarrier3_rgr     = 10,00%
			V_PlateCarrierGL_rgr    = 10,00%
			V_PlateCarrierIA1_dgtl  = 10,00%
			V_PlateCarrierIA2_dgtl  = 10,00%
			V_PlateCarrierIAGL_dgtl = 10,00%
			V_PlateCarrierSpec_rgr  = 10,00%
		*/
		MilitaryVests[] = {"V_PlateCarrier2_rgr", "V_PlateCarrierIAGL_dgtl", "V_PlateCarrier3_rgr", "V_PlateCarrierGL_rgr", "V_PlateCarrierIAGL_dgtl", "V_PlateCarrier1_rgr", "V_PlateCarrierSpec_rgr", "V_PlateCarrierGL_rgr", "V_PlateCarrier1_rgr", "V_PlateCarrierH_CTRG", "V_PlateCarrierIA1_dgtl", "V_PlateCarrierSpec_rgr", "V_PlateCarrier1_blk", "V_PlateCarrier2_rgr", "V_PlateCarrier3_rgr", "V_PlateCarrierIA1_dgtl", "V_PlateCarrierIA2_dgtl", "V_PlateCarrierL_CTRG", "V_PlateCarrierIA2_dgtl", "V_PlateCarrier1_blk"};

		/*
			Percental Item Spawn Chances of MilitaryHeadgear:

			H_CrewHelmetHeli_B        = 0,81%
			H_CrewHelmetHeli_I        = 0,81%
			H_CrewHelmetHeli_O        = 0,81%
			H_HelmetB_camo            = 0,81%
			H_HelmetCrew_B            = 0,81%
			H_HelmetCrew_I            = 0,81%
			H_HelmetCrew_O            = 0,81%
			H_HelmetLeaderO_ocamo     = 0,81%
			H_HelmetLeaderO_oucamo    = 0,81%
			H_HelmetO_ghex_F          = 0,81%
			H_HelmetO_ocamo           = 0,81%
			H_HelmetO_oucamo          = 0,81%
			H_HelmetSpecO_blk         = 0,81%
			H_HelmetSpecO_ocamo       = 0,81%
			H_PilotHelmetFighter_B    = 0,81%
			H_PilotHelmetFighter_I    = 0,81%
			H_PilotHelmetFighter_O    = 0,81%
			H_PilotHelmetHeli_B       = 0,81%
			H_PilotHelmetHeli_I       = 0,81%
			H_PilotHelmetHeli_O       = 0,81%
			H_BandMask_demon          = 1,63%
			H_BandMask_khk            = 1,63%
			H_BandMask_reaper         = 1,63%
			H_Beret_gen_F             = 1,63%
			H_Helmet_Skate            = 1,63%
			H_HelmetB_black           = 1,63%
			H_HelmetB_desert          = 1,63%
			H_HelmetB_Enh_tna_F       = 1,63%
			H_HelmetB_grass           = 1,63%
			H_HelmetB_light_black     = 1,63%
			H_HelmetB_light_desert    = 1,63%
			H_HelmetB_light_grass     = 1,63%
			H_HelmetB_light_sand      = 1,63%
			H_HelmetB_light_snakeskin = 1,63%
			H_HelmetB_Light_tna_F     = 1,63%
			H_HelmetB_sand            = 1,63%
			H_HelmetB_snakeskin       = 1,63%
			H_HelmetB_TI_tna_F        = 1,63%
			H_HelmetB_tna_F           = 1,63%
			H_HelmetCrew_O_ghex_F     = 1,63%
			H_HelmetIA_camo           = 1,63%
			H_HelmetIA_net            = 1,63%
			H_HelmetLeaderO_ghex_F    = 1,63%
			H_HelmetSpecO_ghex_F      = 1,63%
			H_HelmetB                 = 2,44%
			H_HelmetB_light           = 2,44%
			H_HelmetB_paint           = 2,44%
			H_HelmetB_plain_blk       = 2,44%
			H_HelmetIA                = 2,44%
			H_HelmetSpecB             = 2,44%
			H_HelmetSpecB_blk         = 2,44%
			H_HelmetSpecB_paint1      = 2,44%
			H_HelmetSpecB_paint2      = 2,44%
			Exile_Headgear_GasMask    = 3,25%
			H_MilCap_blue             = 3,25%
			H_MilCap_dgtl             = 3,25%
			H_MilCap_mcamo            = 3,25%
			H_MilCap_ocamo            = 3,25%
			H_MilCap_oucamo           = 3,25%
			H_MilCap_rucamo           = 3,25%
		*/
		MilitaryHeadgear[] = {"H_Helmet_Skate", "H_PilotHelmetFighter_I", "H_HelmetB_light_sand", "H_HelmetB", "H_MilCap_oucamo", "H_HelmetIA", "H_HelmetB_black", "H_HelmetSpecB", "H_HelmetSpecB", "H_HelmetB_Enh_tna_F", "H_HelmetB_plain_blk", "H_MilCap_oucamo", "H_HelmetSpecB_paint1", "H_HelmetB_light", "H_HelmetB_camo", "H_HelmetSpecB_blk", "H_HelmetLeaderO_oucamo", "H_HelmetB_light_sand", "H_HelmetLeaderO_ocamo", "H_HelmetSpecB_paint2", "H_HelmetB_light_grass", "H_HelmetSpecO_ocamo", "H_HelmetB", "H_MilCap_blue", "H_HelmetB_snakeskin", "H_HelmetB_sand", "H_HelmetB_desert", "H_HelmetB_plain_blk", "H_MilCap_ocamo", "H_HelmetLeaderO_ghex_F", "H_HelmetB_light", "H_HelmetSpecO_ghex_F", "H_HelmetIA_camo", "H_BandMask_demon", "H_MilCap_dgtl", "H_MilCap_blue", "H_HelmetIA_net", "H_HelmetB_snakeskin", "H_MilCap_dgtl", "Exile_Headgear_GasMask", "H_HelmetSpecB_blk", "H_PilotHelmetFighter_B", "H_HelmetB_Light_tna_F", "H_HelmetSpecB_paint2", "H_PilotHelmetHeli_B", "H_HelmetB_light_snakeskin", "H_HelmetB_TI_tna_F", "H_Beret_gen_F", "H_HelmetIA", "H_HelmetB_tna_F", "H_HelmetB_paint", "H_HelmetB_paint", "H_HelmetB_desert", "H_MilCap_rucamo", "H_PilotHelmetHeli_O", "H_MilCap_mcamo", "H_BandMask_khk", "H_HelmetB_Enh_tna_F", "H_HelmetB_light", "H_HelmetB_light_black", "H_HelmetCrew_I", "H_CrewHelmetHeli_B", "H_HelmetLeaderO_ghex_F", "H_HelmetB_black", "H_HelmetB_plain_blk", "H_HelmetB_light_desert", "H_MilCap_rucamo", "H_BandMask_demon", "H_HelmetB_light_snakeskin", "H_HelmetCrew_O_ghex_F", "H_HelmetB_light_grass", "H_HelmetB_paint", "H_HelmetSpecB_blk", "H_CrewHelmetHeli_I", "H_HelmetSpecB_paint2", "H_PilotHelmetFighter_O", "H_HelmetCrew_O_ghex_F", "H_HelmetB_sand", "H_HelmetB_tna_F", "H_MilCap_ocamo", "H_HelmetB_light_black", "H_BandMask_khk", "H_HelmetIA_net", "H_MilCap_mcamo", "H_CrewHelmetHeli_O", "H_HelmetB", "H_MilCap_dgtl", "H_HelmetB_Light_tna_F", "H_MilCap_rucamo", "Exile_Headgear_GasMask", "H_HelmetO_oucamo", "H_MilCap_blue", "H_MilCap_blue", "H_MilCap_mcamo", "H_BandMask_reaper", "H_HelmetO_ghex_F", "Exile_Headgear_GasMask", "H_HelmetB_TI_tna_F", "H_PilotHelmetHeli_I", "H_HelmetO_ocamo", "H_MilCap_oucamo", "H_HelmetSpecB_paint1", "H_HelmetSpecB", "H_MilCap_rucamo", "H_MilCap_mcamo", "H_MilCap_dgtl", "H_HelmetB_grass", "H_HelmetCrew_O", "Exile_Headgear_GasMask", "H_Helmet_Skate", "H_MilCap_ocamo", "H_HelmetIA_camo", "H_HelmetSpecO_ghex_F", "H_HelmetB_grass", "H_MilCap_ocamo", "H_HelmetB_light_desert", "H_HelmetSpecO_blk", "H_Beret_gen_F", "H_HelmetCrew_B", "H_MilCap_oucamo", "H_HelmetSpecB_paint1", "H_HelmetIA", "H_BandMask_reaper"};

		/*
			Percental Item Spawn Chances of Ghillies:

			U_B_GhillieSuit = 33,33%
			U_O_GhillieSuit = 33,33%
			U_I_GhillieSuit = 33,33%
		*/
		Ghillies[] = {"U_B_GhillieSuit", "U_I_GhillieSuit", "U_O_GhillieSuit"};

		/*
			Percental Item Spawn Chances of DLCGhillies:

			U_B_FullGhillie_ard     = 2,94%
			U_B_FullGhillie_lsh     = 2,94%
			U_B_FullGhillie_sard    = 2,94%
			U_O_FullGhillie_ard     = 2,94%
			U_O_FullGhillie_lsh     = 2,94%
			U_O_FullGhillie_sard    = 2,94%
			U_I_FullGhillie_ard     = 2,94%
			U_I_FullGhillie_lsh     = 2,94%
			U_I_FullGhillie_sard    = 2,94%
			U_B_T_Sniper_F          = 14,71%
			U_B_T_Soldier_F         = 14,71%
			U_B_T_FullGhillie_tna_F = 14,71%
			U_O_T_Sniper_F          = 14,71%
			U_O_T_FullGhillie_tna_F = 14,71%
		*/
		DLCGhillies[] = {"U_O_FullGhillie_lsh", "U_B_T_Sniper_F", "U_B_T_Soldier_F", "U_O_T_Sniper_F", "U_B_FullGhillie_lsh", "U_O_T_FullGhillie_tna_F", "U_B_T_Sniper_F", "U_B_T_FullGhillie_tna_F", "U_B_T_Sniper_F", "U_B_T_FullGhillie_tna_F", "U_I_FullGhillie_sard", "U_O_T_FullGhillie_tna_F", "U_B_FullGhillie_sard", "U_B_T_Sniper_F", "U_O_FullGhillie_sard", "U_B_FullGhillie_ard", "U_O_T_FullGhillie_tna_F", "U_B_T_FullGhillie_tna_F", "U_O_T_Sniper_F", "U_B_T_Soldier_F", "U_B_T_Soldier_F", "U_O_T_Sniper_F", "U_O_FullGhillie_ard", "U_I_FullGhillie_lsh", "U_O_T_FullGhillie_tna_F", "U_B_T_Soldier_F", "U_O_T_FullGhillie_tna_F", "U_B_T_Sniper_F", "U_O_T_Sniper_F", "U_B_T_FullGhillie_tna_F", "U_B_T_FullGhillie_tna_F", "U_B_T_Soldier_F", "U_O_T_Sniper_F", "U_I_FullGhillie_ard"};

		/*
			Percental Item Spawn Chances of DLCVests:

			V_PlateCarrierGL_blk         = 4,76%
			V_PlateCarrierGL_mtp         = 4,76%
			V_PlateCarrierGL_rgr         = 4,76%
			V_PlateCarrierIAGL_dgtl      = 4,76%
			V_PlateCarrierIAGL_oli       = 4,76%
			V_PlateCarrierSpec_blk       = 4,76%
			V_PlateCarrierSpec_mtp       = 4,76%
			V_PlateCarrierSpec_rgr       = 4,76%
			V_TacChestrig_grn_F          = 4,76%
			V_TacChestrig_oli_F          = 4,76%
			V_TacChestrig_cbr_F          = 4,76%
			V_PlateCarrier1_tna_F        = 4,76%
			V_PlateCarrier2_tna_F        = 4,76%
			V_PlateCarrierSpec_tna_F     = 4,76%
			V_PlateCarrierGL_tna_F       = 4,76%
			V_HarnessO_ghex_F            = 4,76%
			V_HarnessOGL_ghex_F          = 4,76%
			V_BandollierB_ghex_F         = 4,76%
			V_TacVest_gen_F              = 4,76%
			V_PlateCarrier1_rgr_noflag_F = 4,76%
			V_PlateCarrier2_rgr_noflag_F = 4,76%
		*/
		DLCVests[] = {"V_PlateCarrierGL_mtp", "V_PlateCarrier1_rgr_noflag_F", "V_PlateCarrierSpec_rgr", "V_PlateCarrier2_rgr_noflag_F", "V_PlateCarrierGL_blk", "V_PlateCarrierGL_tna_F", "V_HarnessOGL_ghex_F", "V_PlateCarrierSpec_mtp", "V_PlateCarrier1_tna_F", "V_TacVest_gen_F", "V_PlateCarrierSpec_tna_F", "V_HarnessO_ghex_F", "V_PlateCarrierIAGL_dgtl", "V_TacChestrig_cbr_F", "V_PlateCarrierSpec_blk", "V_PlateCarrierIAGL_oli", "V_PlateCarrier2_tna_F", "V_TacChestrig_grn_F", "V_TacChestrig_oli_F", "V_BandollierB_ghex_F", "V_PlateCarrierGL_rgr"};

		/*
			Percental Item Spawn Chances of Rebreathers:

			V_RebreatherB  = 33,33%
			V_RebreatherIR = 33,33%
			V_RebreatherIA = 33,33%
		*/
		Rebreathers[] = {"V_RebreatherIR", "V_RebreatherIA", "V_RebreatherB"};

		/*
			Percental Item Spawn Chances of MedicalItems:

			Exile_Item_InstaDoc  = 9,09%
			Exile_Item_Bandage   = 18,18%
			Exile_Item_Vishpirin = 36,36%
			Exile_Item_Heatpack  = 36,36%
		*/
		MedicalItems[] = {"Exile_Item_Bandage", "Exile_Item_Heatpack", "Exile_Item_Vishpirin", "Exile_Item_Vishpirin", "Exile_Item_InstaDoc", "Exile_Item_Bandage", "Exile_Item_Heatpack", "Exile_Item_Heatpack", "Exile_Item_Vishpirin", "Exile_Item_Vishpirin", "Exile_Item_Heatpack"};

		/*
			Percental Item Spawn Chances of IndustrialItems:

			Exile_Item_ThermalScannerPro    = 0,66%
			Exile_Item_Knife                = 1,32%
			Exile_Item_Cement               = 1,97%
			Exile_Item_FloodLightKit        = 1,97%
			Exile_Item_PortableGeneratorKit = 1,97%
			Exile_Item_CamoTentKit          = 2,63%
			Exile_Item_MetalBoard           = 2,63%
			Exile_Item_Foolbox              = 2,63%
			Exile_Item_Sand                 = 2,63%
			Exile_Item_Grinder              = 3,29%
			Exile_Item_MetalScrews          = 3,29%
			Exile_Melee_SledgeHammer        = 3,29%
			Exile_Item_ExtensionCord        = 5,26%
			Exile_Item_LightBulb            = 5,92%
			Exile_Item_WaterCanisterEmpty   = 6,58%
			Exile_Melee_Shovel              = 6,58%
			Exile_Item_JunkMetal            = 7,24%
			Exile_Item_Handsaw              = 8,55%
			Exile_Item_Pliers               = 8,55%
			Exile_Item_ScrewDriver          = 8,55%
			Exile_Melee_Axe                 = 14,47%
		*/
		IndustrialItems[] = {"Exile_Item_Pliers", "Exile_Melee_SledgeHammer", "Exile_Item_MetalScrews", "Exile_Item_ExtensionCord", "Exile_Item_JunkMetal", "Exile_Melee_Axe", "Exile_Melee_Axe", "Exile_Item_JunkMetal", "Exile_Item_Handsaw", "Exile_Item_MetalBoard", "Exile_Item_Handsaw", "Exile_Melee_Axe", "Exile_Item_ScrewDriver", "Exile_Item_Sand", "Exile_Item_CamoTentKit", "Exile_Melee_Shovel", "Exile_Item_LightBulb", "Exile_Item_MetalBoard", "Exile_Melee_Axe", "Exile_Item_JunkMetal", "Exile_Melee_Axe", "Exile_Item_JunkMetal", "Exile_Melee_Shovel", "Exile_Item_LightBulb", "Exile_Item_FloodLightKit", "Exile_Item_Handsaw", "Exile_Item_FloodLightKit", "Exile_Item_JunkMetal", "Exile_Item_ScrewDriver", "Exile_Melee_Axe", "Exile_Item_Pliers", "Exile_Melee_Axe", "Exile_Item_Handsaw", "Exile_Melee_Axe", "Exile_Item_Pliers", "Exile_Item_Knife", "Exile_Item_MetalBoard", "Exile_Item_WaterCanisterEmpty", "Exile_Item_ScrewDriver", "Exile_Item_MetalScrews", "Exile_Item_Pliers", "Exile_Item_WaterCanisterEmpty", "Exile_Item_Grinder", "Exile_Item_Cement", "Exile_Melee_Axe", "Exile_Item_Handsaw", "Exile_Item_WaterCanisterEmpty", "Exile_Item_Grinder", "Exile_Melee_Axe", "Exile_Melee_Axe", "Exile_Melee_Axe", "Exile_Item_LightBulb", "Exile_Melee_Shovel", "Exile_Melee_SledgeHammer", "Exile_Item_Pliers", "Exile_Melee_Shovel", "Exile_Item_ExtensionCord", "Exile_Item_CamoTentKit", "Exile_Item_WaterCanisterEmpty", "Exile_Item_ExtensionCord", "Exile_Item_ScrewDriver", "Exile_Item_ScrewDriver", "Exile_Item_Sand", "Exile_Item_Foolbox", "Exile_Item_Handsaw", "Exile_Item_ExtensionCord", "Exile_Item_PortableGeneratorKit", "Exile_Melee_Axe", "Exile_Item_PortableGeneratorKit", "Exile_Item_Sand", "Exile_Item_ThermalScannerPro", "Exile_Item_ScrewDriver", "Exile_Melee_Axe", "Exile_Item_Handsaw", "Exile_Item_CamoTentKit", "Exile_Melee_Axe", "Exile_Item_Handsaw", "Exile_Item_Pliers", "Exile_Item_Cement", "Exile_Item_WaterCanisterEmpty", "Exile_Melee_Axe", "Exile_Item_MetalScrews", "Exile_Item_ScrewDriver", "Exile_Item_Foolbox", "Exile_Item_Pliers", "Exile_Item_Pliers", "Exile_Item_ScrewDriver", "Exile_Melee_Shovel", "Exile_Item_WaterCanisterEmpty", "Exile_Item_JunkMetal", "Exile_Melee_SledgeHammer", "Exile_Item_ExtensionCord", "Exile_Item_Pliers", "Exile_Item_Handsaw", "Exile_Melee_Axe", "Exile_Item_Grinder", "Exile_Melee_Axe", "Exile_Item_Foolbox", "Exile_Item_LightBulb", "Exile_Item_JunkMetal", "Exile_Item_WaterCanisterEmpty", "Exile_Item_Pliers", "Exile_Item_PortableGeneratorKit", "Exile_Item_ExtensionCord", "Exile_Item_JunkMetal", "Exile_Item_ScrewDriver", "Exile_Item_CamoTentKit", "Exile_Item_WaterCanisterEmpty", "Exile_Item_WaterCanisterEmpty", "Exile_Item_ExtensionCord", "Exile_Item_WaterCanisterEmpty", "Exile_Item_Grinder", "Exile_Item_JunkMetal", "Exile_Melee_Shovel", "Exile_Item_JunkMetal", "Exile_Item_LightBulb", "Exile_Melee_SledgeHammer", "Exile_Melee_Shovel", "Exile_Melee_Shovel", "Exile_Item_Cement", "Exile_Melee_Shovel", "Exile_Item_Handsaw", "Exile_Item_Knife", "Exile_Item_MetalScrews", "Exile_Item_ScrewDriver", "Exile_Item_Handsaw", "Exile_Item_Sand", "Exile_Item_Pliers", "Exile_Item_FloodLightKit", "Exile_Item_Pliers", "Exile_Melee_Axe", "Exile_Item_MetalBoard", "Exile_Item_Handsaw", "Exile_Item_Pliers", "Exile_Melee_Axe", "Exile_Melee_Axe", "Exile_Melee_Axe", "Exile_Item_LightBulb", "Exile_Item_ScrewDriver", "Exile_Melee_Shovel", "Exile_Item_ScrewDriver", "Exile_Item_LightBulb", "Exile_Item_JunkMetal", "Exile_Item_Handsaw", "Exile_Item_Grinder", "Exile_Melee_SledgeHammer", "Exile_Item_ExtensionCord", "Exile_Item_LightBulb", "Exile_Item_ScrewDriver", "Exile_Item_LightBulb", "Exile_Item_Foolbox", "Exile_Item_MetalScrews"};

		/*
			Percental Item Spawn Chances of Vehicle:

			Exile_Item_FuelCanisterFull = 80,00%
			Exile_Item_DuctTape         = 20,00%
		*/
		Vehicle[] = {"Exile_Item_FuelCanisterFull", "Exile_Item_FuelCanisterFull", "Exile_Item_FuelCanisterFull", "Exile_Item_FuelCanisterFull", "Exile_Item_DuctTape"};

		/*
			Percental Item Spawn Chances of Chemlights:

		*/
		Chemlights[] = {};

		/*
			Percental Item Spawn Chances of RoadFlares:

		*/
		RoadFlares[] = {};

		/*
			Percental Item Spawn Chances of SmokeGrenades:

		*/
		SmokeGrenades[] = {};

		/*
			Percental Item Spawn Chances of Restraints:

			Exile_Item_ZipTie = 100,00%
		*/
		Restraints[] = {"Exile_Item_ZipTie"};

		/*
			Percental Item Spawn Chances of Electronics:

			Exile_Item_Laptop                = 0,84%
			Exile_Item_BaseCameraKit         = 0,84%
			EBM_Brickwall_window_Kit         = 2,52%
			EBM_Brickwall_stairs_Kit         = 2,52%
			EBM_Brickwall_floorport_door_Kit = 2,52%
			EBM_Brickwall_floorport_Kit      = 2,52%
			EBM_Brickwall_floor_Kit          = 2,52%
			EBM_Brickwall_door_Kit           = 2,52%
			EBM_Brickwall_hole_Kit           = 2,52%
			EBM_Parksign_Kit                 = 2,52%
			EBM_Brickwall_Kit                = 2,52%
			EBM_Metalwall_window_Kit         = 2,52%
			EBM_Metalwall_stairs_Kit         = 2,52%
			EBM_Metalwall_floorport_door_Kit = 2,52%
			EBM_Metalwall_floorport_Kit      = 2,52%
			EBM_Metalwall_floor_Kit          = 2,52%
			EBM_Metalwall_door_Kit           = 2,52%
			EBM_Metalwall_hole_Kit           = 2,52%
			EBM_Metalwall_half_Kit           = 2,52%
			EBM_Metalwall_Kit                = 2,52%
			EBM_Medikit_Kit                  = 2,52%
			EBM_pollard_Kit                  = 2,52%
			Exile_Item_WoodPlank             = 2,52%
			Exile_Item_WoodLog               = 2,52%
			Exile_Item_WoodFloorKit          = 2,52%
			Exile_Item_WoodFloorPortKit      = 2,52%
			Exile_Item_WoodGateKit           = 2,52%
			Exile_Item_WoodStairsKit         = 2,52%
			Exile_Item_WoodSupportKit        = 2,52%
			Exile_Item_WoodWallKit           = 2,52%
			Exile_Item_WoodWallHalfKit       = 2,52%
			Exile_Item_WoodWindowKit         = 2,52%
			Exile_Item_WoodDoorwayKit        = 2,52%
			Exile_Item_ConcreteWallKit       = 2,52%
			Exile_Item_ConcreteWindowKit     = 2,52%
			Exile_Item_ConcreteDoorKit       = 2,52%
			Exile_Item_ConcreteDoorwayKit    = 2,52%
			Exile_Item_ConcreteGateKit       = 2,52%
			Exile_Item_ConcreteFloorKit      = 2,52%
			Exile_Item_ConcreteFloorPortKit  = 2,52%
			Exile_Item_ConcreteStairsKit     = 2,52%
		*/
		Electronics[] = {"Exile_Item_WoodStairsKit", "EBM_Brickwall_window_Kit", "EBM_Brickwall_floorport_Kit", "EBM_Parksign_Kit", "EBM_Brickwall_Kit", "EBM_Metalwall_stairs_Kit", "Exile_Item_WoodFloorKit", "Exile_Item_ConcreteGateKit", "Exile_Item_WoodPlank", "EBM_Medikit_Kit", "EBM_Parksign_Kit", "EBM_Brickwall_floor_Kit", "EBM_Metalwall_stairs_Kit", "EBM_Brickwall_door_Kit", "Exile_Item_ConcreteStairsKit", "EBM_Metalwall_window_Kit", "Exile_Item_WoodSupportKit", "Exile_Item_WoodLog", "EBM_Parksign_Kit", "EBM_Metalwall_half_Kit", "Exile_Item_ConcreteDoorKit", "Exile_Item_WoodPlank", "EBM_Metalwall_floorport_door_Kit", "Exile_Item_WoodDoorwayKit", "EBM_Metalwall_window_Kit", "Exile_Item_ConcreteStairsKit", "Exile_Item_WoodDoorwayKit", "Exile_Item_ConcreteWallKit", "EBM_Brickwall_floorport_door_Kit", "Exile_Item_ConcreteFloorKit", "Exile_Item_WoodStairsKit", "Exile_Item_ConcreteDoorwayKit", "EBM_Metalwall_floorport_door_Kit", "EBM_Metalwall_hole_Kit", "EBM_Medikit_Kit", "EBM_Metalwall_floor_Kit", "Exile_Item_WoodFloorKit", "Exile_Item_WoodFloorKit", "Exile_Item_WoodWindowKit", "EBM_Metalwall_floorport_Kit", "Exile_Item_WoodFloorPortKit", "Exile_Item_WoodGateKit", "EBM_Brickwall_floorport_Kit", "EBM_Metalwall_door_Kit", "EBM_Metalwall_stairs_Kit", "Exile_Item_ConcreteWallKit", "EBM_Brickwall_stairs_Kit", "EBM_Metalwall_window_Kit", "Exile_Item_ConcreteDoorwayKit", "EBM_Metalwall_half_Kit", "Exile_Item_ConcreteWindowKit", "EBM_Brickwall_hole_Kit", "Exile_Item_WoodWallHalfKit", "Exile_Item_WoodWallHalfKit", "EBM_Metalwall_floorport_door_Kit", "EBM_Metalwall_floorport_Kit", "EBM_Metalwall_Kit", "Exile_Item_ConcreteWallKit", "EBM_Metalwall_door_Kit", "EBM_Brickwall_hole_Kit", "EBM_Brickwall_door_Kit", "Exile_Item_WoodPlank", "EBM_Brickwall_floor_Kit", "EBM_Metalwall_Kit", "Exile_Item_WoodLog", "Exile_Item_ConcreteStairsKit", "EBM_pollard_Kit", "Exile_Item_WoodWindowKit", "Exile_Item_ConcreteFloorPortKit", "Exile_Item_ConcreteFloorPortKit", "EBM_pollard_Kit", "Exile_Item_ConcreteFloorKit", "Exile_Item_WoodDoorwayKit", "Exile_Item_ConcreteWindowKit", "Exile_Item_ConcreteFloorKit", "Exile_Item_WoodFloorPortKit", "Exile_Item_WoodSupportKit", "Exile_Item_WoodWallKit", "EBM_Metalwall_Kit", "EBM_Metalwall_half_Kit", "EBM_Brickwall_floorport_door_Kit", "EBM_Metalwall_floorport_Kit", "EBM_pollard_Kit", "EBM_Metalwall_door_Kit", "EBM_Metalwall_hole_Kit", "Exile_Item_WoodGateKit", "Exile_Item_ConcreteDoorwayKit", "EBM_Brickwall_hole_Kit", "Exile_Item_ConcreteDoorKit", "Exile_Item_WoodGateKit", "EBM_Brickwall_window_Kit", "Exile_Item_ConcreteWindowKit", "Exile_Item_WoodWallHalfKit", "Exile_Item_BaseCameraKit", "EBM_Brickwall_floorport_Kit", "EBM_Brickwall_window_Kit", "Exile_Item_WoodWindowKit", "EBM_Brickwall_stairs_Kit", "EBM_Brickwall_floorport_door_Kit", "EBM_Metalwall_floor_Kit", "Exile_Item_WoodFloorPortKit", "EBM_Brickwall_Kit", "EBM_Brickwall_floor_Kit", "EBM_Brickwall_stairs_Kit", "Exile_Item_ConcreteDoorKit", "Exile_Item_ConcreteGateKit", "EBM_Brickwall_Kit", "Exile_Item_WoodStairsKit", "Exile_Item_ConcreteFloorPortKit", "Exile_Item_WoodSupportKit", "EBM_Medikit_Kit", "Exile_Item_Laptop", "Exile_Item_WoodLog", "Exile_Item_WoodWallKit", "EBM_Metalwall_floor_Kit", "EBM_Metalwall_hole_Kit", "Exile_Item_WoodWallKit", "EBM_Brickwall_door_Kit", "Exile_Item_ConcreteGateKit"};

		/*
			Percental Item Spawn Chances of Trash:

			Exile_Item_Magazine01  = 12,50%
			Exile_Item_Magazine02  = 12,50%
			Exile_Item_Magazine03  = 12,50%
			Exile_Item_Magazine04  = 12,50%
			Exile_Item_ToiletPaper = 50,00%
		*/
		Trash[] = {"Exile_Item_Magazine03", "Exile_Item_ToiletPaper", "Exile_Item_ToiletPaper", "Exile_Item_ToiletPaper", "Exile_Item_ToiletPaper", "Exile_Item_Magazine01", "Exile_Item_Magazine02", "Exile_Item_Magazine04"};

		/*
			Percental Item Spawn Chances of Unused:

			Exile_Item_CordlessScrewdriver = 11,11%
			Exile_Item_FireExtinguisher    = 11,11%
			Exile_Item_Rope                = 11,11%
			Exile_Item_Carwheel            = 11,11%
			Exile_Item_Defibrillator       = 11,11%
			Exile_Item_SleepingMat         = 11,11%
			Exile_Item_Wrench              = 11,11%
			Exile_Item_OilCanister         = 11,11%
			Exile_Item_Hammer              = 11,11%
		*/
		Unused[] = {"Exile_Item_Wrench", "Exile_Item_SleepingMat", "Exile_Item_OilCanister", "Exile_Item_Defibrillator", "Exile_Item_CordlessScrewdriver", "Exile_Item_FireExtinguisher", "Exile_Item_Hammer", "Exile_Item_Carwheel", "Exile_Item_Rope"};
	};
};