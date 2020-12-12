/// @description Movement and collision
// Checks if player is grounded by checking collision of the player's hitbox with any wall below them.
grounded = place_meeting(x, y + 1, o_wall);
	
	
// TEMPORARY CODE FOR PAUSING AND INVENTORY STUFF. FIX THIS LATER.

if (input.pause) {
	pausing = !pausing;
}

if (pausing) {
	instance_activate_object(o_inventory);
	instance_activate_object(o_slot);
}
else {
	instance_deactivate_object(o_inventory);
	instance_deactivate_object(o_slot);
}
	
switch(state) {
	case "move":
		#region Move State
		
		// Basics of player script that contains sprite manipulation, movement, and other basic actions.
		player_base_script(s_player_prototype, s_player_prototype_mask, run_speed);

		// Jumping. Utilizes a basic formula designed for a more controlled height.
		if (grounded) {
			// Resets vertical speed so that it can be influenced by gravity properly.
			vsp = 0;
			
			// Jumping. Utilizes a basic formula designed for a more controlled height.
			if (input.jump) {
				vsp = -sqrt(2 * grav * jump_speed);
			}
			
			// Makes player crouch.
			if (input.crouch) {
				state = "crouch";
			}
			
			// Makes player roll.
			if (input.roll) {
				// Cooldown.
				if (alarm[0] <= 0) {
					state = "roll";
				}
			}
		}
		// If the player is in the air, apply gravity gradually.
		else {
			if (vsp < 10) {
				vsp += grav;
			}
			else {
				vsp = 10;
			}
		}
		
		#endregion
	break;
	case "crouch":
		#region Crouch State
		
		// Basics of player script that contains sprite manipulation, movement, and other basic actions.
		player_base_script(s_player_prototype_crouch, s_player_prototype_crouch_mask, crouch_speed);

		// If the player lets go of the crouch key, or is in the air, uncrouch only if an object is not above the player.
		if (!input.crouch or !grounded) {
			if (!place_meeting(x, y - sprite_height * 2, o_wall)) {
				state = "move";
			}
		}
		#endregion
	break;
	case "roll":
		#region Roll State
		// Changes animation based on state.
		set_state_sprite(s_player_prototype_roll, 0.6, 0);
		
		// Determines movement based on direction.
		if (image_xscale > 0) {
			hsp = roll_speed;
		}
		if (image_xscale < 0) {
			hsp = -roll_speed;
		}
		
		vsp = 0;
		
		// Go back to move state once animation ends or if player falls.
		if (animation_end() || !grounded) {
			alarm[0] = roll_cooldown_duration * 60;
			state = "move";
		}
		
		#endregion
	break;
	
	default:
		show_debug_message("State" + state + " does not exist!");
		state = "move";
		break;
}

// Takes calculated hsp and vsp values and moves player based on those values, UNLESS player collides with object wall.
move_and_collide(hsp, vsp);	