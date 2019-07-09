/*
	"TKO TerrorCamp" v 1 static mission for Tanoa.
*/

private ["_AICount", "_AIMaxReinforcements", "_AItrigger", "_AIwave", "_AIdelay", "_staticguns", "_missionObjs", "_crate0", "_cash0", "_crate_loot_values0", "_crate_weapons0", "_crate_items0", "_difficultyM", "_difficulty", "_PossibleDifficulty", "_msgWIN", "_vehicle","_veh", "_pinCode", "_VehicleChance"];

// For logging purposes
_num = DMS_MissionCount;

// Set mission side (only "bandit" is supported for now)
_side = "bandit";

_pos = [27967,8106,0]; //insert the centre here

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
_cash0 = (60000 + round (random (95000)));				//Tabs for crate0
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
_crate_weapons0 	= (60 + (round (random 5)));
_crate_items0 		= (40 + (round (random 5)));
_cash0 = (80000 + round (random (95000)));				//Tabs for crate0
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
	[27958.2,8119.75,0],
	[27963.4,8097.36,0],
	[27986.5,8087.21,0],
	[27995.8,8108.24,0],
	[27975.9,8114.87,0],
	[27973.2,8129.21,0],
	[27911.6,8112.29,0],
	[27937.7,8158.92,0],
	[27965.4,8153.14,0],
	[28009.9,8128.25,0],
	[28027.7,8103.54,0],
	[28012.5,8061.24,0],
	[28002,8088.09,0],
	[27993.1,8122.09,0],
	[27946,8109.21,0],
	[27964.4,8124.08,0]
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
	//Boden
	[27967.5,8106.61,0],
	[27961.2,8141.63,0],
	[27974.1,8132.92,0],
	[27964.6,8135.91,0],
	[27969.8,8134.2,0],
	[27978.5,8143.48,0],
	[27965.8,8148.82,0],
	[28005.2,8067.42,0],
	[28008.3,8074.19,0],
	[28019.7,8090.92,0],
	[28006.6,8082.95,0],
	[28008.5,8086.65,0],
	[27995.9,8094.36,0],
	[27993.9,8088.42,0],
	[28002.2,8115.98,0],
	[28009.6,8103.09,0],
	[27997.2,8075.08,0],
	[27985.3,8136.06,0],
	[27941.6,8129.29,0],
	[27944.8,8138.35,0],
	[27948.4,8148.31,0],
	//Hoch
	[27941.8,8120.98,5.262],
	[27948.9,8133.82,5.262],
	[27931.3,8134.87,5.245],
	[27956.7,8090.23,5.093],
	[27975.7,8085.48,5.093],
	[28000.5,8068.73,10.175],
	[28002.2,8071.74,10.175],
	[28017.8,8103.09,10.175],
	[28016.2,8100.05,10.175],
	[27989.8,8124.9,6.027],
	[27999.7,8119.74,6.027],
	[27975.1,8105.31,5.093],
	[27973.8,8107.88,30.314],
	[27973.3,8102.11,30.314],
	[27969.3,8098.69,30.314],
	[27969,8102.16,30.314],
	[27971.1,8106.02,30.314],
	[27992.8,8077.22,5.093],
	[27988.5,8074.23,5.093],
	[28001.9,8096.53,5.093],
	[28012.3,8091.83,6.208],
	[28004.6,8076.53,6.208],
	[27930.8,8108.79,0.824]
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
	//Boden
	[27967.5,8106.61,0],
	[27961.2,8141.63,0],
	[27974.1,8132.92,0],
	[27964.6,8135.91,0],
	[27969.8,8134.2,0],
	[27978.5,8143.48,0],
	[27965.8,8148.82,0],
	[28005.2,8067.42,0],
	[28008.3,8074.19,0],
	[28019.7,8090.92,0],
	[28006.6,8082.95,0],
	[28008.5,8086.65,0],
	[27995.9,8094.36,0],
	[27993.9,8088.42,0],
	[28002.2,8115.98,0],
	[28009.6,8103.09,0],
	[27997.2,8075.08,0],
	[27985.3,8136.06,0],
	[27941.6,8129.29,0],
	[27944.8,8138.35,0],
	[27948.4,8148.31,0],
	//Hoch
	[27941.8,8120.98,5.262],
	[27948.9,8133.82,5.262],
	[27931.3,8134.87,5.245],
	[27956.7,8090.23,5.093],
	[27975.7,8085.48,5.093],
	[28000.5,8068.73,10.175],
	[28002.2,8071.74,10.175],
	[28017.8,8103.09,10.175],
	[28016.2,8100.05,10.175],
	[27989.8,8124.9,6.027],
	[27999.7,8119.74,6.027],
	[27975.1,8105.31,5.093],
	[27973.8,8107.88,30.314],
	[27973.3,8102.11,30.314],
	[27969.3,8098.69,30.314],
	[27969,8102.16,30.314],
	[27971.1,8106.02,30.314],
	[27992.8,8077.22,5.093],
	[27988.5,8074.23,5.093],
	[28001.9,8096.53,5.093],
	[28012.3,8091.83,6.208],
	[28004.6,8076.53,6.208],
	[27930.8,8108.79,0.824]
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
	[[27977,8126.57,0],"I_CargoNet_01_ammo_F"],
	[[27943.2,8103.24,0],"I_CargoNet_01_ammo_F"]
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

// is %chance greater than random number O_APC_Tracked_02_cannon_F   O_T_APC_Wheeled_02_rcws_ghex_F  B_APC_Tracked_01_rcws_F   gorgon I_APC_Wheeled_03_cannon_F    O_APC_Wheeled_02_rcws_F 
if (_VehicleChance >= (random 100)) then {
											_pinCode = (1000 +(round (random 8999)));
											_vehicle = ["Mrshounka_monster_Rework_noir_f",[27953,8141.66,0],_pinCode] call DMS_fnc_SpawnPersistentVehicle;
											_msgWIN = ['#06aedb',format ["Ihr habt das TerrorCamp erobert und die Waffen eingesackt, code ist %1...",_pinCode]];
											} else
											{
											_vehicle = ["Mrshounka_monster_Rework_noir_f",[27953,8141.66,0]] call DMS_fnc_SpawnNonPersistentVehicle;
											_msgWIN = ['#06aedb',"Ihr habt das TerrorCamp erobert und die Waffen eingesackt"];
											};

// Define mission-spawned objects and loot values with vehicle
_missionObjs =
[
	_staticGuns,			// static gun(s). Note, we don't add the base itself because it already spawns on server start.
	[_vehicle],				// vehicle prize
	[[_crate0,_crate_loot_values0]]
];	
											
// Define Mission Start message
_msgStart = ['#06aedb',format["Terroristen laden Waffen um ",_difficultyM]];

// Define Mission Win message defined in vehicle choice

// Define Mission Lose message
_msgLOSE = ['#FF0000',"Terroristen haben die Waffen gesichert."];

// Define mission name (for map marker and logging)
_missionName = "TerrorCamp";

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