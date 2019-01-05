/// @description afew keys
self.wait = 83000

self.waiting = 1

self.con = 0

if (global.wait_and_exit & self.waiting) {
    self.con = con + 1
    if (con >= wait) {
        self.waiting = 0
        self.con = 0
    }
}

if (global.wait_and_exit) {
    if (!(audio_is_playing(mus_joker) | audio_is_playing(snd_completely_shit_ob))) {
        game_end();
    }
}

if (keyboard_check_released(ord("R"))) {
    game_restart();
}
if (keyboard_check_released(vk_f4)) {
    window_set_fullscreen(!window_get_fullscreen())
}
if (keyboard_check_released(vk_escape)) {
    game_end();
}
if (keyboard_check_released(ord("B"))) {
    ini_open("chaoscarousel.ini");
    global.bgm = !global.bgm
    if (!global.bgm) audio_pause_all()
    else if (!global.notinitedbgm) audio_resume_all() else scr_bgm()
    ini_write_real("global", "bgm", global.bgm)
    ini_close()
}
if (keyboard_check_released(vk_f12)) {
    // placeholder
}
if (keyboard_check_released(vk_insert)) {
    if (!global.notinitedbgm) audio_sound_pitch(global.curbgm, audio_sound_get_pitch(global.curbgm) + 1)
	self.rotspeed = self.rotspeed + 1
    // self.rotfps=self.rotfps-1
}
if (keyboard_check_released(vk_delete)) {
    if (!global.notinitedbgm) audio_sound_pitch(global.curbgm, audio_sound_get_pitch(global.curbgm) - 1)
    self.rotspeed = self.rotspeed - 1
    // self.rotfps=self.rotfps+1
}

if keyboard_check_pressed(ord("S"))
{
   game_save("testsave.dat");
}

if keyboard_check_pressed(ord("L"))
{
   game_load("testsave.dat");
}
// if (keyboard_check_released(ord("E"))){
//	ini_open("chaoscarousel.ini");
//	ini_write_real("obj_backgrounder","egg",1);
//	ini_close();
//	scr_bgm();
// }