/*
	"TKO AiBase" v 1 static mission for Australia.
*/

private ["_AICount", "_AIMaxReinforcements", "_AItrigger", "_AIwave", "_AIdelay", "_staticguns", "_missionObjs", "_crate0", "_cash0", "_crate_loot_values0", "_crate_weapons0", "_crate_items0", "_difficultyM", "_difficulty", "_PossibleDifficulty", "_msgWIN", "_vehicle","_veh", "_pinCode", "_VehicleChance"];

// For logging purposes
_num = DMS_MissionCount;

// Set mission side (only "bandit" is supported for now)
_side = "bandit";

_pos = [33786.1,15671.3,0]; //insert the centre here

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
_crate_items0 		= (40 + (round (random 5)));
_cash0 = (70000 + round (random (95000)));				//Tabs for crate0
	};
	case "difficult":
	{
_difficulty = "difficult";
_AICount = (20 + (round (random 2)));
_AIMaxReinforcements = (1 + (round (random 1)));		//AI reinforcement cap , AI Verstärkungskappe
_AItrigger = (6 + (round (random 2)));					//If AI numbers fall below this number then reinforce if any left from AIMax , Maximaler AI-Wert in Verstärkungswellen
_AIwave = (1 + (round (random 1)));						//Max amount of AI in reinforcement wave
_AIdelay = (1 + (round (random 1)));					//The delay between reinforcements ,Die Verzögerung zwischen Verstärkungen
_VehicleChance = 80;									//20% SpawnPersistentVehicle chance
_crate_weapons0 	= (65 + (round (random 5)));
_crate_items0 		= (45 + (round (random 5)));
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
	[33675.6,15554.5,0.0],
	[33687.8,15548.5,0.0],
	[33663.2,15541.9,0.0],
	[33667.7,15544.7,0.0],
	[33667.3,15554.4,0.0],
	[33718.3,15563.6,0.0],
	[33718,15575.4,0.0],
	[33782.5,15699.3,0.0],
	[33823.6,15738.8,0.0],
	[33854,15774.1,0.0],
	[33888.1,15741.5,0.0],
	[33922.1,15699.8,0.0],
	[33881.8,15697,0.0],
	[33885.6,15671.6,0.0],
	[33832,15661.6,0.0],
	[33807.8,15617.8,0.0],
	[33793.8,15633.2,0.0],
	[33763.1,15595.2,0.0],
	[33747.4,15581.7,0.0],
	[33732.7,15567,0.0],
	[33701.8,15533.3,0.0],
	[33675.3,15514.2,0.0],
	[33659.2,15526.4,0.0],
	[33632.5,15561.5,0.0],
	[33625.7,15578.4,0.0],
	[33646.8,15574.5,0.0],
	[33640.5,15609.6,0.0],
	//Ai Hoch
	[33691.9,15612.5,0.6],
	[33699.7,15603.9,0.6],
	[33722.6,15620.4,0.6],
	[33733.3,15628.9,0.6],
	[33810.8,15640.5,0.6],
	[33806.3,15646.6,0.6],
	[33860.6,15697.1,0.6],
	[33865,15690.9,0.6]
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
	[33708.2,15665.4,4.34],
	[33670.3,15519.5,2.81],
	[33646,15552.1,2.82],
	[33675,15574.3,2.82],
	[33701.4,15541.9,2.82],
	[33777.1,15610.6,7.5],
	[33806.1,15605.1,4.34],
	[33812,15639.5,7.5],
	[33865.3,15689.7,7.5],
	[33887.9,15740.8,4.3],
	[33818.9,15659.8,3.8],
	[33785.1,15631.9,3.8],
	[33744.1,15683.7,3.3],
	[33735.9,15684.5,3.3],
	[33820.1,15749.7,7.97],
	[33818.8,15751.6,7.97],
	//HMG boden
	[33693.3,15553.9,0.0],
	[33676.2,15575.4,0.0],
	[33666,15557.4,0.7951],
	[33673.8,15562.1,0.7894],
	[33660,15552.5,0.8028],
	[33676.5,15532.9,0.7954],
	[33685.2,15540.9,0.0],
	[33681.4,15553.5,0.0],
	[33645.7,15552.1,0.7951],
	[33681.8,15615.7,0.9255],
	[33694,15598.6,0.9255],
	[33726.4,15570.5,0.0],
	[33766.4,15587.9,0.0],
	[33712.4,15622.3,0.926],
	[33732.4,15638.2,0.9259],
	[33728.5,15677.5,0.7919],
	[33724.8,15681.7,57.0779],
	[33707.1,15666.1,0.7923],
	[33748.3,15672.6,0.0],
	[33773.8,15661.4,0.0],
	[33839.4,15712.4,0.8047],
	[33843.3,15707.6,0.8199],
	[33827.2,15757.8,0.8225],
	[33841.8,15742.1,0.8189],
	[33878.9,15662.9,57.1041],
	[33892.4,15671.4,0.8177],
	[33862.3,15664.3,0.7987],
	[33802.7,15700.5,0.0],
	[33848.9,15749.2,0.8064],
	[33845.7,15714.5,0.8086],
	[33787.9,15615.5,0.0],
	[33772.1,15601.4,0.01],
	[33750.9,15576.7,0.0],
	[33756.7,15582,0.0],
	[33722.1,15603.1,0.0],
	[33746.5,15620.4,0.0],
	[33691.3,15590.8,0.0],
	[33674.6,15610.7,0.0],
	[33611.5,15593.8,0.0],
	[33637.1,15558.2,0.0],
	[33647.6,15621.4,0.0],
	[33670,15583.8,0.0],
	[33661.5,15564.8,0.0],
	[33657.5,15561.5,0.0],
	[33672.8,15573.4,0.0],
	//Neu
	[33708.5,15689.8,0.0],
	[33705,15683.1,0.0],
	[33716.8,15691.7,0.0],
	[33720.8,15683.1,0.0],
	[33713.9,15673.6,0.0],
	[33885.6,15660.4,0.0],
	[33895.2,15656.6,0.0]	
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
	[33708.2,15665.4,4.34],
	[33670.3,15519.5,2.81],
	[33646,15552.1,2.82],
	[33675,15574.3,2.82],
	[33701.4,15541.9,2.82],
	[33777.1,15610.6,7.5],
	[33806.1,15605.1,4.34],
	[33812,15639.5,7.5],
	[33865.3,15689.7,7.5],
	[33887.9,15740.8,4.3],
	[33818.9,15659.8,3.8],
	[33785.1,15631.9,3.8],
	[33744.1,15683.7,3.3],
	[33735.9,15684.5,3.3],
	[33820.1,15749.7,7.97],
	[33818.8,15751.6,7.97],
	//HMG boden
	[33693.3,15553.9,0.0],
	[33676.2,15575.4,0.0],
	[33666,15557.4,0.7951],
	[33673.8,15562.1,0.7894],
	[33660,15552.5,0.8028],
	[33676.5,15532.9,0.7954],
	[33685.2,15540.9,0.0],
	[33681.4,15553.5,0.0],
	[33645.7,15552.1,0.7951],
	[33681.8,15615.7,0.9255],
	[33694,15598.6,0.9255],
	[33726.4,15570.5,0.0],
	[33766.4,15587.9,0.0],
	[33712.4,15622.3,0.926],
	[33732.4,15638.2,0.9259],
	[33728.5,15677.5,0.7919],
	[33724.8,15681.7,57.0779],
	[33707.1,15666.1,0.7923],
	[33748.3,15672.6,0.0],
	[33773.8,15661.4,0.0],
	[33839.4,15712.4,0.8047],
	[33843.3,15707.6,0.8199],
	[33827.2,15757.8,0.8225],
	[33841.8,15742.1,0.8189],
	[33878.9,15662.9,57.1041],
	[33892.4,15671.4,0.8177],
	[33862.3,15664.3,0.7987],
	[33802.7,15700.5,0.0],
	[33848.9,15749.2,0.8064],
	[33845.7,15714.5,0.8086],
	[33787.9,15615.5,0.0],
	[33772.1,15601.4,0.01],
	[33750.9,15576.7,0.0],
	[33756.7,15582,0.0],
	[33722.1,15603.1,0.0],
	[33746.5,15620.4,0.0],
	[33691.3,15590.8,0.0],
	[33674.6,15610.7,0.0],
	[33611.5,15593.8,0.0],
	[33637.1,15558.2,0.0],
	[33647.6,15621.4,0.0],
	[33670,15583.8,0.0],
	[33661.5,15564.8,0.0],
	[33657.5,15561.5,0.0],
	[33672.8,15573.4,0.0],
	//Neu
	[33708.5,15689.8,0.0],
	[33705,15683.1,0.0],
	[33716.8,15691.7,0.0],
	[33720.8,15683.1,0.0],
	[33713.9,15673.6,0.0],
	[33885.6,15660.4,0.0],
	[33895.2,15656.6,0.0]	
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
	[[33688,15615.2,0.14],"I_CargoNet_01_ammo_F"],
	[[33698,15606.8,0.14],"I_CargoNet_01_ammo_F"],
	[[33730.3,15621.5,0.14],"I_CargoNet_01_ammo_F"],
	[[33728.2,15628.8,0.14],"I_CargoNet_01_ammo_F"],
	[[33753,15594.1,0.14],"I_CargoNet_01_ammo_F"],
	[[33743.6,15571.7,0.14],"I_CargoNet_01_ammo_F"],
	[[33880,15709.3,0.14],"I_CargoNet_01_ammo_F"],
	[[33806.3,15740.7,0.14],"I_CargoNet_01_ammo_F"]
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

// is %chance greater than random number O_APC_Tracked_02_cannon_F   O_T_APC_Wheeled_02_rcws_ghex_F  B_APC_Tracked_01_rcws_F   gorgon I_APC_Wheeled_03_cannon_F ["O_T_APC_Tracked_02_cannon_ghex_F",[23130.7,19778.7,0],
if (_VehicleChance >= (random 100)) then {
											_pinCode = (1000 +(round (random 8999)));
											_vehicle = ["Mrshounka_veveno_Rework_p_jaune_f",[33636.5,15588.3,0],_pinCode] call DMS_fnc_SpawnPersistentVehicle;
											_msgWIN = ['#06aedb',format ["Ihr habt die AiBase gesichert, code ist %1...",_pinCode]];
											} else
											{
											_vehicle = ["Mrshounka_veveno_Rework_p_rose_f",[33786.1,15671.3,0]] call DMS_fnc_SpawnNonPersistentVehicle;
											_msgWIN = ['#06aedb',"Ihr habt die AiBase gesichert"];
											};

// Define mission-spawned objects and loot values with vehicle
_missionObjs =
[
	_staticGuns,			// static gun(s). Note, we don't add the base itself because it already spawns on server start.
	[_vehicle],				// vehicle prize
	[[_crate0,_crate_loot_values0]]
];	
											
// Define Mission Start message
_msgStart = ['#06aedb',format["In der AiBase Fette Hardware von %1 Soldaten verladen",_difficultyM]];

// Define Mission Win message defined in vehicle choice

// Define Mission Lose message
_msgLOSE = ['#FF0000',"Soldaten haben die Hardware gesichert."];

// Define mission name (for map marker and logging)
_missionName = "AiBase";

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