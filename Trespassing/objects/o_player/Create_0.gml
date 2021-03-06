/// @description Sets variables, input, etc. for player character

event_inherited();
state = "move";

// Stats
image_speed = 0.5;
run_speed = 2.5;
crouch_speed = 1.5;
move_speed = run_speed;
jump_speed = 28;
roll_speed = 4;
roll_cooldown_duration = 2.5; // In seconds.
alarm[0] = -1; // 60 frames per second.

// ID which indicates what item the player is currently equipped with. -1 indicates nothing is equipped.
equip_id = -1;
curr_sprite = s_player_prototype;

// Input
input = instance_create_layer(0, 0, "Instances", o_input);
