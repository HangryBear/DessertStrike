///scr_enemy_idle()
state_text='idle'

if (instance_exists(obj_MyPlane)){

    var dis=point_distance(x,y,obj_MyPlane.x,obj_MyPlane.y)
    if(dis<=sight_range){
        state=scr_enemy_chase3
    }
    

}

