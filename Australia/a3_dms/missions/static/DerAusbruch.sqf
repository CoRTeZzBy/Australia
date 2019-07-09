/*
	"DerAusbruch" v1 static mission for Australia.
	Created by Thomas TKO
	O_T_LSV_02_armed_viper_F increases persistent chance with difficulty
	tko-gameserver.de
*/

private ["_AICount", "_AIMaxReinforcements", "_AItrigger", "_AIwave", "_AIdelay", "_staticguns", "_missionObjs", "_crate0", "_cash0", "_crate_loot_values0", "_crate_weapons0", "_crate_items0", "_difficultyM", "_difficulty", "_PossibleDifficulty", "_msgWIN", "_vehicle","_veh", "_pinCode", "_VehicleChance"];

// For logging purposes
_num = DMS_MissionCount;

// Set mission side (only "bandit" is supported for now)
_side = "bandit";

_pos = [29989.6,17441.9,0]; //insert the centre here

if ([_pos,DMS_StaticMinPlayerDistance] call DMS_fnc_IsPlayerNearby) exitWith {"delay"};

//create possible difficulty add more of one difficulty to weight it towards that
_PossibleDifficulty		= 	[	
                                "easy",
								"moderate",
								"difficult",
								"hardcore"
							];
//choose mission difficulty and set value and is also marker colour
_difficultyM = selectRandom _PossibleDifficulty;

switch (_difficultyM) do
{
	case "easy":
	{
_difficulty = "easy";									//AI difficulty
_AICount = (20 + (round (random 2)));					//AI starting numbers
_AIMaxReinforcements = (2 + (round (random 1)));		//AI reinforcement cap , AI Verstärkungskappe
_AItrigger = (6 + (round (random 2)));					//If AI numbers fall below this number then reinforce if any left from AIMax , Maximaler AI-Wert in Verstärkungswellen
_AIwave = (1 + (round (random 1)));						//Max amount of AI in reinforcement wave
_AIdelay = (1 + (round (random 1)));					//The delay between reinforcements ,Die Verzögerung zwischen Verstärkungen
_VehicleChance = 50;									//10% SpawnPersistentVehicle chance
_crate_weapons0 	= (50 + (round (random 5)));		//Crate 0 weapons number
_crate_items0 		= (40 + (round (random 5)));		//Crate 0 items number
_cash0 = (60000 + round (random (95000)));				//Tabs for crate0
	};
	case "moderate":
	{
_difficulty = "moderate";
_AICount = (22 + (round (random 2)));
_AIMaxReinforcements = (2 + (round (random 1)));		//AI reinforcement cap , AI Verstärkungskappe
_AItrigger = (6 + (round (random 2)));					//If AI numbers fall below this number then reinforce if any left from AIMax , Maximaler AI-Wert in Verstärkungswellen
_AIwave = (2 + (round (random 1)));						//Max amount of AI in reinforcement wave
_AIdelay = (1 + (round (random 1)));					//The delay between reinforcements ,Die Verzögerung zwischen Verstärkungen
_VehicleChance = 50;									//20% SpawnPersistentVehicle chance
_crate_weapons0 	= (60 + (round (random 5)));
_crate_items0 		= (45 + (round (random 5)));
_cash0 = (70000 + round (random (95000)));				//Tabs for crate0
	};
	case "difficult":
	{
_difficulty = "difficult";
_AICount = (22 + (round (random 2)));
_AIMaxReinforcements = (2 + (round (random 1)));		//AI reinforcement cap , AI Verstärkungskappe
_AItrigger = (6 + (round (random 2)));					//If AI numbers fall below this number then reinforce if any left from AIMax , Maximaler AI-Wert in Verstärkungswellen
_AIwave = (3 + (round (random 1)));						//Max amount of AI in reinforcement wave
_AIdelay = (1 + (round (random 1)));					//The delay between reinforcements ,Die Verzögerung zwischen Verstärkungen
_VehicleChance = 50;									//20% SpawnPersistentVehicle chance
_crate_weapons0 	= (65 + (round (random 5)));
_crate_items0 		= (50 + (round (random 5)));
_cash0 = (70000 + round (random (95000)));				//Tabs for crate0
	};
	//case "hardcore":
	default
	{
_difficulty = "hardcore";
_AICount = (22 + (round (random 2)));
_AIMaxReinforcements = (2 + (round (random 1)));		//AI reinforcement cap , AI Verstärkungskappe
_AItrigger = (6 + (round (random 2)));					//If AI numbers fall below this number then reinforce if any left from AIMax , Maximaler AI-Wert in Verstärkungswellen
_AIwave = (3 + (round (random 1)));						//Max amount of AI in reinforcement wave
_AIdelay = (1 + (round (random 1)));					//The delay between reinforcements ,Die Verzögerung zwischen Verstärkungen
_VehicleChance = 50;									//20% SpawnPersistentVehicle chance
_crate_weapons0 	= (70 + (round (random 5)));
_crate_items0 		= (50 + (round (random 5)));
_cash0 = (90000 + round (random (95000)));				//Tabs for crate0
	};
};

// Define spawn locations for AI Soldiers. These will be used for the initial spawning of AI as well as reinforcements.
// The center spawn location is added 3 times so at least 3 AI will spawn initially at the center location, and so that future reinforcements are more likely to spawn at the center.
_AISoldierSpawnLocations =
[
	//AI
	[30026.8,17402.1,0.45],
	[30025.3,17419.7,0],
	[30049.9,17399.9,0],
	[30031.2,17392.6,0],
	[30067.1,17406.6,0],
	[30067.4,17442.2,0],
	[29993.8,17478.9,0],
	[30048.2,17477.7,0],
	[29970.7,17485.6,0],
	[29957.7,17455.1,0],
	[29943,17454.7,0],
	[29962.9,17441.3,0],
	[29941.7,17436.4,0],
	[29915,17481.1,0],
	[29915.9,17409.2,0],
	[29899.9,17482.3,0],
	[29900.3,17402.1,0],
	[29945.3,17414.5,0],
	[29995.1,17437.3,0],
	[29962.2,17424.1,0],
	[29994.9,17404.1,0],
	[30016.2,17391.7,0],
	[30026.3,17442,0.45],
	[30006.1,17455.4,0.45]
];

_group =
[
	_AISoldierSpawnLocations+[_pos,_pos,_pos],			// Pass the regular spawn locations as well as the center pos 3x
	_AICount,											// Set in difficulty select
	_difficulty,										// Set in difficulty select
	"random",
	_side
] call DMS_fnc_SpawnAIGroup_MultiPos;

//Reduce Static guns if mission is easy
if (_difficultyM isEqualTo "easy") then {
_staticGuns =
[
	[
    //Hoch
	[30032.9,17439.2,4.76],
	[30032.9,17445.9,4.76],
	[30021.9,17438,4.76],
	[30020.1,17463.1,3.75],
	[30036.3,17453.6,3.75],
	[30009.4,17441.6,4.7],
	[30014.6,17438.7,4.76],
	[30068.9,17382.5,6.93],
	[30004.1,17387.6,6.93],
	[29897.3,17383.7,6.81],
	[29897.3,17494,6.89],
	[30070.6,17491.7,6.85],
	[30007.3,17390.3,6.93],
	[30027.1,17446,4.76],
	[30019.6,17456.9,3.75],
	[30034.6,17459.9,3.75],
	[30030.9,17450.7,3.75],
	[30011.1,17438.7,0.45],
	//[30015.5,17445.4,27.7858],
	//[29985.6,17454.8,27.7858],
	//[30013.7,17458.3,27.7858],
	//[30023.3,17461.2,27.7858],
	[30036.8,17441.2,0.45],
	//[30031.1,17451.8,27.7858],	
    //HMG	
	[29949,17407.3,0],
	[29940.5,17407.2,0],
	[29976,17454.5,0],
	[29968.3,17432.7,0.0],
	[29936.2,17433.3,0.0],
	[29938.6,17463.3,0.0],
	[29966.4,17463.7,0.0],
	[29976.6,17484.7,0.0],
	[29976.1,17492.1,0.0],
	[29904.5,17492.2,0.0],
	[29900.1,17389.7,0.0],
	[29997.2,17383.9,0.0],
	[30030.7,17383.8,0.0],
	[30066.4,17387.9,0],
	[30066.8,17487.5,0.0],
	[30062.8,17492,0.0],
	[29985,17486,0.0],
	[29983.6,17472.1,0.0],
	[30060.7,17487,0.0],
	[30043,17404.9,0.0],
	[30027.3,17397.6,0.0],
	[30038.1,17432.2,0.0],
	[30009.2,17429.1,0.0]
	],
	_group,
	"assault",
	_difficulty,
	"bandit",
	"random"
] call DMS_fnc_SpawnAIStaticMG;
										} else
										{
_staticGuns =
[
	[
    //Hoch
	[30032.9,17439.2,4.76],
	[30032.9,17445.9,4.76],
	[30021.9,17438,4.76],
	[30020.1,17463.1,3.75],
	[30036.3,17453.6,3.75],
	[30009.4,17441.6,4.7],
	[30014.6,17438.7,4.76],
	[30068.9,17382.5,6.93],
	[30004.1,17387.6,6.93],
	[29897.3,17383.7,6.81],
	[29897.3,17494,6.89],
	[30070.6,17491.7,6.85],
	[30007.3,17390.3,6.93],
	[30027.1,17446,4.76],
	[30019.6,17456.9,3.75],
	[30034.6,17459.9,3.75],
	[30030.9,17450.7,3.75],
	[30011.1,17438.7,0.45],
	//[30015.5,17445.4,27.7858],
	//[29985.6,17454.8,27.7858],
	//[30013.7,17458.3,27.7858],
	//[30023.3,17461.2,27.7858],
	[30036.8,17441.2,0.45],
	//[30031.1,17451.8,27.7858],	
    //HMG	
	[29949,17407.3,0],
	[29940.5,17407.2,0],
	[29976,17454.5,0],
	[29968.3,17432.7,0.0],
	[29936.2,17433.3,0.0],
	[29938.6,17463.3,0.0],
	[29966.4,17463.7,0.0],
	[29976.6,17484.7,0.0],
	[29976.1,17492.1,0.0],
	[29904.5,17492.2,0.0],
	[29900.1,17389.7,0.0],
	[29997.2,17383.9,0.0],
	[30030.7,17383.8,0.0],
	[30066.4,17387.9,0],
	[30066.8,17487.5,0.0],
	[30062.8,17492,0.0],
	[29985,17486,0.0],
	[29983.6,17472.1,0.0],
	[30060.7,17487,0.0],
	[30043,17404.9,0.0],
	[30027.3,17397.6,0.0],
	[30038.1,17432.2,0.0],
	[30009.2,17429.1,0.0]
	],
	_group,
	"assault",
	_difficulty,
	"bandit",
	"random"
] call DMS_fnc_SpawnAIStaticMG;
										};

// Define the classnames and locations where the crates can spawn (at least 2, since we're spawning 2 crates)
_crateClasses_and_Positions =
[
	[[30036,17408.2,0],"I_CargoNet_01_ammo_F"],
	[[30036,17418.8,0],"I_CargoNet_01_ammo_F"],
	[[30023,17432.1,0],"I_CargoNet_01_ammo_F"], 
	[[30033.2,17432,0],"I_CargoNet_01_ammo_F"]
];

{
	deleteVehicle (nearestObject _x);		// Make sure to remove any previous crates.
} forEach _crateClasses_and_Positions;

// Shuffle the list
_crateClasses_and_Positions = _crateClasses_and_Positions call ExileClient_util_array_shuffle;


// Create Crates
_crate0 = [_crateClasses_and_Positions select 0 select 1, _crateClasses_and_Positions select 0 select 0] call DMS_fnc_SpawnCrate;

// Don't think an armed AI vehicle fit the idea behind the mission. You're welcome to uncomment this if you want.
_veh =
[
	[
		[_pos,300,random 360] call DMS_fnc_SelectOffsetPos,
		_pos
	],
	_group,
	"assault",
	_difficulty,
	_side
] call DMS_fnc_SpawnAIVehicle;

// Enable smoke on the crates due to size of area
{
	_x setVariable ["DMS_AllowSmoke", true];
} forEach [_crate0];

// Define mission-spawned AI Units
_missionAIUnits =
[
	_group 		// We only spawned the single group for this mission
];

// Define the group reinforcements
_groupReinforcementsInfo =
[
	[
		_group,			// pass the group
		[
			[
				0,		// Let's limit number of units instead...
				0
			],
			[
				_AIMaxReinforcements,	// Maximum units that can be given as reinforcements (defined in difficulty selection).
				0
			]
		],
		[
			_AIdelay,		// The delay between reinforcements. >> you can change this in difficulty settings
			diag_tickTime
		],
		_AISoldierSpawnLocations,
		"random",
		_difficulty,
		_side,
		"reinforce",
		[
			_AItrigger,		// Set in difficulty select - Reinforcements will only trigger if there's fewer than X members left
			_AIwave			// X reinforcement units per wave. >> you can change this in mission difficulty section
		]
	]
];

// setup crates with items from choices
_crate_loot_values0 =
[
	_crate_weapons0,		// Set in difficulty select - Weapons
	_crate_items0			// Set in difficulty select - Items
];

// add cash to crates
_crate0 setVariable ["ExileMoney", _cash0,true];

// is %chance greater than random number[30026.7,17458.6,5]O_T_VTOL_02_vehicle_grey_F
if (_VehicleChance >= (random 100)) then {
											_pinCode = (1000 +(round (random 8999)));
											_vehicle = ["Mrshounka_pagani_Rework_p_rose_f",[30004.4,17477.5,0],_pinCode] call DMS_fnc_SpawnPersistentVehicle;
											_msgWIN = ['#06aedb',format ["Nimm deine Pussy und flüchte der code is %1...",_pinCode]];
											} else
											{
											_vehicle = ["Mrshounka_veveno_Rework_p_rose_f",[30004.4,17477.5,0]] call DMS_fnc_SpawnNonPersistentVehicle;
											_msgWIN = ['#06aedb',"Nimm deine Pussy und flüchte"];
											};

// Define mission-spawned objects and loot values with vehicle
_missionObjs =
[
	_staticGuns,			// static gun(s). Note, we don't add the base itself because it already spawns on server start.
	[_vehicle],				// vehicle prize
	[[_crate0,_crate_loot_values0]]
];	
											
// Define Mission Start message
_msgStart = ['#06aedb',format["Hol dein kumpel aus der gefangenschaft der %1 terrorists",_difficultyM]];

// Define Mission Win message defined in vehicle choice

// Define Mission Lose message
_msgLOSE = ['#FF0000',"Dein Kolege wurde im Loch versenkt."];

// Define mission name (for map marker and logging)
_missionName = "DerAusbruch";

// Create Markers
_markers =
[
	_pos,
	_missionName,
	_difficultyM
] call DMS_fnc_CreateMarker;

_circle = _markers select 1;
_circle setMarkerDir 0;
_circle setMarkerSize [400,400];

_time = diag_tickTime;

// Parse and add mission info to missions monitor
_added =
[
	_pos,
	[
		[
			"kill",
			_group
		],
		[
			"playerNear",
			[_pos,100]
		]
	],
	_groupReinforcementsInfo,
	[
		_time,
		DMS_StaticMissionTimeOut call DMS_fnc_SelectRandomVal
	],
	_missionAIUnits,
	_missionObjs,
	[_missionName,_msgWIN,_msgLOSE],
	_markers,
	_side,
	_difficultyM,
	[[],[]]
] call DMS_fnc_AddMissionToMonitor_Static;

// Check to see if it was added correctly, otherwise delete the stuff
if !(_added) exitWith
{
	diag_log format ["DMS ERROR :: Attempt to set up mission %1 with invalid parameters for DMS_fnc_AddMissionToMonitor_Static! Deleting mission objects and resetting DMS_MissionCount.",_missionName];

	_cleanup = [];
	{
		_cleanup pushBack _x;
	} forEach _missionAIUnits;

	_cleanup pushBack ((_missionObjs select 0)+(_missionObjs select 1));
	
	{
		_cleanup pushBack (_x select 0);
	} foreach (_missionObjs select 2);

	_cleanup call DMS_fnc_CleanUp;

	// Delete the markers directly
	{deleteMarker _x;} forEach _markers;

	// Reset the mission count
	DMS_MissionCount = DMS_MissionCount - 1;
};

// Notify players
[_missionName,_msgStart] call DMS_fnc_BroadcastMissionStatus;

if (DMS_DEBUG) then
{
	(format ["MISSION: (%1) :: Mission #%2 started at %3 with %4 AI units and %5 difficulty at time %6",_missionName,_num,_pos,_AICount,_difficulty,_time]) call DMS_fnc_DebugLog;
};