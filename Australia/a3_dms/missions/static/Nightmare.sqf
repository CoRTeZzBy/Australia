/*
	"Nightmare" v1 static mission for Australia.
	Created by Thomas TKO
	I_MRAP_03_hmg_F increases persistent chance with difficulty
	tko-gameserver.de
*/

private ["_AICount", "_AIMaxReinforcements", "_AItrigger", "_AIwave", "_AIdelay", "_staticguns", "_missionObjs", "_crate0", "_cash0", "_crate_loot_values0", "_crate_weapons0", "_crate_items0", "_difficultyM", "_difficulty", "_PossibleDifficulty", "_msgWIN", "_vehicle","_veh", "_pinCode", "_VehicleChance"];

// For logging purposes
_num = DMS_MissionCount;

// Set mission side (only "bandit" is supported for now)
_side = "bandit";

_pos = [19827.7,24413.9,0]; //insert the centre here

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
_AICount = (14 + (round (random 2)));					//AI starting numbers
_AIMaxReinforcements = (1 + (round (random 1)));		//AI reinforcement cap , AI Verstärkungskappe
_AItrigger = (6 + (round (random 2)));					//If AI numbers fall below this number then reinforce if any left from AIMax , Maximaler AI-Wert in Verstärkungswellen
_AIwave = (1 + (round (random 1)));						//Max amount of AI in reinforcement wave
_AIdelay = (1 + (round (random 1)));					//The delay between reinforcements ,Die Verzögerung zwischen Verstärkungen
_VehicleChance = 10;									//10% SpawnPersistentVehicle chance
_crate_weapons0 	= (50 + (round (random 5)));		//Crate 0 weapons number
_crate_items0 		= (40 + (round (random 5)));		//Crate 0 items number
_cash0 = (80000 + round (random (95000)));				//Tabs for crate0
	};
	case "moderate":
	{
_difficulty = "moderate";
_AICount = (16 + (round (random 2)));
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
_AICount = (18 + (round (random 2)));
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
_AICount = (20 + (round (random 2)));
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
	[19826,24438,0],
	[19861.3,24443.6,0],
	[19815.5,24470.6,0],
	[19781.4,24426.8,0],
	[19829.2,24364.5,0],
	[19883.1,24430.5,0],
	[19921.3,24446.5,0],
	[19905.2,24368,0],
	[19946.8,24421.4,0],
	[19914.1,24293.2,0],
	[19907.6,24303.8,0],
	[19960.2,24252.3,0],
	[20012.2,24246.8,0],
	[19764.2,24319.3,0],
	[19756.6,24420.7,0],
	[19767.4,24390.4,0],
	[19783.2,24461.3,0],
	[19811.3,24496.4,0],
	[19850.3,24494,0],
	[19866.1,24402.2,0]
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
    //HmgHoch
	[19668.8,24490,19.142],
	[19644.1,24512,28.600],
	[19645.2,24585.1,17.889],
	[19647.7,24577.3,17.889],
	[19655.3,24514.9,6.316],
	[19774.4,24413.4,17.852],
	[19815,24375.9,17.852],
	[19878.8,24457.7,22.341],
	[19890.8,24438.3,14.600],
	[20117.5,24351.1,17.889],
	[20112.2,24356.4,17.890],
	[19782.8,24298.7,3.400],
	[19728.6,24336,3.400],
	[19732.4,24341.5,0.876],
	[19715.7,24419.5,9.318],
	[19855.3,24404.6,3.308],
	[19896.3,24387.5,0.602],
	[19806,24389.1,12.638],
	[19768.7,24419.4,12.639],
	[19586.9,24266.7,17.891],
	[19473.2,24368.9,17.890],	
    [19798.4,24464.9,3.937],
	[19823.3,24495.9,3.937],
    //HmgBoden
	[20024,24230.7,0],
	[20027.9,24249.9,0.0],
	[19885.4,24385.3,0],
	[19907.2,24409.7,0],
	[19921.5,24435.6,0],
	[19897.6,24451.9,0],
	[19889.5,24427.8,0],
	[19886.3,24423,0],
	[19845.4,24406.1,0],
	[19825.8,24427.3,0],
	[19801.9,24452.6,0],
	[19826.9,24483.1,0],
	[19850.9,24518.4,0],
	[19836.1,24511.6,0],
	[19815.9,24491.5,0],
	[19776.7,24486.2,0],
	[19831.5,24452.9,0],
	[19812.7,24391.4,0],
	[19813.6,24363.3,0],
	[19875.6,24492,0]
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
    //HmgHoch
	[19668.8,24490,19.142],
	[19644.1,24512,28.600],
	[19645.2,24585.1,17.889],
	[19647.7,24577.3,17.889],
	[19655.3,24514.9,6.316],
	[19774.4,24413.4,17.852],
	[19815,24375.9,17.852],
	[19878.8,24457.7,22.341],
	[19890.8,24438.3,14.600],
	[20117.5,24351.1,17.889],
	[20112.2,24356.4,17.890],
	[19782.8,24298.7,3.400],
	[19728.6,24336,3.400],
	[19732.4,24341.5,0.876],
	[19715.7,24419.5,9.318],
	[19855.3,24404.6,3.308],
	[19896.3,24387.5,0.602],
	[19806,24389.1,12.638],
	[19768.7,24419.4,12.639],
	[19586.9,24266.7,17.891],
	[19473.2,24368.9,17.890],	
    [19798.4,24464.9,3.937],
	[19823.3,24495.9,3.937],
    //HmgBoden
	[20024,24230.7,0],
	[20027.9,24249.9,0.0],
	[19885.4,24385.3,0],
	[19907.2,24409.7,0],
	[19921.5,24435.6,0],
	[19897.6,24451.9,0],
	[19889.5,24427.8,0],
	[19886.3,24423,0],
	[19845.4,24406.1,0],
	[19825.8,24427.3,0],
	[19801.9,24452.6,0],
	[19826.9,24483.1,0],
	[19850.9,24518.4,0],
	[19836.1,24511.6,0],
	[19815.9,24491.5,0],
	[19776.7,24486.2,0],
	[19831.5,24452.9,0],
	[19812.7,24391.4,0],
	[19813.6,24363.3,0],
	[19875.6,24492,0]
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
	[[19852.2,24446.4,0],"I_CargoNet_01_ammo_F"], 
	[[19795.1,24398.2,0],"I_CargoNet_01_ammo_F"]
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
											_vehicle = ["Mrshounka_mp4_Rework_p_noir_f",[19838.2,24433.9,0],_pinCode] call DMS_fnc_SpawnPersistentVehicle;
											_msgWIN = ['#06aedb',format ["Nightmare on PineGap geschafft entry code is %1...",_pinCode]];
											} else
											{
											_vehicle = ["Mrshounka_mp4_Rework_p_noir_f",[19838.2,24433.9,0]] call DMS_fnc_SpawnNonPersistentVehicle;
											_msgWIN = ['#06aedb',"Nightmare on PineGap geschafft"];
											};

// Define mission-spawned objects and loot values with vehicle
_missionObjs =
[
	_staticGuns+[_veh],			// static gun(s). Note, we don't add the base itself because it already spawns on server start.
	[_vehicle],				// vehicle prize
	[[_crate0,_crate_loot_values0]]
];	
											
// Define Mission Start message
_msgStart = ['#06aedb',format["In PineGap findest du dein Alptraum %1 terrorists",_difficultyM]];

// Define Mission Win message defined in vehicle choice

// Define Mission Lose message
_msgLOSE = ['#FF0000',"Da war der Alptraum halb so wild."];

// Define mission name (for map marker and logging)
_missionName = "Nightmare";

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
