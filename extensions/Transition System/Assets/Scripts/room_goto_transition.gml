///room_goto_transition(room,transition,[steps],[col],[jam]);
with(instance_create(0,0,sys_transition)) {
 next_room = argument[0]; //The room we want to go to.
 kind = argument[1]; //The transition kind we want to use.
 if argument_count >= 3 && argument[2] > 0 {
  length = argument[2]; //The amount of steps our transition will transpire (default is 30).
 }
 if argument_count >= 4 && argument[3] >= 0 {
  color = argument[3]; //The color of our transition (if needed) (default is black).
 }
 if argument_count >= 5 {
  jam = argument[4]; //Whether or not to jam the keyboard and mouse - look in sys_transition for more info (default is true).
 }
}

//Important: transitions will only work if the application_surface is enabled
