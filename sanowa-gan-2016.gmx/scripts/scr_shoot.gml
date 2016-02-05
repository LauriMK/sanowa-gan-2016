
var weapon = obj_Player.currentWeapon;

if(weapon == 1){

    var bullet = instance_create(x + lengthdir_x(24, image_angle+30), y + lengthdir_y(24, image_angle+30), obj_BasicBullet); 

}
else if(weapon = 2){

    var bullet = instance_create(x + lengthdir_x(24, image_angle+30), y + lengthdir_y(24, image_angle+30), obj_BasicBullet); 
    var bullet2 = instance_create(x + lengthdir_x(24, image_angle+30), y + lengthdir_y(24, image_angle+30), obj_BasicBullet);
    bullet2.direction = obj_Player.direction+30+7; 
    bullet2.image_angle = obj_Player.direction+30+7; 
    var bullet3 = instance_create(x + lengthdir_x(24, image_angle+30), y + lengthdir_y(24, image_angle+30), obj_BasicBullet); 
    bullet3.direction = obj_Player.direction+30-7; 
    bullet3.image_angle = obj_Player.direction+30-7; 
    
}
