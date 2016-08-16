///scr_spawnItem

if(instance_number(obj_PwrParent) < 3){

    var number = irandom_range(1, 99);
    
    if(number > 0 && number < 20){
    
        obj_EnemySpawner.itemToSpawn = 1; // health spawn
        instance_create(x, y, obj_PwrSpawnFlash);
    
    
    }
    else if(number > 19 && number < 40){
    
        obj_EnemySpawner.itemToSpawn = 2; // 
        instance_create(x, y, obj_PwrSpawnFlash);
    }
    
    else if(number > 39 && number < 60){
    
        obj_EnemySpawner.itemToSpawn = 3; // 
        instance_create(x, y, obj_PwrSpawnFlash);
    }
    else if(number > 59 && number < 80){
    
        obj_EnemySpawner.itemToSpawn = 4; // 
        instance_create(x, y, obj_PwrSpawnFlash);
    }
    else if(number > 79 && number < 100){
    
        //obj_EnemySpawner.itemToSpawn = 5; // 
        //instance_create(x, y, obj_PwrSpawnFlash);
    }

}








/*
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
}*/
