/*
	"HmgFete." v1 static mission for lYTHIUM.
	Created by Thomas TKO
	O_T_LSV_02_armed_viper_F increases persistent chance with difficulty
	tko-gameserver.de
*/

private ["_AICount", "_AIMaxReinforcements", "_AItrigger", "_AIwave", "_AIdelay", "_staticguns", "_missionObjs", "_crate0", "_cash0", "_crate_loot_values0", "_crate_weapons0", "_crate_items0", "_difficultyM", "_difficulty", "_PossibleDifficulty", "_msgWIN", "_vehicle","_veh", "_pinCode", "_VehicleChance"];

// For logging purposes
_num = DMS_MissionCount;

// Set mission side (only "bandit" is supported for now)
_side = "bandit";

_pos = [31743.3, 25002.8,0]; //insert the centre here

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
_VehicleChance = 10;									//20% SpawnPersistentVehicle chance
_crate_weapons0 	= (60 + (round (random 5)));
_crate_items0 		= (40 + (round (random 5)));
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
_VehicleChance = 10;									//20% SpawnPersistentVehicle chance
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
_VehicleChance = 10;									//20% SpawnPersistentVehicle chance
_crate_weapons0 	= (70 + (round (random 5)));
_crate_items0 		= (50 + (round (random 5)));
_cash0 = (90000 + round (random (95000)));				//Tabs for crate0
	};
};

// Define spawn locations for AI Soldiers. These will be used for the initial spawning of AI as well as reinforcements.
// The center spawn location is added 3 times so at least 3 AI will spawn initially at the center location, and so that future reinforcements are more likely to spawn at the center.
_AISoldierSpawnLocations =
[
	//Ai
	[31880.2,25038.8,0],
	[31861.3,25029.7,0],
	//[31684.5,25223.8,0.0],
	[31709.9,25262.3,0.0],
	[31749.8,25271.2,0.0],
	//[31618.4,25183.4,0.0],
	[31525.6,25172.1,0.0],
	[31563.8,25187.1,0.0],
	//[31538.7,25150.9,0.0],
	[31476.3,25132.3,0.0],
	[31549.9,25121,0.0],
	//[31575.8,25101.2,0],
	[31603,25152.7,0],
	[31649.2,25150.5,0],
	[31527.4,25042,0.0],
	//[31643.4,25066.5,0],
	[31679.5,25065.8,0],
	[31655.9,25132.4,0],
	//[31743.1,25126.9,0.0],
	[31729.7,25135.5,0.0],
	[31748.5,25078.1,0],
	[31738.1,25094.7,0],
	//[31751.8,25094.3,0],
	[31814.5,25025.1,0],
	[31764.1,25000.2,0],
	//[31871,25017.5,0],
	[31898.3,24999,0],
	[31900.4,24981,0],
	//[31889.3,24994.1,0],
	[31928.1,24924,0]
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
	[31468.5,25147.6,17.8895],
	[31557.8,25189.7,17.88],
	[31758.1,25292.9,17.90],	
	[31725.9,25275.1,17.88],
	[31942.7,24968.1,17.89],	
	[31940.2,24971.5,17.89],
	[31895.1,24866.5,17.89],
	[31902.3,24869.4,17.89],
	[31796.1,24831.6,17.89],
	[31788.9,24828.4,17.89],	
	[31689.9,24773.5,17.89],
	[31697.2,24776.1,17.89],
	[31636.2,24822.7,4.34],
	[31547.1,24979.8,2.28],
	[31533,25005.8,2.28],
	[31497.6,25071.9,4.34],
	[31457.2,25143.6,2.28],
	[31532,25185.9,2.28],
	[31546.9,25193.7,2.28],
	[31614.1,25229.1,4.33],
	[31868.9,25107.1,4.34],
	[31765.2,25313.8,2.28],
	[31934.3,24982.4,2.28],
	[32035.9,24923.2,2.28],	
	[31803.9,24811,4.34],
	[31694.7,24753,2.27],
	[31679.2,24753.4,2.27],
	[31618.5,24866.6,2.28],
	[31639.1,24864,2.28],
	[31589,25167.2,17.46],
	[31586.6,25158,17.46],
	[31682.4,25149.3,3.12],
	[31691.4,25132.6,3.12],
	[31741.6,25038.5,4.34],
	[31719.9,25028.4,4.34],
	[31812.4,24893.7,3.57],
	[31804.2,24913.8,3.57],
	//Boden
	[31600.3,25092.1,0],
	[31593,25106.8,0],
	[31556.5,25077.9,0],
	[31565.9,25061.4,0],
	[31552.7,25194.8,0],
	[31528.7,25181.6,0],
	[31668.8,25236.3,0],
	[31942.5,24983,0],
	[31997.5,24987.3,0],
	[31945.1,24887.5,0],
	[31838.4,24937.1,0],
	[31820.1,24932.5,0],
	[31852.2,24905.4,0],
	[31841.5,24918.8,0],
	[31724.4,24862.6,0],
	[31694.6,24848.6,0],
	[31680.7,24799.2,0],
	[31688,24804,0],
	[31673.6,24757.9,0],
	[31700.8,24895,0],
	[31688.1,24956.8,0],
	[31620.3,24908.6,0],
	[31598.9,24947.8,0],
	[31585,24989.1,0],
	[31552.7,24980.4,0],
	[31535.4,25011.4,0],
	[31679.7,25181.5,0.29],
	[31682.2,24877.9,0],
	[31684.8,25109,0],
	[31893.7,24982,0],
	[31888.4,25001.6,0],
	[31895,25005.6,0],
	[31907,24998.6,0],
	[31889.4,24971.7,0],
	[31898.3,24976.1,0],
	[31890.7,24966.5,0],
	[31876,24983.9,0],
	[31858,25002.6,0],
	[31853.2,25022.8,0],
	[31869.6,25032.3,0],
	[31890.8,25041.9,0],
	[31740.1,24868.6,0]
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
	[31468.5,25147.6,17.8895],
	[31557.8,25189.7,17.88],
	[31758.1,25292.9,17.90],	
	[31725.9,25275.1,17.88],
	[31942.7,24968.1,17.89],	
	[31940.2,24971.5,17.89],
	[31895.1,24866.5,17.89],
	[31902.3,24869.4,17.89],
	[31796.1,24831.6,17.89],
	[31788.9,24828.4,17.89],	
	[31689.9,24773.5,17.89],
	[31697.2,24776.1,17.89],
	[31636.2,24822.7,4.34],
	[31547.1,24979.8,2.28],
	[31533,25005.8,2.28],
	[31497.6,25071.9,4.34],
	[31457.2,25143.6,2.28],
	[31532,25185.9,2.28],
	[31546.9,25193.7,2.28],
	[31614.1,25229.1,4.33],
	[31868.9,25107.1,4.34],
	[31765.2,25313.8,2.28],
	[31934.3,24982.4,2.28],
	[32035.9,24923.2,2.28],	
	[31803.9,24811,4.34],
	[31694.7,24753,2.27],
	[31679.2,24753.4,2.27],
	[31618.5,24866.6,2.28],
	[31639.1,24864,2.28],
	[31589,25167.2,17.46],
	[31586.6,25158,17.46],
	[31682.4,25149.3,3.12],
	[31691.4,25132.6,3.12],
	[31741.6,25038.5,4.34],
	[31719.9,25028.4,4.34],
	[31812.4,24893.7,3.57],
	[31804.2,24913.8,3.57],
	//Boden
	[31600.3,25092.1,0],
	[31593,25106.8,0],
	[31556.5,25077.9,0],
	[31565.9,25061.4,0],
	[31552.7,25194.8,0],
	[31528.7,25181.6,0],
	[31668.8,25236.3,0],
	[31942.5,24983,0],
	[31997.5,24987.3,0],
	[31945.1,24887.5,0],
	[31838.4,24937.1,0],
	[31820.1,24932.5,0],
	[31852.2,24905.4,0],
	[31841.5,24918.8,0],
	[31724.4,24862.6,0],
	[31694.6,24848.6,0],
	[31680.7,24799.2,0],
	[31688,24804,0],
	[31673.6,24757.9,0],
	[31700.8,24895,0],
	[31688.1,24956.8,0],
	[31620.3,24908.6,0],
	[31598.9,24947.8,0],
	[31585,24989.1,0],
	[31552.7,24980.4,0],
	[31535.4,25011.4,0],
	[31679.7,25181.5,0.29],
	[31682.2,24877.9,0],
	[31684.8,25109,0],
	[31893.7,24982,0],
	[31888.4,25001.6,0],
	[31895,25005.6,0],
	[31907,24998.6,0],
	[31889.4,24971.7,0],
	[31898.3,24976.1,0],
	[31890.7,24966.5,0],
	[31876,24983.9,0],
	[31858,25002.6,0],
	[31853.2,25022.8,0],
	[31869.6,25032.3,0],
	[31890.8,25041.9,0],
	[31740.1,24868.6,0]
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
	[[31693, 25107, 0.0],"I_CargoNet_01_ammo_F"],
	[[31752.2, 25120.9, 0.0],"I_CargoNet_01_ammo_F"],
	//[[31666.9, 25245.9, 0.0],"I_CargoNet_01_ammo_F"],
	//[[31869.5, 24997.6, 0.0],"I_CargoNet_01_ammo_F"],
	//[[31955.5, 24903.6, 0.0],"I_CargoNet_01_ammo_F"],
	//[[31914.1, 24884.1, 0.0],"I_CargoNet_01_ammo_F"],
	//[[31831, 24942.7, 0.0],"I_CargoNet_01_ammo_F"],
	//[[31806.3, 24874, 0.0],"I_CargoNet_01_ammo_F"],
	//[[31713.1, 24850.9, 0.0],"I_CargoNet_01_ammo_F"],
	//[[31621.1, 24888.8, 0.0],"I_CargoNet_01_ammo_F"],
	//[[31607.6, 24946.1, 0.0],"I_CargoNet_01_ammo_F"],
	[[31560.5, 25156.3, 0.0],"I_CargoNet_01_ammo_F"],
	[[31593.7, 25159.5, 0.0],"I_CargoNet_01_ammo_F"]
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
											_vehicle = ["O_T_VTOL_02_vehicle_F",[31837.6,25086.922,0],_pinCode] call DMS_fnc_SpawnPersistentVehicle;
											_msgWIN = ['#06aedb',format ["Haste gut gemacht der code ist %1...",_pinCode]];
											} else
											{
											_vehicle = ["B_CTRG_Heli_Transport_01_tropic_F",[31837.6,25086.922,0]] call DMS_fnc_SpawnNonPersistentVehicle;
											_msgWIN = ['#06aedb',"Haste gut gemacht code gibt es nicht"];
											};

// Define mission-spawned objects and loot values with vehicle
_missionObjs =
[
	_staticGuns,			// static gun(s). Note, we don't add the base itself because it already spawns on server start.
	[_vehicle],				// vehicle prize
	[[_crate0,_crate_loot_values0]]
];	
											
// Define Mission Start message
_msgStart = ['#06aedb',format["Party an der HmgFete %1 Truppen",_difficultyM]];

// Define Mission Win message defined in vehicle choice

// Define Mission Lose message
_msgLOSE = ['#FF0000',"Kein wunder mit der Knifte"];

// Define mission name (for map marker and logging)
_missionName = "HmgFete";

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