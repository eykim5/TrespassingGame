
function player_base_script(s_sprite, s_mask, move_speed){
	
	// Determines horizontal movement.
	move = (input.right - input.left) * move_speed;
	hsp = move;
	
	// TEMPORARY
	//curr_sprite = s_sprite;
	sprite_index = s_sprite;
	mask_index = s_mask;
	
	// If the player is moving. INSERT SPRITE STUFF HERE.
	if (hsp != 0) {
		image_xscale = sign(hsp);
	}
}