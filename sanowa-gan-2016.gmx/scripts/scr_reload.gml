


if(obj_Player.currentWeapon == WEAPON_BASIC){
    loading = true;
    alarm[0] = room_speed * 1;
    
    audio_play_sound(snd_reload, 10, false);
}
else if(obj_Player.currentWeapon == WEAPON_SPREAD){
    loading = true;
    alarm[0] = room_speed * 1;
    
    
    audio_play_sound(snd_reload, 10, false);
}
else if(obj_Player.currentWeapon == WEAPON_SHOTGUN){
    loading = true;
    alarm[0] = room_speed * 0.80;
    
    
    var audio = audio_play_sound(snd_reloadShotgun, 10, false);
    audio_sound_pitch(audio, 1 + random_range(-0.01,0.01));
    audio_sound_gain(audio, 1 + random_range(-0.05,0), 0);
}
else if(obj_Player.currentWeapon == WEAPON_GRENADE){
    loading = true;
    alarm[0] = room_speed * 1.0;
    
    
    //var audio = audio_play_sound(snd_reloadShotgun, 10, false);
    //audio_sound_pitch(audio, 1 + random_range(-0.01,0.01));
    //audio_sound_gain(audio, 1 + random_range(-0.05,0), 0);
}
