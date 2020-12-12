
function player_base_script(s_sprite, s_mask, move_speed){
	
	// Determines horizontal movement.
	move = (input.right - input.left) * move_speed;
	hsp = move;
	
	// TEMPORARY
	sprite_index = s_sprite;
	mask_index = s_mask;
	
	// Attempt to pickup item if within range. Temporary code.
	if (input.interact) {
		if (point_distance(x, y, o_p12.x, o_p12.y) < pickup_range) {
			show_debug_message("Pickup P12");
			inventory_insert_item(item.p12, 1);
		}
		else {
			show_debug_message("Cannot pickup");	
		}
	}

	// If the player is moving. INSERT SPRITE STUFF HERE.
	if (hsp != 0) {
		image_xscale = sign(hsp);
	}
}