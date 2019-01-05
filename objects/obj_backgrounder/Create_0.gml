/// @description 配置一些无用东西
window_set_size(640,480)

ini_open("chaoscarousel.ini");

global.bgm=ini_read_real("global","bgm",1)
global.notinitedbgm=0

if(!ini_key_exists("global","bgm")){
	ini_write_real("global","bgm",1)
}

// if(!ini_key_exists("global","wait_and_exit")){
//	ini_write_real("global","wait_and_exit",0)
// }

// ini_read_real("global","wait_and_exit",0)
global.wait_and_exit=0

if(!ini_key_exists("obj_backgrounder","rotfps")){
	ini_write_real("obj_backgrounder","rotfps",1)
}

if(!ini_key_exists("obj_backgrounder","rotspeed")){
	ini_write_real("obj_backgrounder","rotspeed",1)
}

if(!ini_key_exists("obj_backgrounder","on")){
	ini_write_real("obj_backgrounder","on",1);
}

global.alsoupdatebgm=1

scr_updateui();

global.alsoupdatebgm=0

ini_close();