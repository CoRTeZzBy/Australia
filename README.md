# Australia
Australia mission file with building cfg , Trader , Map building for mission Trader , DMS Statik Mission 
Need to Change Vehicles on all Statik Mission	                                                                                                                   
											_pinCode = (1000 +(round (random 8999)));
											_vehicle = ["MrShounka_lykan_Rework_p_jaune_f",[8739.24,26250.5,0],_pinCode] call DMS_fnc_SpawnPersistentVehicle;
											_msgWIN = ['#06aedb',format ["Ihr seid den Schlachter entkommen und bekommt den preis, code ist %1...",_pinCode]];
											} else
											{
											_vehicle = ["MrShounka_lykan_Rework_p_jaune_f",[8739.24,26250.5,0]] call DMS_fnc_SpawnNonPersistentVehicle;
											_msgWIN = ['#06aedb',"Ihr seid den Schlachter entkommen"];
											};									
