if(global.alsoupdatebgm){
scr_bgm();
}

// 0
obj_backgrounder.siner = 0
// 0
obj_backgrounder.rot = 0
// 0
obj_backgrounder.xscale = 0
// 0
obj_backgrounder.yscale = 0
// 320
obj_backgrounder.xcen = 320
// 240
obj_backgrounder.ycen = 240
// 360
obj_backgrounder.radius = 360

ini_open("chaoscarousel.ini");

if(ini_key_exists("obj_backgrounder","egg")){
obj_backgrounder.dkblue = merge_color(c_red, 0x830000, 0.1)
obj_backgrounder.dkblue2 = merge_color(c_white, 0x100000, 0.5)
obj_backgrounder.dkblue3 = merge_color(c_blue, 0x003400, 0.5)
obj_backgrounder.dkblue3 = merge_color(obj_backgrounder.dkblue3, 0x000000, 0.2)
}else{
obj_backgrounder.dkblue = merge_color(0x800000, 0x404040, 0.1)
obj_backgrounder.dkblue2 = merge_color(0x800000, 0x404040, 0.5)
obj_backgrounder.dkblue3 = merge_color(0x800000, 0x404040, 0.5)
obj_backgrounder.dkblue3 = merge_color(obj_backgrounder.dkblue3, 0x000000, 0.2)
}
// 0
obj_backgrounder.bgx = 0
// 0
obj_backgrounder.rotcounter = 0
// 1
obj_backgrounder.rotfps = ini_read_real("obj_backgrounder","rotfps",1)
// 1
obj_backgrounder.rotspeed = ini_read_real("obj_backgrounder","rotspeed",1)
// 0
obj_backgrounder.check = 0
// 1
obj_backgrounder.on = ini_read_real("obj_backgrounder","on",1)
// 0
obj_backgrounder.bgalpha = 0
ini_close();