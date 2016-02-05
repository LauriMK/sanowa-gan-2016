
var weapon = obj_Player.currentWeapon;

//Basic weapond
if(weapon == 1){

    var bullet = instance_create(x + lengthdir_x(BULLET_OFFSET, image_angle+BULLET_ANGLE), y + lengthdir_y(BULLET_OFFSET, image_angle+BULLET_ANGLE), obj_BasicBullet); 

}
//Spread shot
else if(weapon = 2){

    //create first bullet
    var bullet1 = instance_create(x + lengthdir_x(BULLET_OFFSET, image_angle+BULLET_ANGLE), y + lengthdir_y(BULLET_OFFSET, image_angle+BULLET_ANGLE), obj_BasicBullet);
     
    //create second bullet
    var bullet2 = instance_create(x + lengthdir_x(BULLET_OFFSET, image_angle+BULLET_ANGLE), y + lengthdir_y(BULLET_OFFSET, image_angle+BULLET_ANGLE), obj_BasicBullet);
    bullet2.direction = obj_Player.direction+BULLET_ANGLE+BULLET_SPREAD; 
    bullet2.image_angle = obj_Player.direction+BULLET_ANGLE+BULLET_SPREAD;
    
    //create third bullet 
    var bullet3 = instance_create(x + lengthdir_x(BULLET_OFFSET, image_angle+BULLET_ANGLE), y + lengthdir_y(BULLET_OFFSET, image_angle+BULLET_ANGLE), obj_BasicBullet); 
    bullet3.direction = obj_Player.direction+BULLET_ANGLE-BULLET_SPREAD; 
    bullet3.image_angle = obj_Player.direction+BULLET_ANGLE-BULLET_SPREAD; 
    
}
