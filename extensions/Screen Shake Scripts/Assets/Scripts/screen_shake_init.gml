///screen_shake_init(power,fade,view)
/*
Should be ran in the create event of any object running the "screen_shake_step" to init
variables. You may also use the extended version of this script.

This script sets the variables for the effect.
If a the defined view is not active and visible it will set it to be active and visible
as this effect does not work without a view.

This script is simplified and will apply the same shake value to both x and y axis.
*/
xshake=argument0; //x shake
yshake=argument0; //y shake
xshake_dist=argument1; //x shake fade
yshake_dist=argument1; //y shake fade

//enable a view if it isn't already active
if (!view_visible[argument2]){
    view_visible[argument2]=true;
}
if (!view_enabled){
    view_enabled=true;
}
