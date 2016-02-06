
if(obj_Player.powerUpSlot == 1){
        obj_Player.powerUpSlot = 0;
        obj_Player.currentWeapon = 2; 
        obj_Player.magazine = 91;
        audio_play_sound(snd_click,14,false);
}