/// @description Determines if player is in range to pick up item.
	
	// Attempt to pickup item if within range. 
	if (point_distance(x, y, o_player.x, o_player.y) < pickup_range) {
		pickedup = true;
	}

