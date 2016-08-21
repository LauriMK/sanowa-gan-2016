///scr_whatWeapon()

var gunNumber = 3;

if(obj_Player.playerHitPoints < 15){

    gunNumber = irandom_range(3,4); 
}
else if(obj_EnemySpawner.enemiesOnScreen > 35){
    
    gunNumber = 3; 
}
else if(obj_EnemySpawner.enemiesSpawned > 300 && obj_EnemySpawner.enemiesOnScreen > 35){
    
    gunNumber = 4; 
}
else{
    
    gunNumber = irandom_range(2,4); 
}

return gunNumber;