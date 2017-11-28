///scr_enemy_chase()
if(instance_exists(obj_MyPlane)){


    state_text='chase'
    var dis=point_distance(x,y,obj_MyPlane.x,obj_MyPlane.y)
    

    if(dis<=sight_range && dis>attack_range){
        scr_gradually_turn(self.id, obj_MyPlane, TurnRate, 1.0)
    }   else if (dis<=attack_range){
        scr_gradually_turn(self.id, obj_MyPlane, TurnRate, 1.0)
        state=scr_enemy_attack3
    }   else{

        state=scr_enemy_idle3
    }
}
