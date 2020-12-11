/// @function	move_and_collide(x_speed, y_speed);
/// @param {real} x_speed Speed player is moving on x-axis
/// @param {real} y_speed Speed player is moving on y-axis

function move_and_collide(x_speed, y_speed){
	if (not place_meeting(x + x_speed, y, o_wall)) {
		x += x_speed;
	}
	else {
		while (not place_meeting(x + sign(x_speed), y, o_wall))
		{
			x += sign(x_speed);
		}
	}
	
	// For now, this is designed for gravity. Contents in else statement is to force object to continue moving until it snaps with the ground.
	
	if (not place_meeting(x, y + y_speed, o_wall)) {
		y += y_speed;
	}
	else {
		while (not place_meeting(x, y + sign(y_speed), o_wall))
		{
			y += sign(y_speed);
		}
	}
}