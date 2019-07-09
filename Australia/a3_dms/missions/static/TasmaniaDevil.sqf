/*
	"TasmaniaDevil" v1 static mission for Australia.
	Created by Thomas TKO
	O_T_LSV_02_armed_viper_F increases persistent chance with difficulty
	tko-gameserver.de
*/

private ["_AICount", "_AIMaxReinforcements", "_AItrigger", "_AIwave", "_AIdelay", "_staticguns", "_missionObjs", "_crate0", "_cash0", "_crate_loot_values0", "_crate_weapons0", "_crate_items0", "_difficultyM", "_difficulty", "_PossibleDifficulty", "_msgWIN", "_vehicle","_veh", "_pinCode", "_VehicleChance"];

// For logging purposes
_num = DMS_MissionCount;

// Set mission side (only "bandit" is supported for now)
_side = "bandit";

_pos = [32221.3,2734.66,7.0]; //insert the centre here

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
_cash0 = (90000 + round (random (95000)));				//Tabs for crate0
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
_crate_items0 		= (40 + (round (random 5)));
_cash0 = (90000 + round (random (95000)));				//Tabs for crate0
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
_crate_weapons0 	= (70 + (round (random 5)));
_crate_items0 		= (50 + (round (random 5)));
_cash0 = (90000 + round (random (95000)));				//Tabs for crate0
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
_crate_weapons0 	= (80 + (round (random 5)));
_crate_items0 		= (60 + (round (random 5)));
_cash0 = (90000 + round (random (95000)));				//Tabs for crate0
	};
};

// Define spawn locations for AI Soldiers. These will be used for the initial spawning of AI as well as reinforcements.
// The center spawn location is added 3 times so at least 3 AI will spawn initially at the center location, and so that future reinforcements are more likely to spawn at the center.
_AISoldierSpawnLocations =
[
	//AI
	[32165.9,2805.54,7.0],
	[32175.7,2802.82,7.0],
	[32151.2,2787.08,7.0],
	[32187.6,2778.74,7.0],
	[32202.1,2766.93,7.0],
	[32245.3,2722.72,7.0],
	[32221,2700.33,7.0],
	[32246.9,2698.76,7.0],
	[32282.7,2685.67,7.0],
	[32302.6,2675.52,7.0],
	[32277.9,2664.74,7.0],
	[32301.1,2664.12,7.0],
	[32289.1,2672.16,7.0],
	[32241.8,2691.59,7.0],
	[32256.7,2678.38,7.0],
	[32264.5,2694.59,7.0],
	[32260.9,2720.15,7.0],
	[32229.5,2715.41,7.0],
	[32297.8,2636.5,7.0],
	[32309.9,2657.42,7.0],
	[32277.4,2655.74,7.0],
	[32178.5,2773.46,7.0],
	[32236,2827.34,7.0]
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
    //HMG Hoch
	[32250.6,2814.96,17.792],
	[32242.6,2821.45,17.889],
	[32252.3,2823.84,17.890],
	[32316.2,2681.24,17.890],
	[32311,2685.48,17.890],
	[32305.4,2680.06,17.889],
	[32313.2,2673.71,17.792],
	[32120.4,2781.3,4.328],
	[32136.5,2797.47,3.086],
	[32147.6,2798.02,3.126],
	[32152.9,2820.31,4.344],
	[32199.5,2871.16,4.344],
	[32239.8,2837.54,4.344],
	[32229.3,2810.53,3.127],
	[32238.1,2809.07,3.127],
	[32252.8,2707.38,4.347],
	[32269.3,2658.56,4.344],
	[32294.2,2656.98,3.127],
	[32297.6,2648.09,3.127],
	//BodenHmg
	[32182.5,2817.74,7.0],
	[32181.7,2803.25,7.0],
	[32162.3,2800.11,7.0],
	[32195.7,2795.45,7.0],
	[32213.9,2780.75,7.0],
	[32233.1,2689.98,7.0],
	[32240.2,2683.9,7.0],
	[32304.3,2670.66,7.0],
	[32312.1,2654.93,7.0],
	[32289.6,2662.1,7.0],
	[32276.4,2672.09,7.0],
	[32247.9,2708.74,7.0],
	[32295.5,2696.05,8.0],
	[32299.4,2692.29,8.0],
	[32279.3,2647.89,8.0],
	[32283.5,2644.41,8.0],
	[32245.6,2688.1,7.0],
	[32282.2,2692.63,7.0]
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
    //HMG Hoch
	[32250.6,2814.96,17.792],
	[32242.6,2821.45,17.889],
	[32252.3,2823.84,17.890],
	[32316.2,2681.24,17.890],
	[32311,2685.48,17.890],
	[32305.4,2680.06,17.889],
	[32313.2,2673.71,17.792],
	[32120.4,2781.3,4.328],
	[32136.5,2797.47,3.086],
	[32147.6,2798.02,3.126],
	[32152.9,2820.31,4.344],
	[32199.5,2871.16,4.344],
	[32239.8,2837.54,4.344],
	[32229.3,2810.53,3.127],
	[32238.1,2809.07,3.127],
	[32252.8,2707.38,4.347],
	[32269.3,2658.56,4.344],
	[32294.2,2656.98,3.127],
	[32297.6,2648.09,3.127],
	//BodenHmg
	[32182.5,2817.74,7.0],
	[32181.7,2803.25,7.0],
	[32162.3,2800.11,7.0],
	[32195.7,2795.45,7.0],
	[32213.9,2780.75,7.0],
	[32233.1,2689.98,7.0],
	[32240.2,2683.9,7.0],
	[32304.3,2670.66,7.0],
	[32312.1,2654.93,7.0],
	[32289.6,2662.1,7.0],
	[32276.4,2672.09,7.0],
	[32247.9,2708.74,7.0],
	[32295.5,2696.05,8.0],
	[32299.4,2692.29,8.0],
	[32279.3,2647.89,8.0],
	[32283.5,2644.41,8.0],
	[32245.6,2688.1,7.0],
	[32282.2,2692.63,7.0]
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
	//[[30036,17408.2,0],"I_CargoNet_01_ammo_F"],
	//[[30036,17418.8,0],"I_CargoNet_01_ammo_F"],
	//[[30023,17432.1,0],"I_CargoNet_01_ammo_F"], 
	[[32221.3,2734.66,7.0],"I_CargoNet_01_ammo_F"]
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
											_vehicle = ["Mrshounka_agera_Rework_p_jaune_f",[32230.9,2735.68,7.0],_pinCode] call DMS_fnc_SpawnPersistentVehicle;
											_msgWIN = ['#06aedb',format ["You Kill the Devil code for %1...",_pinCode]];
											} else
											{
											_vehicle = ["Mrshounka_agera_Rework_p_jaune_f",[32230.9,2735.68,7.0]] call DMS_fnc_SpawnNonPersistentVehicle;
											_msgWIN = ['#06aedb',"You Kill the Devil"];
											};

// Define mission-spawned objects and loot values with vehicle
_missionObjs =
[
	_staticGuns,			// static gun(s). Note, we don't add the base itself because it already spawns on server start.
	[_vehicle],				// vehicle prize
	[[_crate0,_crate_loot_values0]]
];	
											
// Define Mission Start message
_msgStart = ['#06aedb',format["Kill the Devil of Tasmania %1 terrorists",_difficultyM]];

// Define Mission Win message defined in vehicle choice

// Define Mission Lose message
_msgLOSE = ['#FF0000',"The Devil Kill you."];

// Define mission name (for map marker and logging)
_missionName = "TasmaniaDevil";

// Create Markers
_markers =
[
	_pos,
	_missionName,
	_difficultyM
] call DMS_fnc_CreateMarker;

_circle = _markers select 1;
_circle setMarkerDir 0;
_circle setMarkerSize [500,500];

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