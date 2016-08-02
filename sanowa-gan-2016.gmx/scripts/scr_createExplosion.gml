///scr_createExplosion
var xx = argument0;
var yy = argument1;

part_particles_create(obj_Particles.system, xx, yy, obj_Particles.explosion_center_part, 2);
repeat(15){

    instance_create(xx-16+random(32), yy-random(32), obj_Explosion_p);
    
}
audio_play_sound(snd_grenadeExplode, 15, false);