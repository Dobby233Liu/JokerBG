if(global.bgm){
ini_open("chaoscarousel.ini");
// self.selectorshit=random_range(8,40)
if(ini_key_exists("obj_backgrounder","egg")){
    audio_play_sound(snd_completely_shit_ob,3,1)
	global.curbgm=snd_completely_shit_ob
}else if(ini_key_exists("scr_bgm","midi")){
	audio_play_sound(mus_joker_midi,3,1)
	global.curbgm=mus_joker_midi
}else{
	audio_play_sound(mus_joker,3,1)
	global.curbgm=mus_joker
}
ini_close()
}else{
global.notinitedbgm=1
}