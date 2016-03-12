//=======================================================================================================//
// File: init.sqf                                                                                        //
// Author: CC_Kronus                                                                                     //
// Version: 1.0                                                                                          //
// File creation: 2016/03/12                                                                             //
// Description: Adds action to spawn crew members for the selected helicopter.                           //
// Changes: 1.0 (2016/03/12) First version.                                                              //
//=======================================================================================================//

{
    if (side _x == civilian && _x isKindOf "Helicopter") then {
        _x addEventHandler ["GetIn", "if ((_this select 2) == driver (_this select 0)) then {nul = [(_this select 0),(_this select 2)] execVM 'helocrew\crewIn.sqf'}"];
    };
} forEach vehicles;

//============================================= END OF FILE =============================================//
