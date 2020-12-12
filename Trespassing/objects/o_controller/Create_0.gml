/// @description Insert description here

// Deactivate inventory related items on startup.
instance_deactivate_object(o_inventory);
instance_deactivate_object(o_slot);

// Indicated whether the game is paused or not.
TOGGLE_PAUSE = 0;
paused = false;