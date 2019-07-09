/*
	"MetzellFest" v2.1 static mission for Australia.
*/

private ["_AICount", "_AIMaxReinforcements", "_AItrigger", "_AIwave", "_AIdelay", "_staticguns", "_missionObjs", "_crate0", "_cash0", "_crate_loot_values0", "_crate_weapons0", "_crate_items0", "_difficultyM", "_difficulty", "_PossibleDifficulty", "_msgWIN", "_vehicle","_veh", "_pinCode", "_VehicleChance"];

// For logging purposes
_num = DMS_MissionCount;

// Set mission side (only "bandit" is supported for now)
_side = "bandit";

_pos = [29109.9,34129.4,0]; //insert the centre here

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
_crate_weapons0 	= (55 + (round (random 5)));
_crate_items0 		= (45 + (round (random 5)));
_cash0 = (80000 + round (random (95000)));				//Tabs for crate0
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
_crate_items0 		= (5055+ (round (random 5)));
_cash0 = (90000 + round (random (95000)));				//Tabs for crate0
	};
};

// Define spawn locations for AI Soldiers. These will be used for the initial spawning of AI as well as reinforcements.
// The center spawn location is added 3 times so at least 3 AI will spawn initially at the center location, and so that future reinforcements are more likely to spawn at the center.
_AISoldierSpawnLocations =
[
	//ai
	[29177.7,34215.9,0.0],
	[29171.8,34149.2,0.0],
	[29138.4,34162.6,0.0],
	[29124.2,34208.9,0.0],
	[29090.2,34182.1,0.0],
	[29062.3,34209,0.0],
	[29082.3,34127,0.0],
	[29163,34113.5,0.0],
	[29164,34071.7,0.0],
	[29144.3,34074,0.0],
	[29081.4,34075.1,0.0],
	[29089.7,34041.4,0.0],
	[29130.5,34041.3,0.0],
	[29166.6,34041.1,0.0],
	[29126.6,34121.3,0.0],
	[29094.1,34162.2,0.0],
	[29141.7,34211.8,0.0],
	[29096.1,34210,0.0],
	[29107.8,34090.3,0.0],
	[29109.6,34057.6,0.0]
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
	//hmg
	[29077.5,34172.7,2.98],
	[29071.9,34178.6,3.21],
	[29075.8,34198.8,3.21],
	[29074.1,34192,3.1],
	[29111,34171.8,3.14],
	[29106.5,34177.9,3.2],
	[29105,34198,2.98],
	[29110.8,34192.6,2.98],
	[29140.6,34195.7,3.1],
	[29139.1,34176.1,3.1],
	[29113,34223.6,4.35],
	[29189.6,34215.9,4.34],
	[29023.8,34223,4.35],
	[29022.5,34038.1,4.31],
	[29100.3,34077.5,4.34],
	[29113.5,34077.1,4.34],
	[29180.7,34090.5,3.12],
	[29181.9,34108.5,3.37],
	[29182.1,34125.7,3.13],
	[29134.6,34047.1,7.46],
	[29040.1,34046.2,7.52],
	[29194.3,34042.5,4.34],
	[29073.9,34137.6,7.5],
	[29132.2,34137.1,7.5],
	//boden
	[29128.4,34230.6,0.0],
	[29115.3,34230.7,0.0],
	[29130,34224.7,0.0],
	[29181.8,34204.8,0.0],
	[29183.3,34150.8,0.0],
	[29189,34125.7,0.0],
	[29189.6,34109.5,0.0],
	[29119.8,34042.8,0.0],
	[29116.7,34029,0.0],
	[29100.7,34028.1,0.0],
	[29098.3,34034.8,0.0],
	[29115.5,34038.1,0.0],
	[29062.8,34056.3,0.0],
	[29108.1,34076.1,0.0],
	[29036.5,34059.5,0.0],
	[29038.8,34118.1,0.0],
	[29036.1,34162.8,0.0],
	[29035.8,34206.5,0.0],
	[29062.5,34185.6,0.0],
	[29151,34185.1,0.0],
	[29157.1,34052.3,0.0],
	[29118.5,34109,0.0],
	[29084.5,34108.8,0.0],
	[29122.1,34225.1,0.0],
	[29109.3,34028.3,0.0],
	[29118.7,34194.9,0.0],
	[29130.4,34194.6,0.0],
	[29130.4,34172.9,0.0],
	[29119.3,34172.3,0.0]
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
	//hmg
	[29077.5,34172.7,2.98],
	[29071.9,34178.6,3.21],
	[29075.8,34198.8,3.21],
	[29074.1,34192,3.1],
	[29111,34171.8,3.14],
	[29106.5,34177.9,3.2],
	[29105,34198,2.98],
	[29110.8,34192.6,2.98],
	[29140.6,34195.7,3.1],
	[29139.1,34176.1,3.1],
	[29113,34223.6,4.35],
	[29189.6,34215.9,4.34],
	[29023.8,34223,4.35],
	[29022.5,34038.1,4.31],
	[29100.3,34077.5,4.34],
	[29113.5,34077.1,4.34],
	[29180.7,34090.5,3.12],
	[29181.9,34108.5,3.37],
	[29182.1,34125.7,3.13],
	[29134.6,34047.1,7.46],
	[29040.1,34046.2,7.52],
	[29194.3,34042.5,4.34],
	[29073.9,34137.6,7.5],
	[29132.2,34137.1,7.5],
	//boden
	[29128.4,34230.6,0.0],
	[29115.3,34230.7,0.0],
	[29130,34224.7,0.0],
	[29181.8,34204.8,0.0],
	[29183.3,34150.8,0.0],
	[29189,34125.7,0.0],
	[29189.6,34109.5,0.0],
	[29119.8,34042.8,0.0],
	[29116.7,34029,0.0],
	[29100.7,34028.1,0.0],
	[29098.3,34034.8,0.0],
	[29115.5,34038.1,0.0],
	[29062.8,34056.3,0.0],
	[29108.1,34076.1,0.0],
	[29036.5,34059.5,0.0],
	[29038.8,34118.1,0.0],
	[29036.1,34162.8,0.0],
	[29035.8,34206.5,0.0],
	[29062.5,34185.6,0.0],
	[29151,34185.1,0.0],
	[29157.1,34052.3,0.0],
	[29118.5,34109,0.0],
	[29084.5,34108.8,0.0],
	[29122.1,34225.1,0.0],
	[29109.3,34028.3,0.0],
	[29118.7,34194.9,0.0],
	[29130.4,34194.6,0.0],
	[29130.4,34172.9,0.0],
	[29119.3,34172.3,0.0]
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
	[[29070.1,34075.6,0],"I_CargoNet_01_ammo_F"],
	[[29077.9,34075.7,0],"I_CargoNet_01_ammo_F"],
	[[29151,34074.8,0],"I_CargoNet_01_ammo_F"],
	[[29139.2,34074.9,0],"I_CargoNet_01_ammo_F"]
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

// is %chance greater than random number
if (_VehicleChance >= (random 100)) then {
											_pinCode = (1000 +(round (random 8999)));
											_vehicle = ["Mrshounka_mp4_Rework_p_noir_f",[29125.1,34182.9,0],_pinCode] call DMS_fnc_SpawnPersistentVehicle;
											_msgWIN = ['#06aedb',format ["Gott sei dank , überlebt und die Beute eingesackt, code ist %1...",_pinCode]];
											} else
											{
											_vehicle = ["Mrshounka_pagani_Rework_p_rouge_f",[29125.1,34182.9,0]] call DMS_fnc_SpawnNonPersistentVehicle;
											_msgWIN = ['#06aedb',"Gott sei dank , überlebt und die Beute eingesackt"];
											};

// Define mission-spawned objects and loot values with vehicle
_missionObjs =
[
	_staticGuns,			// static gun(s). Note, we don't add the base itself because it already spawns on server start.
	[_vehicle],				// vehicle prize
	[[_crate0,_crate_loot_values0]]
];	
											
// Define Mission Start message
_msgStart = ['#06aedb',format["Metzellfest ist eröffnet by %1 terrorists",_difficultyM]];

// Define Mission Win message defined in vehicle choice

// Define Mission Lose message
_msgLOSE = ['#FF0000',"Niedergemetzellt ihr nobs,Beute ist futsch."];

// Define mission name (for map marker and logging)
_missionName = "Metzellfest";

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