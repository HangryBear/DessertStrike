///scr_enemy_idle()
state_text='idle'

if (instance_exists(obj_MyPlane)){

    var dis=point_distance(x,y,obj_MyPlane.x,obj_MyPlane.y)
    if(dis<=sight_range){
        speed=1.1*EnemySpeed
        state=scr_enemy_chase2
    }else if ((dis>sight_range) and (dis<=screen_range)){
        speed=0.75*EnemySpeed
        // keep the plane in the level
        if(x>room_width+32 || x<-32){
            result = direction + random_range(100,260)
            if(result>360){ result -= 360}
            direction = result
            image_angle = direction+90
        }
        if(y<-32 || y>room_height+32){
            result = direction + 180
            if(result>360){ result -= 360}
            direction = result
            image_angle = direction+90
        }
    }
    

}

