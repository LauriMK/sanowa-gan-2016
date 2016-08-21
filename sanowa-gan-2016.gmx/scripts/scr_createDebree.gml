///scr_createExplosion
var xx = argument0;
var yy = argument1;

part_particles_create(obj_ParticlesDebree.system2, xx, yy, obj_ParticlesDebree.deb1_part, 1);
repeat(3){

    instance_create(xx-16+random(32), yy-random(32), obj_Debree);
    
}
repeat(2){

    instance_create(xx-16+random(32), yy-random(32), obj_Explosion_p);
    
}
if(!audio_is_playing(snd_grenadeExplode)){
    audio_play_sound(snd_grenadeExplode, 15, false);
}
