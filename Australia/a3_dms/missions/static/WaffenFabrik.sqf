/*
	"TKO WaffenFabrik" v 1 static mission for Australia.
*/

private ["_AICount", "_AIMaxReinforcements", "_AItrigger", "_AIwave", "_AIdelay", "_staticguns", "_missionObjs", "_crate0", "_cash0", "_crate_loot_values0", "_crate_weapons0", "_crate_items0", "_difficultyM", "_difficulty", "_PossibleDifficulty", "_msgWIN", "_vehicle","_veh", "_pinCode", "_VehicleChance"];

// For logging purposes
_num = DMS_MissionCount;

// Set mission side (only "bandit" is supported for now)
_side = "bandit";

_pos = [23130.7,19778.7,0]; //insert the centre here

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
_crate_weapons0 	= (60 + (round (random 5)));		//Crate 0 weapons number
_crate_items0 		= (30 + (round (random 5)));		//Crate 0 items number
_cash0 = (80000 + round (random (95000)));				//Tabs for crate0
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
_crate_weapons0 	= (70 + (round (random 5)));
_crate_items0 		= (50 + (round (random 5)));
_cash0 = (90000 + round (random (95000)));				//Tabs for crate0
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
_crate_weapons0 	= (80 + (round (random 5)));
_crate_items0 		= (55 + (round (random 5)));
_cash0 = (90000 + round (random (95000)));				//Tabs for crate0
	};
	//case "hardcore":
	default
	{
_difficulty = "hardcore";
_AICount = (25 + (round (random 2)));
_AIMaxReinforcements = (1 + (round (random 1)));		//AI reinforcement cap , AI Verstärkungskappe
_AItrigger = (6 + (round (random 2)));					//If AI numbers fall below this number then reinforce if any left from AIMax , Maximaler AI-Wert in Verstärkungswellen
_AIwave = (1 + (round (random 1)));						//Max amount of AI in reinforcement wave
_AIdelay = (1 + (round (random 1)));					//The delay between reinforcements ,Die Verzögerung zwischen Verstärkungen
_VehicleChance = 100;									//20% SpawnPersistentVehicle chance
_crate_weapons0 	= (90 + (round (random 5)));
_crate_items0 		= (50 + (round (random 5)));
_cash0 = (90000 + round (random (95000)));				//Tabs for crate0
	};
};

// Define spawn locations for AI Soldiers. These will be used for the initial spawning of AI as well as reinforcements.
// The center spawn location is added 3 times so at least 3 AI will spawn initially at the center location, and so that future reinforcements are more likely to spawn at the center.
_AISoldierSpawnLocations =
[
	//AI
	[23242.4,19559.4,0.0],
	[23206.8,19626.8,0.0],
	[23240,19693.4,0.0],
	[23170.8,19661.4,0.0],
	[23103.2,19682.9,0.0],
	[23079,19671.3,0.0],
	[23063.8,19676.9,0.0],
	[23028.2,19716.4,0.0],
	[23012.9,19706.6,0.0],
	[23039.1,19733.8,0.0],
	[23141.6,19713.2,0.0],
	[23150.3,19685.7,0.0],
	[23095.1,19736.8,0.0],
	[23056.3,19757.4,0.0],
	[23042.8,19789.6,0.0],
	[23074.4,19813,0.0],
	[23085.5,19831,0.0],
	[23154.2,19826.2,0.0],
	[23199,19823.8,0.0],
	[23214.6,19757.6,0.0],
	[23166.7,19752,0.0],
	[23115.9,19729.9,0.0]
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
	[23164.8,19642.8,6.8],
	[23147.1,19644.7,10.1],
	[23151.8,19654.1,10.1],
	[23180.4,19669.9,10.16],
	[23167.5,19675.3,10.12],
	[23043.4,19687.3,18.27],
	[23035.7,19690.9,18.28],
	[23026.4,19695.2,18.27],
	[23274.1,19864,18.27],
	[23264.1,19865.3,18.28],
	[23127,19860,9.12],
	[23119,19864.7,10.77],
	[23117.5,19849.3,10.85],
	[23079.7,19869.6,10.13],
	[23079.3,19855.1,10.4],
	[23136.2,19736.2,11.5],
	[23157.3,19714.5,9.05],
	[23159.9,19720.2,9.05],
	[23058.1,19768.5,11.48],
	[23068.1,19774.3,10.7],
	[23072.1,19783.4,10.72],
	[23073.4,19793.7,9.03],
	[23080.4,19789.7,9.09],
	[23168.9,19791,12.30],
	[23164.3,19779,12.30],
	[23177.2,19773.3,12.30],
	[23181.9,19784.5,12.30],
	[23181,19777.8,12.87],
	[23143.9,19728.9,12.9],
	[23149.4,19726.5,10.91],
	[23135.3,19680,3.32],
	[23128.3,19691.8,4.73],
	//Boden
	[23218.8,19613.9,0.0],
	[23245.3,19550.7,0.0],
	[23236.3,19545.7,0.0],
	[23188.6,19671.3,0.0],
	[23175.3,19634.2,0.0],
	[23186.4,19659.3,0.0],
	[23182.7,19650.7,0.0],
	[23154.7,19647.1,0.0],
	[23128.2,19650.8,0.0],
	[23116,19654.1,0.0],
	[23113.2,19658.1,0.0],
	[23133.5,19676.2,0.0],
	[23102.7,19663.8,0.0],
	[23088.4,19666.2,0.0],
	[23050.3,19682.3,0.0],
	[23031.4,19694.2,0.0],
	[23021.3,19719.5,0.0],
	[23001,19702.5,0.0],
	[23026.3,19727.5,0.0],
	[23050.3,19775.8,0.0],
	[23071.7,19760.5,0.0],
	[23127.8,19723.6,0.0],
	[23130.4,19696.4,0.0],
	[23172.5,19722.3,0.0],
	[23234.2,19712.4,0.0],
	[23231.9,19667.9,0.0],
	[23183.4,19776.2,0.0],
	[23160.9,19784.1,0.0],
	[23080,19797.9,0.0],
	[23126.4,19851.4,0.0],
	[23080.9,19878.8,0.0],
	[23127.9,19870.8,0.0],
	[23193.7,19876.7,0.0],
	[23181.9,19797.4,0.0],
	[23140.8,19775.1,0.0],
	[23120.2,19785.1,0.0],
	[23125.8,19769.5,0.0],
	[23162.4,19811.5,0.0],
	[23134.2,19823.1,0.0],
	[23149.7,19818.7,0.0]
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
	[23164.8,19642.8,6.8],
	[23147.1,19644.7,10.1],
	[23151.8,19654.1,10.1],
	[23180.4,19669.9,10.16],
	[23167.5,19675.3,10.12],
	[23043.4,19687.3,18.27],
	[23035.7,19690.9,18.28],
	[23026.4,19695.2,18.27],
	[23274.1,19864,18.27],
	[23264.1,19865.3,18.28],
	[23127,19860,9.12],
	[23119,19864.7,10.77],
	[23117.5,19849.3,10.85],
	[23079.7,19869.6,10.13],
	[23079.3,19855.1,10.4],
	[23136.2,19736.2,11.5],
	[23157.3,19714.5,9.05],
	[23159.9,19720.2,9.05],
	[23058.1,19768.5,11.48],
	[23068.1,19774.3,10.7],
	[23072.1,19783.4,10.72],
	[23073.4,19793.7,9.03],
	[23080.4,19789.7,9.09],
	[23168.9,19791,12.30],
	[23164.3,19779,12.30],
	[23177.2,19773.3,12.30],
	[23181.9,19784.5,12.30],
	[23181,19777.8,12.87],
	[23143.9,19728.9,12.9],
	[23149.4,19726.5,10.91],
	[23135.3,19680,3.32],
	[23128.3,19691.8,4.73],
	//Boden
	[23218.8,19613.9,0.0],
	[23245.3,19550.7,0.0],
	[23236.3,19545.7,0.0],
	[23188.6,19671.3,0.0],
	[23175.3,19634.2,0.0],
	[23186.4,19659.3,0.0],
	[23182.7,19650.7,0.0],
	[23154.7,19647.1,0.0],
	[23128.2,19650.8,0.0],
	[23116,19654.1,0.0],
	[23113.2,19658.1,0.0],
	[23133.5,19676.2,0.0],
	[23102.7,19663.8,0.0],
	[23088.4,19666.2,0.0],
	[23050.3,19682.3,0.0],
	[23031.4,19694.2,0.0],
	[23021.3,19719.5,0.0],
	[23001,19702.5,0.0],
	[23026.3,19727.5,0.0],
	[23050.3,19775.8,0.0],
	[23071.7,19760.5,0.0],
	[23127.8,19723.6,0.0],
	[23130.4,19696.4,0.0],
	[23172.5,19722.3,0.0],
	[23234.2,19712.4,0.0],
	[23231.9,19667.9,0.0],
	[23183.4,19776.2,0.0],
	[23160.9,19784.1,0.0],
	[23080,19797.9,0.0],
	[23126.4,19851.4,0.0],
	[23080.9,19878.8,0.0],
	[23127.9,19870.8,0.0],
	[23193.7,19876.7,0.0],
	[23181.9,19797.4,0.0],
	[23140.8,19775.1,0.0],
	[23120.2,19785.1,0.0],
	[23125.8,19769.5,0.0],
	[23162.4,19811.5,0.0],
	[23134.2,19823.1,0.0],
	[23149.7,19818.7,0.0]
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
	[[23186.5,19779.8,0.0],"I_CargoNet_01_ammo_F"],
	[[23084.9,19778.4,0.0],"I_CargoNet_01_ammo_F"],
	[[23148.9,19707.6,0.0],"I_CargoNet_01_ammo_F"],
	[[23096.8,19664.5,0.0],"I_CargoNet_01_ammo_F"],
	[[23128,19658.4,0.0],"I_CargoNet_01_ammo_F"],
	[[23162.2,19682.3,0.0],"I_CargoNet_01_ammo_F"],
	[[23197,19699.5,0.0],"I_CargoNet_01_ammo_F"]
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

// is %chance greater than random number O_APC_Tracked_02_cannon_F   O_T_APC_Wheeled_02_rcws_ghex_F  B_APC_Tracked_01_rcws_F   gorgon I_APC_Wheeled_03_cannon_F ["O_T_APC_Tracked_02_cannon_ghex_F",[23130.7,19778.7,0],
if (_VehicleChance >= (random 100)) then {
											_pinCode = (1000 +(round (random 8999)));
											_vehicle = ["MrShounka_mp4_Rework_p_noir_f",[23130.7,19778.7,0],_pinCode] call DMS_fnc_SpawnPersistentVehicle;
											_msgWIN = ['#06aedb',format ["Ihr habt die WaffenFabrik gesichert, code ist %1...",_pinCode]];
											} else
											{
											_vehicle = ["MrShounka_mp4_Rework_p_verte_f",[23130.7,19778.7,0]] call DMS_fnc_SpawnNonPersistentVehicle;
											_msgWIN = ['#06aedb',"Ihr habt die WaffenFabrik gesichert"];
											};

// Define mission-spawned objects and loot values with vehicle
_missionObjs =
[
	_staticGuns+[_veh],			// static gun(s). Note, we don't add the base itself because it already spawns on server start.
	[_vehicle],				// vehicle prize
	[[_crate0,_crate_loot_values0]]
];	
											
// Define Mission Start message
_msgStart = ['#06aedb',format["In der WaffenFabrik werden Panzer von %1 Söldner verladen",_difficultyM]];

// Define Mission Win message defined in vehicle choice

// Define Mission Lose message
_msgLOSE = ['#FF0000',"Truppen haben den Panzer gesichert."];

// Define mission name (for map marker and logging)
_missionName = "WaffenFabrik";

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
