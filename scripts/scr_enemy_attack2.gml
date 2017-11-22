///scr_enemy_attack()

if(instance_exists(obj_MyPlane)){
    state_text='attack'
    var dis=point_distance(x,y,obj_MyPlane.x,obj_MyPlane.y)
    var dir = point_direction(x, y, obj_MyPlane.x, obj_MyPlane.y);
    
    
    if (dis>attack_range){
        state=scr_enemy_chase2
    }else {
        // Attack
          scr_gradually_turn(self.id, obj_MyPlane, TurnRate, 1.0)
        if (alarm[0]==-1){
           if((direction-dir)<15){
                with (instance_create(x, y, obj_Enemy_Bullet2))
                {
              //      direction = other.direction;
              //      image_angle = direction;
              //      speed = EnemyBulletSpeed;
                }

            audio_play_sound(snd_Shoot1,8,false)
            alarm[0] = room_speed
            }
        }
    
    }

}
