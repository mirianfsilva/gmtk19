v = CheckSingleMoveCollision(oGround, variable_instance_get(argument0[0], argument0[1]), variable_instance_get(argument1[0], argument1[1]));
variable_instance_set(argument0[0], argument0[1], v[0]);
variable_instance_set(argument1[0], argument1[1], v[1]);
v = CheckSingleMoveCollision(oStandard, variable_instance_get(argument0[0], argument0[1]), variable_instance_get(argument1[0], argument1[1]));
variable_instance_set(argument0[0], argument0[1], v[0]);
variable_instance_set(argument1[0], argument1[1], v[1]);