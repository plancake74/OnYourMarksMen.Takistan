_name = _this select 0;
_unit = call compile format["%1",_name];

_unit removeweapon "srifle_GM6_F";
_unit removeweapon "srifle_GM6_SOS_F";
_unit removeweapon "srifle_GM6_LRPS_F";
_unit removemagazines "5Rnd_127x108_Mag";
_unit removemagazines "ClaymoreDirectionalMine_Remote_Mag";
_unit removemagazines "APERSTripMine_Wire_Mag";
_unit addMagazines ["7Rnd_408_Mag", 10];
_unit addweapon "srifle_LRR_LRPS_F";
_unit addPrimaryWeaponItem "optic_Nightstalker";