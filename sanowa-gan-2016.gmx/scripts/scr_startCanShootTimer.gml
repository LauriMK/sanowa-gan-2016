var weapon = obj_Player.currentWeapon;

if(weapon == 1){

    obj_Player.alarm[1] = room_speed * 0.035;
}
else if(weapon == 2){

    obj_Player.alarm[1] = room_speed * 0.030;
}