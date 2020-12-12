/// @description Pause toggle

if (!paused) {
	paused = true;
	instance_deactivate_all(true);
	
	instance_activate_object(o_inventory);
	instance_activate_object(o_slot);
	
	layer_set_visible("Background", false);
}
else {
	paused = false;
	instance_activate_all();
	
	// Sets player's current equipped weapon to what was selected in inventory.
	equip_weapon(o_inventory.equip_id);
	
	instance_deactivate_object(o_inventory);
	instance_deactivate_object(o_slot);
	
	layer_set_visible("Background", true);
}