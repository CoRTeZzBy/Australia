

// Making these configs below as strict as possible will help in reducing the number of attempts taken to find a valid position, and as a result, improve performance.

DMS_MinDistFromWestBorder			= 1500;
DMS_MinDistFromEastBorder			= 1500;
DMS_MinDistFromSouthBorder			= 1500;
DMS_MinDistFromNorthBorder			= 1500;

DMS_StaticMissionTypes append [ 
                                        ["Caro",1],
										["TasmaniaDevil",1],
										["AnkesTanke",1],
										["schlachthaus",1],
										["Nightmare",1],
										["MetzellFest",1],
										["DerAusbruch",1],
										["WaffenFabrik",1],
										//["Boss@Home",1],
										["AiBase",1],
										["Outpost",1],
										//["GuerillaCamp",1],
										["HmgFete",1],
										//["TerrorCamp",1],
										["Saftladen",1],
										["Factory",1],
									    ["SonnenFest",1],
										["Sportschau",1],
										["GuantanamoBay",1],
										["Kontrolle",1]
										//["Trainingslager",1]	
];

// Add the "salt flats base" and "slums" to the "bases" to spawn on server startup. NOTE: "append" and "pushback" are NOT the same."saltflatsbase",
//DMS_BasesToImportOnServerStart append ["slums_objects"];
