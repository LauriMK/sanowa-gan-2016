
var weapon = obj_Player.currentWeapon;

//Basic weapond
if(weapon == WEAPON_BASIC){
    
    if(canShoot){
    
        if(loading == false){
            cx = x + lengthdir_x(BULLET_OFFSET2, image_angle+BULLET_ANGLE2);
            cy = y + lengthdir_y(BULLET_OFFSET2, image_angle+BULLET_ANGLE2);
            var bullet = instance_create(cx + lengthdir_x(BULLET_OFFSET, image_angle+BULLET_ANGLE), cy + lengthdir_y(BULLET_OFFSET, image_angle+BULLET_ANGLE), obj_BasicBullet); 
            bullet.direction = obj_Player.direction+BULLET_ANGLE; 
            bullet.image_angle = obj_Player.direction+BULLET_ANGLE;
            
            if(magazine % 2 == 0){
                var sound = audio_play_sound(snd_shoot, 10, false);
                audio_sound_pitch(sound, 1 + ( random_range(-0.01,0.01) ) );
            }
            obj_Player.canShoot = false;
            scr_startCanShootTimer();
            obj_Player.magazine--;
                if(obj_Player.magazine <= 0){
                
                    scr_reload();
                
                }
        }
    }
}
//Spread shot
else if(weapon == WEAPON_SPREAD){
    
    if(canShoot){
    
        if(loading == false){
            cx = x + lengthdir_x(BULLET_OFFSET2, image_angle+BULLET_ANGLE2);
            cy = y + lengthdir_y(BULLET_OFFSET2, image_angle+BULLET_ANGLE2);
            var bullet1 = instance_create(cx + lengthdir_x(BULLET_OFFSET, image_angle+BULLET_ANGLE), cy + lengthdir_y(BULLET_OFFSET, image_angle+BULLET_ANGLE), obj_BasicBullet); 
            bullet1.direction = obj_Player.direction+BULLET_ANGLE; 
            bullet1.image_angle = obj_Player.direction+BULLET_ANGLE;
            var bullet2 = instance_create(cx + lengthdir_x(BULLET_OFFSET, image_angle+BULLET_ANGLE), cy + lengthdir_y(BULLET_OFFSET, image_angle+BULLET_ANGLE), obj_BasicBullet); 
            bullet2.direction = obj_Player.direction+BULLET_ANGLE+BULLET_SPREAD; 
            bullet2.image_angle = obj_Player.direction+BULLET_ANGLE+BULLET_SPREAD;
            var bullet3 = instance_create(cx + lengthdir_x(BULLET_OFFSET, image_angle+BULLET_ANGLE), cy + lengthdir_y(BULLET_OFFSET, image_angle+BULLET_ANGLE), obj_BasicBullet); 
            bullet3.direction = obj_Player.direction+BULLET_ANGLE-BULLET_SPREAD; 
            bullet3.image_angle = obj_Player.direction+BULLET_ANGLE-BULLET_SPREAD;
            
            if(magazine % 2 == 0){
                var sound = audio_play_sound(snd_shoot, 10, false);
                audio_sound_pitch(sound, 1 + ( random_range(-0.01,0.01) ) );
            }
            obj_Player.canShoot = false;
            scr_startCanShootTimer();
            obj_Player.magazine--;
                if(obj_Player.magazine <= 0){
                    
                    //obj_Player.currentWeapon = 1;
                    scr_reload();
                    
                
                }
        }
    }
    

    
}
else if(weapon == WEAPON_SHOTGUN){
    
    
    
        if(loading == false){
            cx = x + lengthdir_x(BULLET_OFFSET2, image_angle+BULLET_ANGLE2);
            cy = y + lengthdir_y(BULLET_OFFSET2, image_angle+BULLET_ANGLE2);
            var bullet1 = instance_create(cx + lengthdir_x(BULLET_OFFSET, image_angle+BULLET_ANGLE), cy + lengthdir_y(BULLET_OFFSET, image_angle+BULLET_ANGLE), obj_BasicBullet); 
            bullet1.direction = obj_Player.direction+BULLET_ANGLE; 
            bullet1.image_angle = obj_Player.direction+BULLET_ANGLE;
            var bullet2 = instance_create(cx + lengthdir_x(BULLET_OFFSET, image_angle+BULLET_ANGLE), cy + lengthdir_y(BULLET_OFFSET, image_angle+BULLET_ANGLE), obj_BasicBullet); 
            bullet2.direction = obj_Player.direction+BULLET_ANGLE+BULLET_SPREAD; 
            bullet2.image_angle = obj_Player.direction+BULLET_ANGLE+BULLET_SPREAD;
            var bullet3 = instance_create(cx + lengthdir_x(BULLET_OFFSET, image_angle+BULLET_ANGLE), cy + lengthdir_y(BULLET_OFFSET, image_angle+BULLET_ANGLE), obj_BasicBullet); 
            bullet3.direction = obj_Player.direction+BULLET_ANGLE-BULLET_SPREAD; 
            bullet3.image_angle = obj_Player.direction+BULLET_ANGLE-BULLET_SPREAD;
            
            
            var sound = audio_play_sound(snd_shotgun, 10, false);
            audio_sound_pitch(sound, 1 + ( random_range(-0.01,0.01) ) );
            
            
            
            obj_Player.magazine--;
            if(obj_Player.magazine <= 0){
                    
                    obj_Player.currentWeapon = WEAPON_BASIC;
                    scr_reload();
                    
                
            }
            if(obj_Player.currentWeapon = WEAPON_SHOTGUN)
                    scr_reload();
            
        
    }
    

    
}
else if(weapon == WEAPON_GRENADE){
    
    
    
        if(loading == false){
            cx = x + lengthdir_x(BULLET_OFFSET2, image_angle+BULLET_ANGLE2);
            cy = y + lengthdir_y(BULLET_OFFSET2, image_angle+BULLET_ANGLE2);
            var bullet1 = instance_create(cx + lengthdir_x(BULLET_OFFSET, image_angle+BULLET_ANGLE), cy + lengthdir_y(BULLET_OFFSET, image_angle+BULLET_ANGLE), obj_Grenade); 
            bullet1.direction = obj_Player.direction+BULLET_ANGLE; 
            bullet1.image_angle = obj_Player.direction+BULLET_ANGLE;
            
            
            var sound = audio_play_sound(snd_grenade, 10, false);
            audio_sound_pitch(sound, 1 + ( random_range(-0.01,0.01) ) );
            
            
            
            obj_Player.magazine--;
            if(obj_Player.magazine <= 0){
                    
                    obj_Player.currentWeapon = WEAPON_BASIC;
                    scr_reload();
                    
                
            }
            if(obj_Player.currentWeapon = WEAPON_GRENADE)
                    scr_reload();
            
        
    }
    

    
}