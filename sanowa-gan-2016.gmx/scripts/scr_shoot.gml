
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
            var bullet_center = instance_create(cx + lengthdir_x(BULLET_OFFSET, image_angle+BULLET_ANGLE), cy + lengthdir_y(BULLET_OFFSET, image_angle+BULLET_ANGLE), obj_ShotgunShell); 
            bullet_center.direction = obj_Player.direction+BULLET_ANGLE; 
            bullet_center.image_angle = obj_Player.direction+BULLET_ANGLE;
            
            var bullet1 = instance_create(cx + lengthdir_x(BULLET_OFFSET, image_angle+BULLET_ANGLE), cy + lengthdir_y(BULLET_OFFSET, image_angle+BULLET_ANGLE), obj_ShotgunShell); 
            bullet1.direction = obj_Player.direction+BULLET_ANGLE+3; 
            bullet1.image_angle = obj_Player.direction+BULLET_ANGLE+3;
            var bullet2 = instance_create(cx + lengthdir_x(BULLET_OFFSET, image_angle+BULLET_ANGLE), cy + lengthdir_y(BULLET_OFFSET, image_angle+BULLET_ANGLE), obj_ShotgunShell); 
            bullet2.direction = obj_Player.direction+BULLET_ANGLE-3; 
            bullet2.image_angle = obj_Player.direction+BULLET_ANGLE-3;
            var bullet3 = instance_create(cx + lengthdir_x(BULLET_OFFSET, image_angle+BULLET_ANGLE), cy + lengthdir_y(BULLET_OFFSET, image_angle+BULLET_ANGLE), obj_ShotgunShell); 
            bullet3.direction = obj_Player.direction+BULLET_ANGLE+5; 
            bullet3.image_angle = obj_Player.direction+BULLET_ANGLE+5;
            var bullet4 = instance_create(cx + lengthdir_x(BULLET_OFFSET, image_angle+BULLET_ANGLE), cy + lengthdir_y(BULLET_OFFSET, image_angle+BULLET_ANGLE), obj_ShotgunShell); 
            bullet4.direction = obj_Player.direction+BULLET_ANGLE-5; 
            bullet4.image_angle = obj_Player.direction+BULLET_ANGLE-5;
            var bullet5 = instance_create(cx + lengthdir_x(BULLET_OFFSET, image_angle+BULLET_ANGLE), cy + lengthdir_y(BULLET_OFFSET, image_angle+BULLET_ANGLE), obj_ShotgunShell); 
            bullet5.direction = obj_Player.direction+BULLET_ANGLE+7; 
            bullet5.image_angle = obj_Player.direction+BULLET_ANGLE+7;
            var bullet6 = instance_create(cx + lengthdir_x(BULLET_OFFSET, image_angle+BULLET_ANGLE), cy + lengthdir_y(BULLET_OFFSET, image_angle+BULLET_ANGLE), obj_ShotgunShell); 
            bullet6.direction = obj_Player.direction+BULLET_ANGLE-7; 
            bullet6.image_angle = obj_Player.direction+BULLET_ANGLE-7;
            var bullet7 = instance_create(cx + lengthdir_x(BULLET_OFFSET, image_angle+BULLET_ANGLE), cy + lengthdir_y(BULLET_OFFSET, image_angle+BULLET_ANGLE), obj_ShotgunShell); 
            bullet7.direction = obj_Player.direction+BULLET_ANGLE+9; 
            bullet7.image_angle = obj_Player.direction+BULLET_ANGLE+9;
            var bullet8 = instance_create(cx + lengthdir_x(BULLET_OFFSET, image_angle+BULLET_ANGLE), cy + lengthdir_y(BULLET_OFFSET, image_angle+BULLET_ANGLE), obj_ShotgunShell); 
            bullet8.direction = obj_Player.direction+BULLET_ANGLE-9; 
            bullet8.image_angle = obj_Player.direction+BULLET_ANGLE-9;
            var bullet9 = instance_create(cx + lengthdir_x(BULLET_OFFSET, image_angle+BULLET_ANGLE), cy + lengthdir_y(BULLET_OFFSET, image_angle+BULLET_ANGLE), obj_ShotgunShell); 
            bullet9.direction = obj_Player.direction+BULLET_ANGLE+11; 
            bullet9.image_angle = obj_Player.direction+BULLET_ANGLE+11;
            var bullet10 = instance_create(cx + lengthdir_x(BULLET_OFFSET, image_angle+BULLET_ANGLE), cy + lengthdir_y(BULLET_OFFSET, image_angle+BULLET_ANGLE), obj_ShotgunShell); 
            bullet10.direction = obj_Player.direction+BULLET_ANGLE-11; 
            bullet10.image_angle = obj_Player.direction+BULLET_ANGLE-11;
            var bullet11 = instance_create(cx + lengthdir_x(BULLET_OFFSET, image_angle+BULLET_ANGLE), cy + lengthdir_y(BULLET_OFFSET, image_angle+BULLET_ANGLE), obj_ShotgunShell); 
            bullet11.direction = obj_Player.direction+BULLET_ANGLE+13; 
            bullet11.image_angle = obj_Player.direction+BULLET_ANGLE+13;
            var bullet12 = instance_create(cx + lengthdir_x(BULLET_OFFSET, image_angle+BULLET_ANGLE), cy + lengthdir_y(BULLET_OFFSET, image_angle+BULLET_ANGLE), obj_ShotgunShell); 
            bullet12.direction = obj_Player.direction+BULLET_ANGLE-13; 
            bullet12.image_angle = obj_Player.direction+BULLET_ANGLE-13;           
            var bullet13 = instance_create(cx + lengthdir_x(BULLET_OFFSET, image_angle+BULLET_ANGLE), cy + lengthdir_y(BULLET_OFFSET, image_angle+BULLET_ANGLE), obj_ShotgunShell); 
            bullet13.direction = obj_Player.direction+BULLET_ANGLE+15; 
            bullet13.image_angle = obj_Player.direction+BULLET_ANGLE+15;
            var bullet14 = instance_create(cx + lengthdir_x(BULLET_OFFSET, image_angle+BULLET_ANGLE), cy + lengthdir_y(BULLET_OFFSET, image_angle+BULLET_ANGLE), obj_ShotgunShell); 
            bullet14.direction = obj_Player.direction+BULLET_ANGLE-15; 
            bullet14.image_angle = obj_Player.direction+BULLET_ANGLE-15;
            var bullet15 = instance_create(cx + lengthdir_x(BULLET_OFFSET, image_angle+BULLET_ANGLE), cy + lengthdir_y(BULLET_OFFSET, image_angle+BULLET_ANGLE), obj_ShotgunShell); 
            bullet15.direction = obj_Player.direction+BULLET_ANGLE+17; 
            bullet15.image_angle = obj_Player.direction+BULLET_ANGLE+17;
            var bullet16 = instance_create(cx + lengthdir_x(BULLET_OFFSET, image_angle+BULLET_ANGLE), cy + lengthdir_y(BULLET_OFFSET, image_angle+BULLET_ANGLE), obj_ShotgunShell); 
            bullet16.direction = obj_Player.direction+BULLET_ANGLE-17; 
            bullet16.image_angle = obj_Player.direction+BULLET_ANGLE-17; 
            var bullet17 = instance_create(cx + lengthdir_x(BULLET_OFFSET, image_angle+BULLET_ANGLE), cy + lengthdir_y(BULLET_OFFSET, image_angle+BULLET_ANGLE), obj_ShotgunShell); 
            bullet17.direction = obj_Player.direction+BULLET_ANGLE+19; 
            bullet17.image_angle = obj_Player.direction+BULLET_ANGLE+19;
            var bullet18 = instance_create(cx + lengthdir_x(BULLET_OFFSET, image_angle+BULLET_ANGLE), cy + lengthdir_y(BULLET_OFFSET, image_angle+BULLET_ANGLE), obj_ShotgunShell); 
            bullet18.direction = obj_Player.direction+BULLET_ANGLE-19; 
            bullet18.image_angle = obj_Player.direction+BULLET_ANGLE-19;
            var bullet19 = instance_create(cx + lengthdir_x(BULLET_OFFSET, image_angle+BULLET_ANGLE), cy + lengthdir_y(BULLET_OFFSET, image_angle+BULLET_ANGLE), obj_ShotgunShell); 
            bullet19.direction = obj_Player.direction+BULLET_ANGLE+1.5; 
            bullet19.image_angle = obj_Player.direction+BULLET_ANGLE+1.5;
            var bullet20 = instance_create(cx + lengthdir_x(BULLET_OFFSET, image_angle+BULLET_ANGLE), cy + lengthdir_y(BULLET_OFFSET, image_angle+BULLET_ANGLE), obj_ShotgunShell); 
            bullet20.direction = obj_Player.direction+BULLET_ANGLE-1.5; 
            bullet20.image_angle = obj_Player.direction+BULLET_ANGLE-1.5;
            
            
            /* var bullet_center_f = instance_create(cx + lengthdir_x(BULLET_OFFSET+30, image_angle+BULLET_ANGLE), cy + lengthdir_y(BULLET_OFFSET+15, image_angle+BULLET_ANGLE), obj_ShotgunShell); 
            bullet_center_f.direction = obj_Player.direction+BULLET_ANGLE; 
            bullet_center_f.image_angle = obj_Player.direction+BULLET_ANGLE;            
            
            
            var bullet19 = instance_create(cx + lengthdir_x(BULLET_OFFSET+30, image_angle+BULLET_ANGLE), cy + lengthdir_y(BULLET_OFFSET+15, image_angle+BULLET_ANGLE), obj_ShotgunShell); 
            bullet19.direction = obj_Player.direction+BULLET_ANGLE+2; 
            bullet19.image_angle = obj_Player.direction+BULLET_ANGLE+2;
            var bullet20 = instance_create(cx + lengthdir_x(BULLET_OFFSET+30, image_angle+BULLET_ANGLE), cy + lengthdir_y(BULLET_OFFSET+15, image_angle+BULLET_ANGLE), obj_ShotgunShell); 
            bullet20.direction = obj_Player.direction+BULLET_ANGLE-2; 
            bullet20.image_angle = obj_Player.direction+BULLET_ANGLE-2;
            var bullet21 = instance_create(cx + lengthdir_x(BULLET_OFFSET+30, image_angle+BULLET_ANGLE), cy + lengthdir_y(BULLET_OFFSET+15, image_angle+BULLET_ANGLE), obj_ShotgunShell); 
            bullet21.direction = obj_Player.direction+BULLET_ANGLE+4; 
            bullet21.image_angle = obj_Player.direction+BULLET_ANGLE+4;
            var bullet22 = instance_create(cx + lengthdir_x(BULLET_OFFSET+30, image_angle+BULLET_ANGLE), cy + lengthdir_y(BULLET_OFFSET+15, image_angle+BULLET_ANGLE), obj_ShotgunShell); 
            bullet22.direction = obj_Player.direction+BULLET_ANGLE-4; 
            bullet22.image_angle = obj_Player.direction+BULLET_ANGLE-4;
            var bullet23 = instance_create(cx + lengthdir_x(BULLET_OFFSET+30, image_angle+BULLET_ANGLE), cy + lengthdir_y(BULLET_OFFSET+15, image_angle+BULLET_ANGLE), obj_ShotgunShell); 
            bullet23.direction = obj_Player.direction+BULLET_ANGLE+6; 
            bullet23.image_angle = obj_Player.direction+BULLET_ANGLE+6;
            var bullet24 = instance_create(cx + lengthdir_x(BULLET_OFFSET+30, image_angle+BULLET_ANGLE), cy + lengthdir_y(BULLET_OFFSET+15, image_angle+BULLET_ANGLE), obj_ShotgunShell); 
            bullet24.direction = obj_Player.direction+BULLET_ANGLE-6; 
            bullet24.image_angle = obj_Player.direction+BULLET_ANGLE-6;
            var bullet25 = instance_create(cx + lengthdir_x(BULLET_OFFSET+30, image_angle+BULLET_ANGLE), cy + lengthdir_y(BULLET_OFFSET+15, image_angle+BULLET_ANGLE), obj_ShotgunShell); 
            bullet25.direction = obj_Player.direction+BULLET_ANGLE+8; 
            bullet25.image_angle = obj_Player.direction+BULLET_ANGLE+8;
            var bullet26 = instance_create(cx + lengthdir_x(BULLET_OFFSET+30, image_angle+BULLET_ANGLE), cy + lengthdir_y(BULLET_OFFSET+15, image_angle+BULLET_ANGLE), obj_ShotgunShell); 
            bullet26.direction = obj_Player.direction+BULLET_ANGLE-8; 
            bullet26.image_angle = obj_Player.direction+BULLET_ANGLE-8;
            var bullet27 = instance_create(cx + lengthdir_x(BULLET_OFFSET+30, image_angle+BULLET_ANGLE), cy + lengthdir_y(BULLET_OFFSET+15, image_angle+BULLET_ANGLE), obj_ShotgunShell); 
            bullet27.direction = obj_Player.direction+BULLET_ANGLE+10; 
            bullet27.image_angle = obj_Player.direction+BULLET_ANGLE+10;
            var bullet28 = instance_create(cx + lengthdir_x(BULLET_OFFSET+30, image_angle+BULLET_ANGLE), cy + lengthdir_y(BULLET_OFFSET+15, image_angle+BULLET_ANGLE), obj_ShotgunShell); 
            bullet28.direction = obj_Player.direction+BULLET_ANGLE-10; 
            bullet28.image_angle = obj_Player.direction+BULLET_ANGLE-10;
            var bullet29 = instance_create(cx + lengthdir_x(BULLET_OFFSET+30, image_angle+BULLET_ANGLE), cy + lengthdir_y(BULLET_OFFSET+15, image_angle+BULLET_ANGLE), obj_ShotgunShell); 
            bullet29.direction = obj_Player.direction+BULLET_ANGLE+12; 
            bullet29.image_angle = obj_Player.direction+BULLET_ANGLE+12;
            var bullet30 = instance_create(cx + lengthdir_x(BULLET_OFFSET+30, image_angle+BULLET_ANGLE), cy + lengthdir_y(BULLET_OFFSET+15, image_angle+BULLET_ANGLE), obj_ShotgunShell); 
            bullet30.direction = obj_Player.direction+BULLET_ANGLE-12; 
            bullet30.image_angle = obj_Player.direction+BULLET_ANGLE-12;
            var bullet31 = instance_create(cx + lengthdir_x(BULLET_OFFSET+30, image_angle+BULLET_ANGLE), cy + lengthdir_y(BULLET_OFFSET+15, image_angle+BULLET_ANGLE), obj_ShotgunShell); 
            bullet31.direction = obj_Player.direction+BULLET_ANGLE+14; 
            bullet31.image_angle = obj_Player.direction+BULLET_ANGLE+14;
            var bullet32 = instance_create(cx + lengthdir_x(BULLET_OFFSET+30, image_angle+BULLET_ANGLE), cy + lengthdir_y(BULLET_OFFSET+15, image_angle+BULLET_ANGLE), obj_ShotgunShell); 
            bullet32.direction = obj_Player.direction+BULLET_ANGLE-14; 
            bullet32.image_angle = obj_Player.direction+BULLET_ANGLE-14;
            var bullet33 = instance_create(cx + lengthdir_x(BULLET_OFFSET+30, image_angle+BULLET_ANGLE), cy + lengthdir_y(BULLET_OFFSET+15, image_angle+BULLET_ANGLE), obj_ShotgunShell); 
            bullet33.direction = obj_Player.direction+BULLET_ANGLE+16; 
            bullet33.image_angle = obj_Player.direction+BULLET_ANGLE+16;
            var bullet34 = instance_create(cx + lengthdir_x(BULLET_OFFSET+30, image_angle+BULLET_ANGLE), cy + lengthdir_y(BULLET_OFFSET+15, image_angle+BULLET_ANGLE), obj_ShotgunShell); 
            bullet34.direction = obj_Player.direction+BULLET_ANGLE-16; 
            bullet34.image_angle = obj_Player.direction+BULLET_ANGLE-16;
            var bullet35 = instance_create(cx + lengthdir_x(BULLET_OFFSET+30, image_angle+BULLET_ANGLE), cy + lengthdir_y(BULLET_OFFSET+15, image_angle+BULLET_ANGLE), obj_ShotgunShell);       
            bullet35.direction = obj_Player.direction+BULLET_ANGLE+18; 
            bullet35.image_angle = obj_Player.direction+BULLET_ANGLE+18;
            var bullet36 = instance_create(cx + lengthdir_x(BULLET_OFFSET+30, image_angle+BULLET_ANGLE), cy + lengthdir_y(BULLET_OFFSET+15, image_angle+BULLET_ANGLE), obj_ShotgunShell); 
            bullet36.direction = obj_Player.direction+BULLET_ANGLE-18; 
            bullet36.image_angle = obj_Player.direction+BULLET_ANGLE-18;
            var bullet37 = instance_create(cx + lengthdir_x(BULLET_OFFSET+30, image_angle+BULLET_ANGLE), cy + lengthdir_y(BULLET_OFFSET+15, image_angle+BULLET_ANGLE), obj_ShotgunShell); 
            bullet37.direction = obj_Player.direction+BULLET_ANGLE+20; 
            bullet37.image_angle = obj_Player.direction+BULLET_ANGLE+20;
            var bullet38 = instance_create(cx + lengthdir_x(BULLET_OFFSET+30, image_angle+BULLET_ANGLE), cy + lengthdir_y(BULLET_OFFSET+15, image_angle+BULLET_ANGLE), obj_ShotgunShell); 
            bullet38.direction = obj_Player.direction+BULLET_ANGLE-20; 
            bullet38.image_angle = obj_Player.direction+BULLET_ANGLE-20;                                   
            
            */
                        
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
