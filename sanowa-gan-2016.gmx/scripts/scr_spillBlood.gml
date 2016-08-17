///scr_spillBlood(x, y)

var xx = argument0;
var yy = argument1;






part_emitter_region(obj_PartBlood.partBlood_sys, obj_PartBlood.partBlood_emit, xx+3, xx-3, yy+3, yy-3, 1, 1);
part_emitter_burst(obj_PartBlood.partBlood_sys, obj_PartBlood.partBlood_emit, obj_PartBlood.partBlood, 20);
