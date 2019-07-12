/*
	"GuantanamoBay." v1 static mission for Australia.
	Created by Thomas TKO
	O_T_LSV_02_armed_viper_F increases persistent chance with difficulty
	tko-gameserver.de
*/

private ["_AICount", "_AIMaxReinforcements", "_AItrigger", "_AIwave", "_AIdelay", "_staticguns", "_missionObjs", "_crate0", "_cash0", "_crate_loot_values0", "_crate_weapons0", "_crate_items0", "_difficultyM", "_difficulty", "_PossibleDifficulty", "_msgWIN", "_vehicle","_veh", "_pinCode", "_VehicleChance"];

// For logging purposes
_num = DMS_MissionCount;

// Set mission side (only "bandit" is supported for now)
_side = "bandit";

_pos = [23196.2,21129.4,0]; //insert the centre here

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
_AICount = (15 + (round (random 2)));					//AI starting numbers
_AIMaxReinforcements = (1 + (round (random 1)));		//AI reinforcement cap , AI Verstärkungskappe
_AItrigger = (6 + (round (random 2)));					//If AI numbers fall below this number then reinforce if any left from AIMax , Maximaler AI-Wert in Verstärkungswellen
_AIwave = (1 + (round (random 1)));						//Max amount of AI in reinforcement wave
_AIdelay = (1 + (round (random 1)));					//The delay between reinforcements ,Die Verzögerung zwischen Verstärkungen
_VehicleChance = 10;									//10% SpawnPersistentVehicle chance
_crate_weapons0 	= (50 + (round (random 5)));		//Crate 0 weapons number
_crate_items0 		= (40 + (round (random 5)));		//Crate 0 items number
_cash0 = (70000 + round (random (95000)));				//Tabs for crate0
	};
	case "moderate":
	{
_difficulty = "moderate";
_AICount = (20 + (round (random 2)));
_AIMaxReinforcements = (1 + (round (random 1)));		//AI reinforcement cap , AI Verstärkungskappe
_AItrigger = (6 + (round (random 2)));					//If AI numbers fall below this number then reinforce if any left from AIMax , Maximaler AI-Wert in Verstärkungswellen
_AIwave = (1 + (round (random 1)));						//Max amount of AI in reinforcement wave
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
_AIMaxReinforcements = (1 + (round (random 1)));		//AI reinforcement cap , AI Verstärkungskappe
_AItrigger = (6 + (round (random 2)));					//If AI numbers fall below this number then reinforce if any left from AIMax , Maximaler AI-Wert in Verstärkungswellen
_AIwave = (1 + (round (random 1)));						//Max amount of AI in reinforcement wave
_AIdelay = (1 + (round (random 1)));					//The delay between reinforcements ,Die Verzögerung zwischen Verstärkungen
_VehicleChance = 80;									//20% SpawnPersistentVehicle chance
_crate_weapons0 	= (65 + (round (random 5)));
_crate_items0 		= (50 + (round (random 5)));
_cash0 = (80000 + round (random (95000)));				//Tabs for crate0
	};
	//case "hardcore":
	default
	{
_difficulty = "hardcore";
_AICount = (22 + (round (random 2)));
_AIMaxReinforcements = (1 + (round (random 1)));		//AI reinforcement cap , AI Verstärkungskappe
_AItrigger = (6 + (round (random 2)));					//If AI numbers fall below this number then reinforce if any left from AIMax , Maximaler AI-Wert in Verstärkungswellen
_AIwave = (1 + (round (random 1)));						//Max amount of AI in reinforcement wave
_AIdelay = (1 + (round (random 1)));					//The delay between reinforcements ,Die Verzögerung zwischen Verstärkungen
_VehicleChance = 100;									//20% SpawnPersistentVehicle chance
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
	[23123.8,21131.3,0],
	[23117.8,21159.5,0],
	[23117.1,21192.7,0],
	[23104.8,21175.1,0],
	[23104.8,21156.4,0],
	[23176.3,21134.8,0],
	[23147.9,21144.6,0],
	[23172.3,21196.2,0.0],
	[23148.3,21195.4,0.0],
	[23176.8,21184.9,0.0],
	[23190.9,21132.8,0.0],
	[23213,21132.7,0.0],
	[23233.5,21129.5,0.0],
	[23207.6,21145.6,0.0],
	[23223.3,21145.6,0],
	//AI Hoch
	[23153.3,21164.7,0.391],
	[23146.8,21159.8,0.314],
	[23172.2,21152.2,0.314],
	[23170.6,21175.1,0.314],
	[23134.5,21183.3,0.314],
	[23149.5,21177,0.314]
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
    //HOCH HMG
	[23236.5,21090.4,7.041],
	[23236.3,21137.6,7.043],
	[23183.1,21198.5,7.041],
	[23113,21197.9,7.034],
	[23112.9,21125.8,7.041],
	[23164,21177.7,3.781],
	[23175.9,21167.9,3.841],
	[23174.4,21154.4,4.830],
	[23156.2,21157,4.6978],
	[23146.5,21159.8,4.616],
	[23154,21163.3,4.7],
	[23163.2,21153,4.745],
	[23139.2,21177.3,3.556],
	[23141.4,21183.3,3.601],
	[23186.9,21090.1,7.044],
	[23169.1,21153.6,0.484],
	[23158.4,21166.7,0.484],
	[23197.1,21097,6.119],
	[23193.7,21110.3,6.155],
	[23227.4,21112.9,1.682],
	[23221.6,21107.1,2.597],
	[23203.1,21116.9,1.654],
	//BODEN HMG
	[23105.1,21186.2,0.0],
	[23234.8,21145.6,0.0],
	[23232.2,21123.6,0.0],
	[23189.1,21122.9,0.0],
	[23187.8,21139.6,0.0],
	[23226.8,21139.3,0.0],
	[23208.9,21139.1,0.0],
	[23111.8,21158.6,0.0],
	[23111.9,21179.6,0.0],
	[23149.2,21154.8,0.0],
	[23160.7,21184,0.0],	
	[23178.3,21150.3,0.0],
	[23182,21124.4,0.0],
	[23130.5,21196.1,0.0]
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
    //HOCH HMG
	[23236.5,21090.4,7.041],
	[23236.3,21137.6,7.043],
	[23183.1,21198.5,7.041],
	[23113,21197.9,7.034],
	[23112.9,21125.8,7.041],
	[23164,21177.7,3.781],
	[23175.9,21167.9,3.841],
	[23174.4,21154.4,4.830],
	[23156.2,21157,4.6978],
	[23146.5,21159.8,4.616],
	[23154,21163.3,4.7],
	[23163.2,21153,4.745],
	[23139.2,21177.3,3.556],
	[23141.4,21183.3,3.601],
	[23186.9,21090.1,7.044],
	[23169.1,21153.6,0.484],
	[23158.4,21166.7,0.484],
	[23197.1,21097,6.119],
	[23193.7,21110.3,6.155],
	[23227.4,21112.9,1.682],
	[23221.6,21107.1,2.597],
	[23203.1,21116.9,1.654],
	//BODEN HMG
	[23105.1,21186.2,0.0],
	[23234.8,21145.6,0.0],
	[23232.2,21123.6,0.0],
	[23189.1,21122.9,0.0],
	[23187.8,21139.6,0.0],
	[23226.8,21139.3,0.0],
	[23208.9,21139.1,0.0],
	[23111.8,21158.6,0.0],
	[23111.9,21179.6,0.0],
	[23149.2,21154.8,0.0],
	[23160.7,21184,0.0],	
	[23178.3,21150.3,0.0],
	[23182,21124.4,0.0],
	[23130.5,21196.1,0.0]
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
	[[23114.8,21140.5,0],"I_CargoNet_01_ammo_F"],
	[[23230.5,21135.3,0],"I_CargoNet_01_ammo_F"]
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
		[_pos,200,random 360] call DMS_fnc_SelectOffsetPos,
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
											_vehicle = ["Mrshounka_pagani_Rework_p_rouge_f",[23196.2,21129.4,0],_pinCode] call DMS_fnc_SpawnPersistentVehicle;
											_msgWIN = ['#06aedb',format ["Haste gut gemacht der code ist %1...",_pinCode]];
											} else
											{
											_vehicle = ["Mrshounka_pagani_Rework_p_rouge_f",[23196.2,21129.4,0]] call DMS_fnc_SpawnNonPersistentVehicle;
											_msgWIN = ['#06aedb',"Haste gut gemacht code gibt es nicht"];
											};

// Define mission-spawned objects and loot values with vehicle
_missionObjs =
[
	_staticGuns+[_veh],			// static gun(s). Note, we don't add the base itself because it already spawns on server start.
	[_vehicle],				// vehicle prize
	[[_crate0,_crate_loot_values0]]
];	
											
// Define Mission Start message
_msgStart = ['#06aedb',format["GuantanamoBay Party mit %1 Truppen",_difficultyM]];

// Define Mission Win message defined in vehicle choice

// Define Mission Lose message
_msgLOSE = ['#FF0000',"Kein wunder mit der Knifte"];

// Define mission name (for map marker and logging)
_missionName = "GuantanamoBay";

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
