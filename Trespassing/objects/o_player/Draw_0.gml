/// @description Draws all sprites related to player.

// Initialized variables.
var dir = point_direction(x, y, mouse_x, mouse_y);	// Points towards position of mouse.
var flipped = (mouse_x > x) * 2 - 1;	// Changes direction of x-axis based on mouse position.
var s_weapon = noone;

// Draws sprite of player.
draw_sprite_ext(sprite_index, 0, x, y, flipped, 1, 0, image_blend, image_alpha);

// Chooses sprite of current equipped weapon.
switch (equip_id) {
	case "1":
		s_weapon = s_p12_equipped;
		break;
}

// Draws sprite of weapon.
if (s_weapon != noone && state != "roll") {
	draw_sprite_ext(s_weapon, 0, x - (4 * flipped), y - (sprite_height / 2), 0.5, 0.5 * flipped, dir, image_blend, image_alpha);
}
