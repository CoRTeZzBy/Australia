/*
	"GuerillaCamp" v2 static mission for Australia.
	Created by Thomas TKO
	O_T_LSV_02_armed_viper_F increases persistent chance with difficulty
	tko-gameserver.de
*/

private ["_AICount", "_AIMaxReinforcements", "_AItrigger", "_AIwave", "_AIdelay", "_staticguns", "_missionObjs", "_crate0", "_cash0", "_crate_loot_values0", "_crate_weapons0", "_crate_items0", "_difficultyM", "_difficulty", "_PossibleDifficulty", "_msgWIN", "_vehicle","_veh", "_pinCode", "_VehicleChance"];

// For logging purposes
_num = DMS_MissionCount;

// Set mission side (only "bandit" is supported for now)
_side = "bandit";

_pos = [27397.8,11070.5,0]; //insert the centre here

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
_AICount = (15 + (round (random 5)));					//AI starting numbers
_AIMaxReinforcements = (1 + (round (random 1)));		//AI reinforcement cap , AI Verstärkungskappe
_AItrigger = (6 + (round (random 2)));					//If AI numbers fall below this number then reinforce if any left from AIMax , Maximaler AI-Wert in Verstärkungswellen
_AIwave = (1 + (round (random 1)));						//Max amount of AI in reinforcement wave
_AIdelay = (1 + (round (random 1)));					//The delay between reinforcements ,Die Verzögerung zwischen Verstärkungen
_VehicleChance = 10;									//10% SpawnPersistentVehicle chance
_crate_weapons0 	= (40 + (round (random 5)));		//Crate 0 weapons number
_crate_items0 		= (30 + (round (random 5)));		//Crate 0 items number
_cash0 = (30000 + round (random (95000)));				//Tabs for crate0
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
_crate_weapons0 	= (50 + (round (random 5)));
_crate_items0 		= (30 + (round (random 5)));
_cash0 = (40000 + round (random (95000)));				//Tabs for crate0
	};
	case "difficult":
	{
_difficulty = "difficult";
_AICount = (22 + (round (random 5)));
_AIMaxReinforcements = (1 + (round (random 1)));		//AI reinforcement cap , AI Verstärkungskappe
_AItrigger = (6 + (round (random 2)));					//If AI numbers fall below this number then reinforce if any left from AIMax , Maximaler AI-Wert in Verstärkungswellen
_AIwave = (1 + (round (random 1)));						//Max amount of AI in reinforcement wave
_AIdelay = (1 + (round (random 1)));					//The delay between reinforcements ,Die Verzögerung zwischen Verstärkungen
_VehicleChance = 80;									//20% SpawnPersistentVehicle chance
_crate_weapons0 	= (60 + (round (random 5)));
_crate_items0 		= (40 + (round (random 5)));
_cash0 = (50000 + round (random (95000)));				//Tabs for crate0
	};
	//case "hardcore":
	default
	{
_difficulty = "hardcore";
_AICount = (25 + (round (random 5)));
_AIMaxReinforcements = (1 + (round (random 1)));		//AI reinforcement cap , AI Verstärkungskappe
_AItrigger = (6 + (round (random 2)));					//If AI numbers fall below this number then reinforce if any left from AIMax , Maximaler AI-Wert in Verstärkungswellen
_AIwave = (1 + (round (random 1)));						//Max amount of AI in reinforcement wave
_AIdelay = (1 + (round (random 1)));					//The delay between reinforcements ,Die Verzögerung zwischen Verstärkungen
_VehicleChance = 100;									//20% SpawnPersistentVehicle chance
_crate_weapons0 	= (60 + (round (random 5)));
_crate_items0 		= (50 + (round (random 5)));
_cash0 = (70000 + round (random (95000)));				//Tabs for crate0
	};
};

// Define spawn locations for AI Soldiers. These will be used for the initial spawning of AI as well as reinforcements.
// The center spawn location is added 3 times so at least 3 AI will spawn initially at the center location, and so that future reinforcements are more likely to spawn at the center.
_AISoldierSpawnLocations =
[
	//AI
	[27420.4,11085.8,0.0],
	[27395.9,11100.8,0.0],
	[27451.6,11098.9,0.0],
	[27434.7,11111.5,0.0],
	[27457.1,11058.5,0.0],
	[27447.4,11033.5,0.0],
	[27417.7,11036.1,0.0],
	[27361.6,11044.8,0.0],
	[27370.1,11034.5,0.0],
	[27371.4,11053,0.0],
	[27386.7,11022.9,0.0],
	[27396.3,11020.6,0.0],
	[27405.1,11053.7,0.0],
	[27374.6,11074.7,0.0],
	[27362.3,11065.7,0.0],
	[27380.5,11138.7,0.0],
	[27370.3,11166.9,0.0],
	[27393.8,11169.4,0.0]
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
	//Hmg Hoch
	[27427.6,11086.8,7.51],
	[27431.7,11090,7.51],
	[27435.4,11123.9,2.52],
	[27455.2,11024.3,4.41],
	[27456.8,11026,4.28],
	[27338.8,11072.1,2.52],
	[27344.6,11071.7,2.91],
	[27423.2,11068.1,3.85],
	[27442.4,11087.9,3.94],
	[27438.2,11091.6,3.94],
	[27424.8,11072.6,3.94],
	[27432.5,11089.3,3.94],
	[27430.7,11087.7,3.94],
	[27395.1,11041.8,0.82],
	[27378,11066.5,0.82],
	//Hmg Boden
	[27394.9,11017.3,0.0],
	[27389.4,11016.8,0.0],
	[27374.2,11037.8,0.0],
	[27365.9,11047.8,0.0],
	[27360.2,11033.7,0.0],
	[27372.3,11063.8,0.0],
	[27390.8,11041.9,0.0],
	[27402.8,11104.2,0.0],
	[27399.1,11093.6,0.0],
	[27418.8,11117.5,0.0],
	[27434.1,11119.6,0.0],
	[27448.5,11109.2,0.0],
	[27467.8,11083.6,0.0],
	[27463.7,11070.3,0.0],
	[27452.4,11046.3,0.0],
	[27452.9,11025,0.0],
	[27453.5,11034.2,0.0],
	[27446.8,11027.7,0.0],
	[27429.6,11034.9,0.0],
	[27400.7,11023.4,0.0],
	[27349.5,11072,0.0],
	[27431.5,11073.9,0.0],
	[27400.7,11152.8,0.0],
	[27367.4,11144.2,0.0],
	[27362.5,11176.4,0.0],
	[27391.5,11182.8,0.0]
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
	//Hmg Hoch
	[27427.6,11086.8,7.51],
	[27431.7,11090,7.51],
	[27435.4,11123.9,2.52],
	[27455.2,11024.3,4.41],
	[27456.8,11026,4.28],
	[27338.8,11072.1,2.52],
	[27344.6,11071.7,2.91],
	[27423.2,11068.1,3.85],
	[27442.4,11087.9,3.94],
	[27438.2,11091.6,3.94],
	[27424.8,11072.6,3.94],
	[27432.5,11089.3,3.94],
	[27430.7,11087.7,3.94],
	[27395.1,11041.8,0.82],
	[27378,11066.5,0.82],
	//Hmg Boden
	[27394.9,11017.3,0.0],
	[27389.4,11016.8,0.0],
	[27374.2,11037.8,0.0],
	[27365.9,11047.8,0.0],
	[27360.2,11033.7,0.0],
	[27372.3,11063.8,0.0],
	[27390.8,11041.9,0.0],
	[27402.8,11104.2,0.0],
	[27399.1,11093.6,0.0],
	[27418.8,11117.5,0.0],
	[27434.1,11119.6,0.0],
	[27448.5,11109.2,0.0],
	[27467.8,11083.6,0.0],
	[27463.7,11070.3,0.0],
	[27452.4,11046.3,0.0],
	[27452.9,11025,0.0],
	[27453.5,11034.2,0.0],
	[27446.8,11027.7,0.0],
	[27429.6,11034.9,0.0],
	[27400.7,11023.4,0.0],
	[27349.5,11072,0.0],
	[27431.5,11073.9,0.0],
	[27400.7,11152.8,0.0],
	[27367.4,11144.2,0.0],
	[27362.5,11176.4,0.0],
	[27391.5,11182.8,0.0]
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
	[[27400,11054.9,0],"I_CargoNet_01_ammo_F"],
	[[27388.3,11102.5,0],"I_CargoNet_01_ammo_F"],
	[[27395.4,11126,0],"I_CargoNet_01_ammo_F"],
	[[27413.3,11072.4,0],"I_CargoNet_01_ammo_F"]
];

{
	deleteVehicle (nearestObject _x);		// Make sure to remove any previous crates.
} forEach _crateClasses_and_Positions;

// Shuffle the list
_crateClasses_and_Positions = _crateClasses_and_Positions call ExileClient_util_array_shuffle;


// Create Crates
_crate0 = [_crateClasses_and_Positions select 0 select 1, _crateClasses_and_Positions select 0 select 0] call DMS_fnc_SpawnCrate;

// Don't think an armed AI vehicle fit the idea behind the mission. You're welcome to uncomment this if you want.
//_veh =
//[
//	[
//		[_pos,100,random 360] call DMS_fnc_SelectOffsetPos,
//		_pos
//	],
//	_group,
//	"assault",
//	_difficulty,
//	_side
//] call DMS_fnc_SpawnAIVehicle;

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
											_vehicle = ["Mrshounka_pagani_Rework_p_rouge_f",[27382.2,11167.4,0],_pinCode] call DMS_fnc_SpawnPersistentVehicle;
											_msgWIN = ['#06aedb',format ["Ihr habt die GuerillaCamp gesichert code ist %1...",_pinCode]];
											} else
											{
											_vehicle = ["Mrshounka_pagani_Rework_p_rouge_f",[27382.2,11167.4,0]] call DMS_fnc_SpawnNonPersistentVehicle;
											_msgWIN = ['#06aedb',"Ihr habt die GuerillaCamp gesichert"];
											};

// Define mission-spawned objects and loot values with vehicle
_missionObjs =
[
	_staticGuns,			// static gun(s). Note, we don't add the base itself because it already spawns on server start.
	[_vehicle],				// vehicle prize
	[[_crate0,_crate_loot_values0]]
];	
											
// Define Mission Start message
_msgStart = ['#06aedb',format["In GuerillaCamp wird Schwere Hardware von %1 Soldaten vorgeführt",_difficultyM]];

// Define Mission Win message defined in vehicle choice

// Define Mission Lose message
_msgLOSE = ['#FF0000',"Guerilla haben die Schwere Hardware gesichert."];

// Define mission name (for map marker and logging)
_missionName = "GuerillaCamp";

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