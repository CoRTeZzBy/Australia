/*
	"TKO schlachthaus" v 1 static mission for Australia.
*/

private ["_AICount", "_AIMaxReinforcements", "_AItrigger", "_AIwave", "_AIdelay", "_staticguns", "_missionObjs", "_crate0", "_cash0", "_crate_loot_values0", "_crate_weapons0", "_crate_items0", "_difficultyM", "_difficulty", "_PossibleDifficulty", "_msgWIN", "_vehicle","_veh", "_pinCode", "_VehicleChance"];

// For logging purposes
_num = DMS_MissionCount;

// Set mission side (only "bandit" is supported for now)
_side = "bandit";

_pos = [8873.48,26080.7,0]; //insert the centre here

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
_AICount = (18 + (round (random 2)));					//AI starting numbers
_AIMaxReinforcements = (2 + (round (random 1)));		//AI reinforcement cap , AI Verstärkungskappe
_AItrigger = (6 + (round (random 2)));					//If AI numbers fall below this number then reinforce if any left from AIMax , Maximaler AI-Wert in Verstärkungswellen
_AIwave = (1 + (round (random 1)));						//Max amount of AI in reinforcement wave
_AIdelay = (1 + (round (random 1)));					//The delay between reinforcements ,Die Verzögerung zwischen Verstärkungen
_VehicleChance = 90;									//10% SpawnPersistentVehicle chance
_crate_weapons0 	= (60 + (round (random 5)));		//Crate 0 weapons number
_crate_items0 		= (50 + (round (random 5)));		//Crate 0 items number
_cash0 = (80000 + round (random (95000)));				//Tabs for crate0
	};
	case "moderate":
	{
_difficulty = "moderate";
_AICount = (20 + (round (random 2)));
_AIMaxReinforcements = (2 + (round (random 1)));		//AI reinforcement cap , AI Verstärkungskappe
_AItrigger = (6 + (round (random 2)));					//If AI numbers fall below this number then reinforce if any left from AIMax , Maximaler AI-Wert in Verstärkungswellen
_AIwave = (2 + (round (random 1)));						//Max amount of AI in reinforcement wave
_AIdelay = (1 + (round (random 1)));					//The delay between reinforcements ,Die Verzögerung zwischen Verstärkungen
_VehicleChance = 90;									//20% SpawnPersistentVehicle chance
_crate_weapons0 	= (70 + (round (random 5)));
_crate_items0 		= (50 + (round (random 5)));
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
_VehicleChance = 90;									//20% SpawnPersistentVehicle chance
_crate_weapons0 	= (80 + (round (random 5)));
_crate_items0 		= (50 + (round (random 5)));
_cash0 = (90000 + round (random (95000)));				//Tabs for crate0
	};
	//case "hardcore":
	default
	{
_difficulty = "hardcore";
_AICount = (22 + (round (random 2)));
_AIMaxReinforcements = (4 + (round (random 1)));		//AI reinforcement cap , AI Verstärkungskappe
_AItrigger = (6 + (round (random 2)));					//If AI numbers fall below this number then reinforce if any left from AIMax , Maximaler AI-Wert in Verstärkungswellen
_AIwave = (3 + (round (random 1)));						//Max amount of AI in reinforcement wave
_AIdelay = (1 + (round (random 1)));					//The delay between reinforcements ,Die Verzögerung zwischen Verstärkungen
_VehicleChance = 90;									//20% SpawnPersistentVehicle chance
_crate_weapons0 	= (88 + (round (random 5)));
_crate_items0 		= (60 + (round (random 5)));
_cash0 = (90000 + round (random (95000)));				//Tabs for crate0
	};
};

// Define spawn locations for AI Soldiers. These will be used for the initial spawning of AI as well as reinforcements.
// The center spawn location is added 3 times so at least 3 AI will spawn initially at the center location, and so that future reinforcements are more likely to spawn at the center.
_AISoldierSpawnLocations =
[
	//AI
	[8781.45,26237.5,0],
	[8747.3,26243.6,0],
	[8765.78,26274.5,0],
	[8773.19,26268.9,0],
	[8806.47,26249,0],
	[8784.53,26297.3,0],
	[8802.66,26307.9,0],
	[8819.83,26349.1,0],
	[8796.56,26343,0],
	[8769.78,26298,0],
	[8745.72,26294.8,0],
	[8734.36,26254.7,0],
	[8721.39,26233.1,0],
	[8701,26207.6,0],
	[8691.47,26199.5,0],
	[8663.96,26157.4,0],
	[8623.15,26147,0],
	[8656.75,26130.8,0],
	[8763.09,26216.5,0],
	[8753.56,26205.8,0],
	[8796.13,26209.8,0],
	[8807.42,26169.8,0],
	[8757.29,26185.6,0],
	[8674.29,26192.4,0],
	[8698.5,26282.6,0],
	[8832.23,26260.8,0]
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
	[9057.37,25716.9,5.27],
	[9061.21,25723,5.28],
	[9089.9,25746.6,5.27],
	[9085.21,25751.2,5.28],
	[9089.96,25747.4,17.06],
	[9058.1,25717.9,17.06],
	[8902.27,25846.8,17.047],
	[8902.68,25846,5.26],
	[8898.4,25850.2,5.29],
	[8664.38,26073.8,6.52],
	[8665.28,26068.9,6.52],
	[8681.97,26093.2,6.53],
	[8685.01,26088.5,6.52],
	[8701.52,26114.4,6.52],
	[8705.56,26111,6.52],
	[8687.33,26128.1,6.52],
	[8666.59,26105.7,6.52],
	[8649.13,26087.6,6.52],
	[8625.9,26166.8,6.21],
	[8639.53,26154.8,6.01],
	[8634.27,26177.3,11.79],
	[8651.89,26165.3,11.57],
	[8647.42,26159.2,11.6],
	[8665.36,26174.7,6.23],
	[8659.36,26178.9,6.29],
	[8654.52,26187.3,5.07],
	[8645.85,26187.5,6.44],
	[8641.02,26187.9,10.44],
	[8701.39,26256.5,11.5],
	[8751.99,26249.9,18.26],
	[8742.06,26238.2,18.25],
	[8803.03,26363.9,13.97],
	[8807.16,26366.9,9.27],
	[8756.08,26200.3,12.9],
	[8771.36,26184.8,12.88],
	[8728.1,26270.2,9.02],	
	//Boden
	[8684.9,26199.9,0],
	[8697,26211.9,0],
	[8681.54,26204.6,0],
	[8693.35,26217.6,0],
	[8646.44,26187.4,0],
	[8623.69,26159.8,0],
	[8648.98,26152.2,0],
	[8773.16,26180,0],
	[8771.33,26202.2,0],
	[8778.43,26227.4,0],
	[8784.05,26228,0],
	[8772.52,26226.1,0],
	[8762.3,26281,0],
	[8778.6,26271.5,0],
	[8793.25,26299.4,0],
	[8798.4,26314.1,0],
	[8807.69,26366.6,0],
	[8793.8,26355,0],
	[8828.29,26343.5,0],
	[8745.81,26263.7,0],
	[8748.94,26254,0],
	[8756.59,26247.1,0],
	[8738.14,26242,0],
	[8736.68,26233,0],
	[8746.74,26234.4,0]
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
	[9057.37,25716.9,5.27],
	[9061.21,25723,5.28],
	[9089.9,25746.6,5.27],
	[9085.21,25751.2,5.28],
	[9089.96,25747.4,17.06],
	[9058.1,25717.9,17.06],
	[8902.27,25846.8,17.047],
	[8902.68,25846,5.26],
	[8898.4,25850.2,5.29],
	[8664.38,26073.8,6.52],
	[8665.28,26068.9,6.52],
	[8681.97,26093.2,6.53],
	[8685.01,26088.5,6.52],
	[8701.52,26114.4,6.52],
	[8705.56,26111,6.52],
	[8687.33,26128.1,6.52],
	[8666.59,26105.7,6.52],
	[8649.13,26087.6,6.52],
	[8625.9,26166.8,6.21],
	[8639.53,26154.8,6.01],
	[8634.27,26177.3,11.79],
	[8651.89,26165.3,11.57],
	[8647.42,26159.2,11.6],
	[8665.36,26174.7,6.23],
	[8659.36,26178.9,6.29],
	[8654.52,26187.3,5.07],
	[8645.85,26187.5,6.44],
	[8641.02,26187.9,10.44],
	[8701.39,26256.5,11.5],
	[8751.99,26249.9,18.26],
	[8742.06,26238.2,18.25],
	[8803.03,26363.9,13.97],
	[8807.16,26366.9,9.27],
	[8756.08,26200.3,12.9],
	[8771.36,26184.8,12.88],
	[8728.1,26270.2,9.02],	
	//Boden
	[8684.9,26199.9,0],
	[8697,26211.9,0],
	[8681.54,26204.6,0],
	[8693.35,26217.6,0],
	[8646.44,26187.4,0],
	[8623.69,26159.8,0],
	[8648.98,26152.2,0],
	[8773.16,26180,0],
	[8771.33,26202.2,0],
	[8778.43,26227.4,0],
	[8784.05,26228,0],
	[8772.52,26226.1,0],
	[8762.3,26281,0],
	[8778.6,26271.5,0],
	[8793.25,26299.4,0],
	[8798.4,26314.1,0],
	[8807.69,26366.6,0],
	[8793.8,26355,0],
	[8828.29,26343.5,0],
	[8745.81,26263.7,0],
	[8748.94,26254,0],
	[8756.59,26247.1,0],
	[8738.14,26242,0],
	[8736.68,26233,0],
	[8746.74,26234.4,0]
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
	[[8810.76,26306.1,0],"I_CargoNet_01_ammo_F"],
	[[8792.72,26290.7,0],"I_CargoNet_01_ammo_F"],
	[[8806.21,26356.3,0],"I_CargoNet_01_ammo_F"],
	[[8810.01,26360.5,0],"I_CargoNet_01_ammo_F"],
	[[8782.36,26199.3,0],"I_CargoNet_01_ammo_F"],
	[[8687.05,26213.4,0],"I_CargoNet_01_ammo_F"]
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
] call DMS_fnc_SpawnAITank;

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
											_vehicle = ["MrShounka_lykan_Rework_p_jaune_f",[8739.24,26250.5,0],_pinCode] call DMS_fnc_SpawnPersistentVehicle;
											_msgWIN = ['#06aedb',format ["Ihr seid den Schlachter entkommen und bekommt den preis, code ist %1...",_pinCode]];
											} else
											{
											_vehicle = ["MrShounka_lykan_Rework_p_jaune_f",[8739.24,26250.5,0]] call DMS_fnc_SpawnNonPersistentVehicle;
											_msgWIN = ['#06aedb',"Ihr seid den Schlachter entkommen"];
											};

// Define mission-spawned objects and loot values with vehicle
_missionObjs =
[
	_staticGuns+[_veh],			// static gun(s). Note, we don't add the base itself because it already spawns on server start.
	[_vehicle],				// vehicle prize
	[[_crate0,_crate_loot_values0]]
];	
											
// Define Mission Start message
_msgStart = ['#06aedb',format["Im Schlachthaus wird Bier umgeladen von %1 terrorists",_difficultyM]];

// Define Mission Win message defined in vehicle choice

// Define Mission Lose message
_msgLOSE = ['#FF0000',"Das Bier ist futsch."];

// Define mission name (for map marker and logging)
_missionName = "Schlachthaus";

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