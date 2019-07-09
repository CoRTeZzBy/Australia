/*
	"TKO Trainingslager" v 1 static mission for Australia.
*/

private ["_AICount", "_AIMaxReinforcements", "_AItrigger", "_AIwave", "_AIdelay", "_staticguns", "_missionObjs", "_crate0", "_cash0", "_crate_loot_values0", "_crate_weapons0", "_crate_items0", "_difficultyM", "_difficulty", "_PossibleDifficulty", "_msgWIN", "_vehicle","_veh", "_pinCode", "_VehicleChance"];

// For logging purposes
_num = DMS_MissionCount;

// Set mission side (only "bandit" is supported for now)
_side = "bandit";

_pos = [17624.7,34211.0]; //insert the centre here

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
_AIMaxReinforcements = (2 + (round (random 1)));		//AI reinforcement cap , AI Verstärkungskappe
_AItrigger = (6 + (round (random 2)));					//If AI numbers fall below this number then reinforce if any left from AIMax , Maximaler AI-Wert in Verstärkungswellen
_AIwave = (1 + (round (random 1)));						//Max amount of AI in reinforcement wave
_AIdelay = (1 + (round (random 1)));					//The delay between reinforcements ,Die Verzögerung zwischen Verstärkungen
_VehicleChance = 90;									//10% SpawnPersistentVehicle chance
_crate_weapons0 	= (40 + (round (random 5)));		//Crate 0 weapons number
_crate_items0 		= (40 + (round (random 5)));		//Crate 0 items number
_cash0 = (60000 + round (random (95000)));				//Tabs for crate0
	};
	case "moderate":
	{
_difficulty = "moderate";
_AICount = (20 + (round (random 2)));
_AIMaxReinforcements = (2 + (round (random 1)));		//AI reinforcement cap , AI Verstärkungskappe
_AItrigger = (6 + (round (random 2)));					//If AI numbers fall below this number then reinforce if any left from AIMax , Maximaler AI-Wert in Verstärkungswellen
_AIwave = (1 + (round (random 1)));						//Max amount of AI in reinforcement wave
_AIdelay = (1 + (round (random 1)));					//The delay between reinforcements ,Die Verzögerung zwischen Verstärkungen
_VehicleChance = 90;									//20% SpawnPersistentVehicle chance
_crate_weapons0 	= (50 + (round (random 5)));
_crate_items0 		= (40 + (round (random 5)));
_cash0 = (70000 + round (random (95000)));				//Tabs for crate0
	};
	case "difficult":
	{
_difficulty = "difficult";
_AICount = (22 + (round (random 2)));
_AIMaxReinforcements = (2 + (round (random 1)));		//AI reinforcement cap , AI Verstärkungskappe
_AItrigger = (6 + (round (random 2)));					//If AI numbers fall below this number then reinforce if any left from AIMax , Maximaler AI-Wert in Verstärkungswellen
_AIwave = (1 + (round (random 1)));						//Max amount of AI in reinforcement wave
_AIdelay = (1 + (round (random 1)));					//The delay between reinforcements ,Die Verzögerung zwischen Verstärkungen
_VehicleChance = 90;									//20% SpawnPersistentVehicle chance
_crate_weapons0 	= (60 + (round (random 5)));
_crate_items0 		= (40 + (round (random 5)));
_cash0 = (80000 + round (random (95000)));				//Tabs for crate0
	};
	//case "hardcore":
	default
	{
_difficulty = "hardcore";
_AICount = (25 + (round (random 2)));
_AIMaxReinforcements = (2 + (round (random 1)));		//AI reinforcement cap , AI Verstärkungskappe
_AItrigger = (6 + (round (random 2)));					//If AI numbers fall below this number then reinforce if any left from AIMax , Maximaler AI-Wert in Verstärkungswellen
_AIwave = (1 + (round (random 1)));						//Max amount of AI in reinforcement wave
_AIdelay = (1 + (round (random 1)));					//The delay between reinforcements ,Die Verzögerung zwischen Verstärkungen
_VehicleChance = 50;									//20% SpawnPersistentVehicle chance
_crate_weapons0 	= (60 + (round (random 5)));
_crate_items0 		= (50 + (round (random 5)));
_cash0 = (90000 + round (random (95000)));				//Tabs for crate0
	};
};

// Define spawn locations for AI Soldiers. These will be used for the initial spawning of AI as well as reinforcements.
// The center spawn location is added 3 times so at least 3 AI will spawn initially at the center location, and so that future reinforcements are more likely to spawn at the center.
_AISoldierSpawnLocations =
[
	//AI
	[17643.9,34206,0],
	[17596.1,34200.9,0],
	[17642.2,34170.8,0],
	[17579.6,34161.2,0],
	[17560.9,34129.7,0],
	[17511,34149.9,0],
	[17497.4,34202.2,0],
	[17687.3,34205.4,0],
	[17736.3,34215.4,0],
	[17819.8,34147.2,0],
	[17819.1,34179.7,0],
	[17807.7,34278.6,0],
	[17805.7,34351,0],
	[17791.1,34245,0],
	[17638.1,34269.7,0],
	[17616.4,34285.3,0],
	[17513.1,34283.9,0],
	[17595.5,34235.5,0],
	[17572,34253.4,0],
	[17597.7,34253.2,0],
	[17624.4,34232.7,0],
	[17644.1,34232.6,0],
	[17475.7,34156.9,0],
	[17485.6,34174.1,0],
	[17541.6,34164.2,0],
	[17705.9,34182.3,0],
	[17642.5,34324.2,0],
	[17592.1,34321,0]
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
	[17520.3,34133.7,17.89],
	[17504.9,34131.5,17.89],
	[17570.8,34097,17.89],
	[17570.1,34105.4,17.89],
	[17546.2,34105.4,17.89],
	[17545.8,34097,17.89],
	[17658.1,34351.3,17.89],
	[17657.9,34358.1,17.89],
	//Boden
	[17565,34092.9,0],
	[17550.7,34093.6,0],
	[17545.4,34111.4,0],
	[17572.1,34111.9,0],
	[17533.3,34128.7,0],
	[17471.9,34140.5,0.73],
	[17467.5,34200,0],
	[17505.9,34197.4,0],
	[17524.6,34196.9,0],
	[17578.1,34155.5,0],
	[17601.4,34185.3,0.62],
	[17607.7,34129.2,0.62],
	[17570.9,34245.6,0],
	[17588.3,34246.8,0],
	[17588.3,34241.4,0],
	[17615.5,34245.7,0],
	[17629.3,34155.2,0],
	[17797.2,34143.5,0],
	[17800.8,34169.9,0],
	[17835.6,34130.1,0],
	[17822.4,34294.9,0],
	[17807.7,34297.9,0],
	[17750.9,34186.2,0],
	[17718.8,34177,0],
	[17719.3,34161.8,0],
	[17691,34121.6,0],
	[17622.5,34259.4,0.62],
	[17651.4,34337.9,0],
	[17619.6,34294.4,0],
	[17648.7,34240.4,0],
	[17659.4,34280.4,0],
	[17530.3,34273.2,0],
	[17641.6,34220.8,0],
	[17603.8,34221,0],
	[17603.7,34192.9,0],
	[17652.9,34194.2,0],
	[17667.7,34189.7,0],
	[17632.8,34230.9,0],
	[17618.2,34228.2,0]
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
	[17520.3,34133.7,17.89],
	[17504.9,34131.5,17.89],
	[17570.8,34097,17.89],
	[17570.1,34105.4,17.89],
	[17546.2,34105.4,17.89],
	[17545.8,34097,17.89],
	[17658.1,34351.3,17.89],
	[17657.9,34358.1,17.89],
	//Boden
	[17565,34092.9,0],
	[17550.7,34093.6,0],
	[17545.4,34111.4,0],
	[17572.1,34111.9,0],
	[17533.3,34128.7,0],
	[17471.9,34140.5,0.73],
	[17467.5,34200,0],
	[17505.9,34197.4,0],
	[17524.6,34196.9,0],
	[17578.1,34155.5,0],
	[17601.4,34185.3,0.62],
	[17607.7,34129.2,0.62],
	[17570.9,34245.6,0],
	[17588.3,34246.8,0],
	[17588.3,34241.4,0],
	[17615.5,34245.7,0],
	[17629.3,34155.2,0],
	[17797.2,34143.5,0],
	[17800.8,34169.9,0],
	[17835.6,34130.1,0],
	[17822.4,34294.9,0],
	[17807.7,34297.9,0],
	[17750.9,34186.2,0],
	[17718.8,34177,0],
	[17719.3,34161.8,0],
	[17691,34121.6,0],
	[17622.5,34259.4,0.62],
	[17651.4,34337.9,0],
	[17619.6,34294.4,0],
	[17648.7,34240.4,0],
	[17659.4,34280.4,0],
	[17530.3,34273.2,0],
	[17641.6,34220.8,0],
	[17603.8,34221,0],
	[17603.7,34192.9,0],
	[17652.9,34194.2,0],
	[17667.7,34189.7,0],
	[17632.8,34230.9,0],
	[17618.2,34228.2,0]
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
	//Loot
	//[[17648.3,34220.8,0],"I_CargoNet_01_ammo_F"],
	//[[17594.7,34218.3,0],"I_CargoNet_01_ammo_F"],
	//[[17671,34197,0],"I_CargoNet_01_ammo_F"],
	//[[17580.7,34184.6,0],"I_CargoNet_01_ammo_F"],
	[[17580.7,34167.5,0],"I_CargoNet_01_ammo_F"],
	[[17580.8,34132,0],"I_CargoNet_01_ammo_F"]
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
		[_pos,100,random 360] call DMS_fnc_SelectOffsetPos,
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

// is %chance greater than random number O_APC_Tracked_02_cannon_F   O_T_APC_Wheeled_02_rcws_ghex_F  B_APC_Tracked_01_rcws_F   gorgon I_APC_Wheeled_03_cannon_F
if (_VehicleChance >= (random 100)) then {
											_pinCode = (1000 +(round (random 8999)));
											_vehicle = ["MrShounka_mp4_Rework_p_verte_f",[17617.594,34283.316,0],_pinCode] call DMS_fnc_SpawnPersistentVehicle;
											_msgWIN = ['#06aedb',format ["Ihr habt die Trainingslager gesichert,code ist %1...",_pinCode]];
											} else
											{
											_vehicle = ["MrShounka_lykan_Rework_p_jaune_f",[17617.594,34283.316,0]] call DMS_fnc_SpawnNonPersistentVehicle;
											_msgWIN = ['#06aedb',"Ihr habt die Trainingslager gesichert"];
											};

// Define mission-spawned objects and loot values with vehicle
_missionObjs =
[
	_staticGuns,			// static gun(s). Note, we don't add the base itself because it already spawns on server start.
	[_vehicle],				// vehicle prize
	[[_crate0,_crate_loot_values0]]
];	
											
// Define Mission Start message
_msgStart = ['#06aedb',format["In Trainingslager wird ein Schwere Heli von %1 Soldaten vorgeführt",_difficultyM]];

// Define Mission Win message defined in vehicle choice

// Define Mission Lose message
_msgLOSE = ['#FF0000',"Guerilla haben den Schwere Heli gesichert."];

// Define mission name (for map marker and logging)
_missionName = "Trainingslager";

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