
var weapon = obj_Player.currentWeapon;

//Basic weapond
if(weapon == 1){
    
    cx = x + lengthdir_x(BULLET_OFFSET2, image_angle+BULLET_ANGLE2);
    cy = y + lengthdir_y(BULLET_OFFSET2, image_angle+BULLET_ANGLE2);
    var bullet = instance_create(cx + lengthdir_x(BULLET_OFFSET, image_angle+BULLET_ANGLE), cy + lengthdir_y(BULLET_OFFSET, image_angle+BULLET_ANGLE), obj_BasicBullet); 
    bullet.direction = obj_Player.direction+BULLET_ANGLE; 
    bullet.image_angle = obj_Player.direction+BULLET_ANGLE;
}
//Spread shot
else if(weapon == 2){

    //create first bullet
    var bullet1 = instance_create(x + lengthdir_x(BULLET_OFFSET, image_angle+BULLET_ANGLE), y + lengthdir_y(BULLET_OFFSET, image_angle+BULLET_ANGLE), obj_BasicBullet);
    bullet1.direction = obj_Player.direction+BULLET_ANGLE; 
    bullet1.image_angle = obj_Player.direction+BULLET_ANGLE;    
    //create second bullet
    var bullet2 = instance_create(x + lengthdir_x(BULLET_OFFSET, image_angle+BULLET_ANGLE), y + lengthdir_y(BULLET_OFFSET, image_angle+BULLET_ANGLE), obj_BasicBullet);
    bullet2.direction = obj_Player.direction+BULLET_ANGLE+BULLET_SPREAD; 
    bullet2.image_angle = obj_Player.direction+BULLET_ANGLE+BULLET_SPREAD;
    
    //create third bullet 
    var bullet3 = instance_create(x + lengthdir_x(BULLET_OFFSET, image_angle+BULLET_ANGLE), y + lengthdir_y(BULLET_OFFSET, image_angle+BULLET_ANGLE), obj_BasicBullet); 
    bullet3.direction = obj_Player.direction+BULLET_ANGLE-BULLET_SPREAD; 
    bullet3.image_angle = obj_Player.direction+BULLET_ANGLE-BULLET_SPREAD; 
    
}
