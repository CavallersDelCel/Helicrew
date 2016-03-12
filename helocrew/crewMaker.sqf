//=======================================================================================================//
// File: crewMaker.sqf                                                                                   //
// Author: CC_Kronus                                                                                     //
// Contributor: CC_Magnetar                                                                              //
// Version: 1.0                                                                                          //
// File creation: 2016/03/12                                                                             //
// Description: Spawns certain amount of crew members depending on the helicopter capabilities.          //
// Changes: 1.0 (2016/03/12) First version. Conversion to params by CC_Magnetar. Single seat aircraft    //
//                           treated as one single option via array.                                     //
//=======================================================================================================//

params ["_vehicle", "_caller", "_id", "_helotype"];

private ["_singleSeat"];

player sidechat format["%1", _helotype];

_singleSeat = ["O_Plane_CAS_02_F", "I_Plane_Fighter_03_CAS_F", "I_Plane_Fighter_03_AA_F", "B_Plane_CAS_01_F"];

// Continue with the script only in case of vehicles with multiple seats.
if (_helotype in _singleSeat) exitWith {
    hint "Aquest aparell es un monoplaça i no te opcions de tripulació.";
    _vehicle removeAction _id;
};

_vehicle removeAction _id;
_spawnpoint = getMarkerPos "pilotspawn";
_grp = createGroup west;


if (_helotype == "B_Heli_Light_01_F") then {
    _pilot1 = "B_Helipilot_F" createUnit [_spawnpoint, _grp, "this assignasgunner _vehicle; this moveinturret [_vehicle, [0]];this setskill 1", 1, "Lieutenant"];
    hint "Tripulació al aparell";
};

if (_helotype == "B_Heli_Light_01_armed_F") then {
    _pilot2 = "B_Helipilot_F" createUnit [_spawnpoint, _grp, "this assignasgunner _vehicle; this moveinturret [_vehicle, [0]];this setskill 1", 1, "Lieutenant"];
    hint "Tripulació al aparell";
};

if (_helotype == "B_Heli_Light_01_stripped_F") then {
    _pilot3 = "B_Helipilot_F" createUnit [_spawnpoint, _grp, "this assignasgunner _vehicle; this moveinturret [_vehicle, [0]];this setskill 1", 1, "Lieutenant"];
    hint "Tripulació al aparell";
};

if (_helotype == "B_Heli_Attack_01_F") then {
    _pilot4 = "B_Helipilot_F" createUnit [_spawnpoint, _grp, "this assignasgunner _vehicle; this moveinturret [_vehicle, [0]];this setskill 1", 1, "Lieutenant"];
    hint "Tripulació al aparell";
};

if (_helotype == "B_Heli_Transport_01_F") then {
    _pilot5 = "B_Helipilot_F" createUnit [_spawnpoint, _grp, "this moveinturret [_vehicle,[0]]; this setskill 1", 1, "Lieutenant"];
    _pilot6 = "B_helicrew_F" createUnit [_spawnpoint, _grp, "this assignasgunner _vehicle; this moveinturret [_vehicle, [1]];this setskill 1", 1, "sergeant"];
    _pilot7 = "B_helicrew_F" createUnit [_spawnpoint, _grp, "this assignasgunner _vehicle; this moveinturret [_vehicle, [2]];this setskill 1", 1, "sergeant"];

    hint "Tripulació al aparell";
};

if (_helotype == "B_Heli_Transport_01_camo_F") then {
    _pilot8 = "B_Helipilot_F" createUnit [_spawnpoint, _grp, "this moveinturret [_vehicle,[0]]; this setskill 1", 1, "Lieutenant"];
    _pilot9 = "B_helicrew_F" createUnit [_spawnpoint, _grp, "this assignasgunner _vehicle; this moveinturret [_vehicle, [1]];this setskill 1", 1, "sergeant"];
    _pilot10 = "B_helicrew_F" createUnit [_spawnpoint, _grp, "this assignasgunner _vehicle; this moveinturret [_vehicle, [2]];this setskill 1", 1, "sergeant"];

    hint "Tripulació al aparell";
};

if (_helotype == "B_Heli_Transport_03_F") then {
    _pilot11 = "B_Helipilot_F" createUnit [_spawnpoint, _grp, "this moveinturret [_vehicle,[0]]; this setskill 1", 1, "Lieutenant"];
    _pilot12 = "B_helicrew_F" createUnit [_spawnpoint, _grp, "this assignasgunner _vehicle; this moveinturret [_vehicle, [1]];this setskill 1", 1, "sergeant"];
    _pilot13 = "B_helicrew_F" createUnit [_spawnpoint, _grp, "this assignasgunner _vehicle; this moveinturret [_vehicle, [2]];this setskill 1", 1, "sergeant"];

    hint "Tripulació al aparell";
};

if (_helotype == "B_Heli_Transport_03_unarmed_F") then {
    _pilot15 = "B_Helipilot_F" createUnit [_spawnpoint, _grp, "this moveinturret [_vehicle, [0]]; this setskill 1", 1, "Lieutenant"];

    hint "Tripulació al aparell";
};


if (_helotype == "B_Heli_Transport_03_black_F") then {
    _pilot19 = "B_Helipilot_F" createUnit [_spawnpoint, _grp, "this moveinturret [_vehicle, [0]]; this setskill 1", 1, "Lieutenant"];
    _pilot20 = "B_helicrew_F" createUnit [_spawnpoint, _grp, "this assignasgunner _vehicle; this moveinturret [_vehicle, [1]];this setskill 1", 1, "sergeant"];
    _pilot21 = "B_helicrew_F" createUnit [_spawnpoint, _grp, "this assignasgunner _vehicle; this moveinturret [_vehicle, [2]];this setskill 1", 1, "sergeant"];

    hint "Tripulació al aparell";
};

if (_helotype == "B_Heli_Transport_03_unarmed_green_F") then {
    _pilot23 = "B_Helipilot_F" createUnit [_spawnpoint, _grp, "this moveinturret [_vehicle, [0]]; this setskill 1", 1, "Lieutenant"];
    _pilot24 = "B_helicrew_F" createUnit [_spawnpoint, _grp, "this assignasgunner _vehicle; this moveinturret [_vehicle, [0]];this setskill 1", 1, "sergeant"];
    _pilot25 = "B_helicrew_F" createUnit [_spawnpoint, _grp, "this assignasgunner _vehicle; this moveinturret [_vehicle, [1]];this setskill 1", 1, "sergeant"];

    hint "Tripulació al aparell";
};

if (_helotype == "C_Heli_Light_01_civil_F") then {
    _pilot27 = "C_man_pilot_F" createUnit [_spawnpoint, _grp, "this assignasgunner _vehicle; this moveinturret [_vehicle, [0]];this setskill 1", 1, "Lieutenant"];

    hint "Tripulació al aparell";
};

if (_helotype == "I_Heli_Transport_02_F") then {

    _pilot28 = "I_helipilot_F" createUnit [_spawnpoint, _grp, "this assignasgunner _vehicle; this moveinturret [_vehicle, [0]];this setskill 1", 1, "Lieutenant"];

    hint "Tripulació al aparell";
};

if (_helotype == "I_Heli_light_03_F") then {

    _pilot29 = "I_helipilot_F" createUnit [_spawnpoint, _grp, "this assignasgunner _vehicle; this moveinturret [_vehicle, [0]];this setskill 1", 1, "Lieutenant"];

    hint "Tripulació al aparell";

};

if (_helotype == "I_Heli_light_03_unarmed_F") then {

    _pilot30 = "I_helipilot_F" createUnit [_spawnpoint, _grp, "this assignasgunner _vehicle; this moveinturret [_vehicle, [0]];this setskill 1", 1, "Lieutenant"];

    hint "Tripulació al aparell";

};


if (_helotype == "O_Heli_Light_02_F") then {

    _pilot31 = "O_helipilot_F" createUnit [_spawnpoint, _grp, "this assignasgunner _vehicle; this moveinturret [_vehicle, [0]];this setskill 1", 1, "Lieutenant"];

    hint "Tripulació al aparell";

};

if (_helotype == "O_Heli_Light_02_v2_F") then {

    _pilot32 = "O_helipilot_F" createUnit [_spawnpoint, _grp, "this assignasgunner _vehicle; this moveinturret [_vehicle, [0]];this setskill 1", 1, "Lieutenant"];

    hint "Tripulació al aparell";

};

if (_helotype == "O_Heli_Light_02_unarmed_F") then {

    _pilot33 = "O_helipilot_F" createUnit [_spawnpoint, _grp, "this assignasgunner _vehicle; this moveinturret [_vehicle, [0]];this setskill 1", 1, "Lieutenant"];

    hint "Tripulació al aparell";

};

if (_helotype == "O_Heli_Attack_02_F") then {

    _pilot34 = "O_helipilot_F" createUnit [_spawnpoint, _grp, "this assignasgunner _vehicle; this moveinturret [_vehicle, [0]];this setskill 1", 1, "Lieutenant"];

    hint "Tripulació al aparell";

};

if (_helotype == "O_Heli_Attack_02_black_F") then {

    _pilot14 = "O_helipilot_F" createUnit [_spawnpoint, _grp, "this assignasgunner _vehicle; this moveinturret [_vehicle, [0]];this setskill 1", 1, "Lieutenant"];

    hint "Tripulació al aparell";

};

if (_helotype == "O_Heli_Transport_04_F") then {
    _pilot18 = "O_helipilot_F" createUnit [_spawnpoint, _grp, "this moveinturret [_vehicle, [0]]; this setskill 1", 1, "Lieutenant"];
    _pilot22 = "O_helicrew_F" createUnit [_spawnpoint, _grp, "this assignasgunner _vehicle; this moveinturret [_vehicle, [1]];this setskill 1", 1, "sergeant"];

    hint "Tripulació al aparell";
};

if (_helotype == "O_Heli_Transport_04_ammo_F") then
{
    _pilot35 = "O_helipilot_F" createUnit [_spawnpoint, _grp, "this moveinturret [_vehicle, [0]]; this setskill 1", 1, "Lieutenant"];
    _pilot36 = "O_helicrew_F" createUnit [_spawnpoint, _grp, "this assignasgunner _vehicle; this moveinturret [_vehicle, [1]];this setskill 1", 1, "sergeant"];

    hint "Tripulació al aparell";

};

if (_helotype == "O_Heli_Transport_04_bench_F") then
{
    _pilot37 = "O_helipilot_F" createUnit [_spawnpoint, _grp, "this moveinturret [_vehicle, [0]]; this setskill 1", 1, "Lieutenant"];
    _pilot38 = "O_helicrew_F" createUnit [_spawnpoint, _grp, "this assignasgunner _vehicle; this moveinturret [_vehicle, [1]];this setskill 1", 1, "sergeant"];

    hint "Tripulació al aparell";
};

if (_helotype == "O_Heli_Transport_04_box_F") then
{
    _pilot39 = "O_helipilot_F" createUnit [_spawnpoint, _grp, "this moveinturret [_vehicle, [0]]; this setskill 1", 1, "Lieutenant"];
    _pilot40 = "O_helicrew_F" createUnit [_spawnpoint, _grp, "this assignasgunner _vehicle; this moveinturret [_vehicle, [1]];this setskill 1", 1, "sergeant"];

    hint "Tripulació al aparell";
};


if (_helotype == "O_Heli_Transport_04_covered_F") then
{
    _pilot41 = "O_helipilot_F" createUnit [_spawnpoint, _grp, "this moveinturret [_vehicle, [0]]; this setskill 1", 1, "Lieutenant"];
    _pilot42 = "O_helicrew_F" createUnit [_spawnpoint, _grp, "this assignasgunner _vehicle; this moveinturret [_vehicle, [1]];this setskill 1", 1, "sergeant"];

    hint "Tripulació al aparell";
};

if (_helotype == "O_Heli_Transport_04_fuel_F") then
{
    _pilot42 = "O_helipilot_F" createUnit [_spawnpoint, _grp, "this moveinturret [_vehicle, [0]]; this setskill 1", 1, "Lieutenant"];
    _pilot43 = "O_helicrew_F" createUnit [_spawnpoint, _grp, "this assignasgunner _vehicle; this moveinturret [_vehicle, [1]];this setskill 1", 1, "sergeant"];

    hint "Tripulació al aparell";
};

if (_helotype == "O_Heli_Transport_04_medevac_F") then
{
    _pilot44 = "O_helipilot_F" createUnit [_spawnpoint, _grp, "this moveinturret [_vehicle, [0]]; this setskill 1", 1, "Lieutenant"];
    _pilot45 = "O_helicrew_F" createUnit [_spawnpoint, _grp, "this assignasgunner _vehicle; this moveinturret [_vehicle, [1]];this setskill 1", 1, "sergeant"];

    hint "Tripulació al aparell";
};


if (_helotype == "O_Heli_Transport_04_repair_F") then
{
    _pilot46 = "O_helipilot_F" createUnit [_spawnpoint, _grp, "this moveinturret [_vehicle, [0]]; this setskill 1", 1, "Lieutenant"];
    _pilot47 = "O_helicrew_F" createUnit [_spawnpoint, _grp, "this assignasgunner _vehicle; this moveinturret [_vehicle, [1]];this setskill 1", 1, "sergeant"];

    hint "Tripulació al aparell";
};


if (_helotype == "O_Heli_Transport_04_repair_F") then
{
    _pilot44 = "O_helipilot_F" createUnit [_spawnpoint, _grp, "this moveinturret [_vehicle, [0]]; this setskill 1", 1, "Lieutenant"];
    _pilot45 = "O_helicrew_F" createUnit [_spawnpoint, _grp, "this assignasgunner _vehicle; this moveinturret [_vehicle, [1]];this setskill 1", 1, "sergeant"];

    hint "Tripulació al aparell";
};

if (_helotype == "O_Heli_Transport_04_black_F") then
{
    _pilot45 = "O_helipilot_F" createUnit [_spawnpoint, _grp, "this moveinturret [_vehicle, [0]]; this setskill 1", 1, "Lieutenant"];
    _pilot46 = "O_helicrew_F" createUnit [_spawnpoint, _grp, "this assignasgunner _vehicle; this moveinturret [_vehicle, [1]];this setskill 1", 1, "sergeant"];

    hint "Tripulació al aparell";
};

if (_helotype == "O_Heli_Transport_04_ammo_black_F") then
{
    _pilot47 = "O_helipilot_F" createUnit [_spawnpoint, _grp, "this moveinturret [_vehicle, [0]]; this setskill 1", 1, "Lieutenant"];
    _pilot48 = "O_helicrew_F" createUnit [_spawnpoint, _grp, "this assignasgunner _vehicle; this moveinturret [_vehicle, [1]];this setskill 1", 1, "sergeant"];

    hint "Tripulació al aparell";
};

if (_helotype == "O_Heli_Transport_04_bench_black_F") then
{
    _pilot49 = "O_helipilot_F" createUnit [_spawnpoint, _grp, "this moveinturret [_vehicle, [0]]; this setskill 1", 1, "Lieutenant"];
    _pilot50 = "O_helicrew_F" createUnit [_spawnpoint, _grp, "this assignasgunner _vehicle; this moveinturret [_vehicle, [1]];this setskill 1", 1, "sergeant"];

    hint "Tripulació al aparell";
};


if (_helotype == "O_Heli_Transport_04_box_black_F") then
{
    _pilot51 = "O_helipilot_F" createUnit [_spawnpoint, _grp, "this moveinturret [_vehicle, [0]]; this setskill 1", 1, "Lieutenant"];
    _pilot52 = "O_helicrew_F" createUnit [_spawnpoint, _grp, "this assignasgunner _vehicle; this moveinturret [_vehicle, [1]];this setskill 1", 1, "sergeant"];

    hint "Tripulació al aparell";
};

if (_helotype == "O_Heli_Transport_04_covered_black_F") then
{
    _pilot53 = "O_helipilot_F" createUnit [_spawnpoint, _grp, "this moveinturret [_vehicle, [0]]; this setskill 1", 1, "Lieutenant"];
    _pilot54 = "O_helicrew_F" createUnit [_spawnpoint, _grp, "this assignasgunner _vehicle; this moveinturret [_vehicle, [1]];this setskill 1", 1, "sergeant"];

    hint "Tripulació al aparell";
};

if (_helotype == "O_Heli_Transport_04_fuel_black_F") then
{
    _pilot55 = "O_helipilot_F" createUnit [_spawnpoint, _grp, "this moveinturret [_vehicle, [0]]; this setskill 1", 1, "Lieutenant"];
    _pilot56 = "O_helicrew_F" createUnit [_spawnpoint, _grp, "this assignasgunner _vehicle; this moveinturret [_vehicle, [1]];this setskill 1", 1, "sergeant"];

    hint "Tripulació al aparell";
};

if (_helotype == "O_Heli_Transport_04_medevac_black_F") then
{
    _pilot57 = "O_helipilot_F" createUnit [_spawnpoint, _grp, "this moveinturret [_vehicle, [0]]; this setskill 1", 1, "Lieutenant"];
    _pilot58 = "O_helicrew_F" createUnit [_spawnpoint, _grp, "this assignasgunner _vehicle; this moveinturret [_vehicle, [1]];this setskill 1", 1, "sergeant"];

    hint "Tripulació al aparell";
};


if (_helotype == "O_Heli_Transport_04_repair_black_F") then
{
    _pilot59 = "O_helipilot_F" createUnit [_spawnpoint, _grp, "this moveinturret [_vehicle, [0]]; this setskill 1", 1, "Lieutenant"];
    _pilot60 = "O_helicrew_F" createUnit [_spawnpoint, _grp, "this assignasgunner _vehicle; this moveinturret [_vehicle, [1]];this setskill 1", 1, "sergeant"];

    hint "Tripulació al aparell";

};

{[_x] join player } foreach crew _vehicle;


_vehicle removeAction _id;
sleep 5;
hint "Per despedir la tripulació, aterra i para el motor per accedir a la opció en el menu de acció.";

action2 = _vehicle addaction [("<t color=""#ee6600"">" + ("Dismiss Crew") +"</t>"), "helocrew\crewout.sqf",_class, 1, false,true,"","!isEngineOn _target && driver _target == _this"];
