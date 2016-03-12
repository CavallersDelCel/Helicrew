//=======================================================================================================//
// File: crewIn.sqf                                                                                      //
// Author: CC_Kronus                                                                                     //
// Contributor: CC_Magnetar                                                                              //
// Version: 1.0                                                                                          //
// File creation: 2016/03/12                                                                             //
// Description: Action to spawn crew members for the selected helicopter.                                //
// Changes: 1.0 (2016/03/12) First version. Conversion to params by CC_Magnetar.                         //
//=======================================================================================================//

params ["_vehicle", "_driver"];
private ["_class"];

_class = typeOf _vehicle;


if (count crew _vehicle < 2) then {

    //accio unicament quan el motor esta en marxa
    action1 = _vehicle addaction [("<t color=""#ee6600"">" + ("Demanar Tripulació") +"</t>"), "helocrew\crewMaker.sqf",_class, 1, false,true,"","isEngineOn _target && driver _target == _this"];
    hint "Arrancar motor per opcions de tripulació";
} else {

    hint "Aquest aparell ja te tripulació. Per despedir-la aterra i para el motor";

    //action2 = _vehicle addaction [("<t color=""#ee6600"">" + ("Despedir tripulació") +"</t>"), "helocrew\crewout.sqf",_class, 1, false,true,"","!isEngineOn _target && driver _target == _this"]; //accio unicament quan el motor esta parat

};

//============================================= END OF FILE =============================================//
