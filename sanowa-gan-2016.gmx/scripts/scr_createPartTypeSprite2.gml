///scr_createPartTypeSprite2(sprite, blend, min_life, max_life, min_scale, max_scale, scaling)
var sprite = argument0;
var blend = argument1;
var min_life = argument2;
var max_life = argument3;
var min_scale = argument4;
var max_scale = argument5;
var scaling = argument6;

var type = part_type_create();
part_type_alpha2(type, 1, 1);
part_type_sprite(type, sprite, false, false, false);
part_type_blend(type, false);
part_type_size(type, min_scale, max_scale, 0, 0);
part_type_life(type, 19, 24);
part_type_orientation(type, 0, 360, 0, 0, 0);
part_type_gravity(type, 0.20, random(360));

return type;
