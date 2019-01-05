/// @description 配置一些无用东西

ini_open("chaoscarousel.ini");

window_set_size(640,480)

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

scr_bgm();

// 0
self.siner = 0
// 0
self.rot = 0
// 0
self.xscale = 0
// 0
self.yscale = 0
// 320
self.xcen = 320
// 240
self.ycen = 240
// 360
self.radius = 360

ini_open("chaoscarousel.ini");

if(ini_key_exists("obj_backgrounder","egg")){
self.dkblue = merge_color(c_red, 0x830000, 0.1)
self.dkblue2 = merge_color(c_white, 0x100000, 0.5)
self.dkblue3 = merge_color(c_blue, 0x003400, 0.5)
self.dkblue3 = merge_color(self.dkblue3, 0x000000, 0.2)
}else{
self.dkblue = merge_color(0x800000, 0x404040, 0.1)
self.dkblue2 = merge_color(0x800000, 0x404040, 0.5)
self.dkblue3 = merge_color(0x800000, 0x404040, 0.5)
self.dkblue3 = merge_color(self.dkblue3, 0x000000, 0.2)
}
// 0
self.bgx = 0
// 0
self.rotcounter = 0
// 1
self.rotfps = ini_read_real("obj_backgrounder","rotfps",1)
// 1
self.rotspeed = ini_read_real("obj_backgrounder","rotspeed",1)
// 0
self.check = 0
// 1
self.on = ini_read_real("obj_backgrounder","on",1)
// 0
self.bgalpha = 0

ini_close();