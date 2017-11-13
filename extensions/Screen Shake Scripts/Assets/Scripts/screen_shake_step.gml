///screen_shake_step(x,y,view)
/*
This script applys the effect based on the x and y shake variables.
*/
var xx=argument0; //views starting x
var yy=argument1; //views starting y
//x shake
if xshake>0{
    view_xview[argument2]=xx+random_range(-xshake,xshake);
}
else{
    xshake=0;
}
//y shake
if yshake>0{
    view_yview[argument2]=yy+random_range(-yshake,yshake);
}
else{
    yshake=0;
}
//fade
xshake-=xshake_dist;
yshake-=yshake_dist;