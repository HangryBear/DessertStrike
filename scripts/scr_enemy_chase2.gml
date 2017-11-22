///scr_enemy_chase()
if(instance_exists(obj_MyPlane)){


    state_text='chase'
    var dis=point_distance(x,y,obj_MyPlane.x,obj_MyPlane.y)
//    var dir=point_direction(x,y,obj_MyPlane.x,obj_MyPlane.y)
    

    if(dis<=sight_range && dis>attack_range){
        scr_gradually_turn(self.id, obj_MyPlane, TurnRate, 1.0)
    }   else if (dis<=attack_range){
        scr_gradually_turn(self.id, obj_MyPlane, TurnRate, 1.0)
        state=scr_enemy_attack2
    }   else{
        speed=EnemySpeed*0.6

        state=scr_enemy_idle2
    }
}
