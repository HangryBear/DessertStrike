///game_pause([3D game]);
/*
 To pause the game, we deactivate ALL objects, and
 then we create our pause object. However, we do
 create a list containing the currently active
 instances, so that we do not reactivate the
 already deactivated instances when un-pausing.
 
 Before deactivating any objects, we make sure to
 draw any gui-events to the application surface.
 Else the gui will not be drawn in pause mode.
 
 We also make sure to clear the io (meaning the
 computer will forget that any keys are pressed,
 so that the pause key is not triggered instantly
 in the pause object, in case we are using the
 same key for pausing and un-pausing.
*/

surface_set_target(application_surface);
with all {
 event_perform(ev_draw,74); //Due to a bug, ev_gui_begin did not work
 event_perform(ev_draw,ev_gui);
 event_perform(ev_draw,75); //Due to a bug, ev_gui_end did not work
}
surface_reset_target();

var _list = ds_list_create();
for(var _i=0;_i<instance_count;_i++) {
 _list[| _i] = instance_id[_i];
}

instance_deactivate_all(false);
var _inst = instance_create(0,0,sys_pause);
_inst.active_list = _list;

/*
 If the argument "3D game" is supplied and set to
 true (which it only should be if d3d is on) d3d
 will be turned off during the pause.
*/
_inst.d3d_is_on = false;
if argument_count > 0 {
 _inst.d3d_is_on = argument[0];
 if argument[0] {
  d3d_end();
 }
}

io_clear();
