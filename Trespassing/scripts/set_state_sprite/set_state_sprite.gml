/// @function set_state_sprite(sprite, speed, index)
/// @param {real} _sprite
/// @param {real} _speed
/// @param {int} _index

function set_state_sprite(_sprite, _speed, _index){
	if (sprite_index != _sprite) {
		sprite_index = _sprite;
		image_speed = _speed;
		image_index = _index;
	}
}