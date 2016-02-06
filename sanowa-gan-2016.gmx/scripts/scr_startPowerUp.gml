
if(obj_Player.powerUpSlot == POWERUP_SLOT_SPREAD){
        obj_Player.powerUpSlot = 0;
        obj_Player.currentWeapon = 2; 
        obj_Player.magazine = 91;
        audio_play_sound(snd_click,14,false);
}
else if(obj_Player.powerUpSlot == POWERUP_SLOT_SHOTGUN){
        obj_Player.powerUpSlot = 0;
        obj_Player.currentWeapon = 3; 
        obj_Player.magazine = 10;
        audio_play_sound(snd_click,14,false);
}
