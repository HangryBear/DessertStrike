///scr_enemy_attack()

if(instance_exists(obj_MyPlane)){
    state_text='attack'
    var dis=point_distance(x,y,obj_MyPlane.x,obj_MyPlane.y)
    var dir = point_direction(x, y, obj_MyPlane.x, obj_MyPlane.y);
    
    
    if (dis>attack_range){
        state=scr_enemy_chase
    }else {
        // Attack
        direction = dir
        image_angle = dir + 90
        if (alarm[0]==-1){
           
            with (instance_create(x, y, obj_Enemy_Bullet1))
            {
                direction = other.direction;
                image_angle = direction;
                speed = EnemyBulletSpeed;
            }
            
            audio_play_sound(snd_Shoot1,8,false)
            alarm[0] = room_speed
        }
    
    }

}
