///scr_spawnItem

if(instance_number(obj_PwrParent) < 1){

    var willItSpawn = 50;
    
    if(obj_Player.playerHitPoints < 15){
    
        willItSpawn += irandom_range(15, 35);    
    }
    else if(obj_EnemySpawner.enemiesSpawned > 100 && obj_EnemySpawner.enemiesOnScreen > 20){
        
        willItSpawn -= irandom_range(30, 50); 
    }
    else if(obj_EnemySpawner.enemiesSpawned > 200 && obj_EnemySpawner.enemiesOnScreen > 25){
        
        willItSpawn -= irandom_range(36, 50); 
    }
    else{
        
        willItSpawn = irandom_range(0,100);
    }
    
    //do the spawn
    
    if (willItSpawn < 7) {
    
        obj_EnemySpawner.itemToSpawn = scr_whatWeapon();
        instance_create(x, y, obj_PwrSpawnFlash);
        
    }
    else if (willItSpawn > 90) {
    
        obj_EnemySpawner.itemToSpawn = 1; // health spawn
        instance_create(x, y, obj_PwrSpawnFlash);
    }
    else {
        //do nothing
        
    }
}
