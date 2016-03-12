//=======================================================================================================//
// File: crewOut.sqf                                                                                     //
// Author: CC_Kronus                                                                                     //
// Contributor: CC_Magnetar                                                                              //
// Version: 1.0                                                                                          //
// File creation: 2016/03/12                                                                             //
// Description: Removes previously spawned helicopter crew.                                              //
// Changes: 1.0 (2016/03/12) First version. Conversion to params by CC_Magnetar.                         //
//=======================================================================================================//

params ["_vehicle", "_driver", "_action2"];

{
    moveOut _x;
    deleteVehicle _x;
} foreach (crew _vehicle);

_vehicle removeAction _action2;
hint "Tripulació despatxada";

//============================================= END OF FILE =============================================//
