BIS_Effects_Burn=compile preprocessFileLineNumbers "\ca\Data\ParticleEffects\SCRIPTS\destruction\burn.sqf";

if (isServer) then {
	_units = ["p1","p2","p3","p4","p5","p6","p7","p8","p9","p10"];
;	{[_x,1] exec "weapons_respawn.sqs";} foreach _units;
	{[_x] execVM "custom_loadout.sqf";} foreach _units;
	
	_gamelogics = ["mygamelogic1", "mygamelogic2", "mygamelogic3", "mygamelogic4", "mygamelogic5"];
	[mygamelogic1,3,time,false,false] spawn BIS_Effects_Burn;
	[mygamelogic2,3,time,false,false] spawn BIS_Effects_Burn;
	[mygamelogic3,3,time,false,false] spawn BIS_Effects_Burn;
	[mygamelogic4,3,time,false,false] spawn BIS_Effects_Burn;
	[mygamelogic5,3,time,false,false] spawn BIS_Effects_Burn;
}