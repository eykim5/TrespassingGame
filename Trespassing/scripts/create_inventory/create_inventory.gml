// Creates the slots for the inventory.
function create_inventory(){
	
	// Initializes variables based on the amount of slots and dimensions of inventory menu.
	var slot_row = 0;
	var slot = 0;
	
	
	// This code is currently functional, however some parts of it are confusing. For example, ds_grid_width currently refers to the "total" amount of items that can be stored instead of actual width.
	// ds_grid_height(global.inventory) refers to the total amount of rows within the inventory.
	while (slot_row < ds_grid_height(global.inventory)) {
		var slot_index = 0;
		while (slot_index < ds_grid_width(global.inventory) / ds_grid_height(global.inventory)) {
			// TAKE NOTE OF X AND Y HERE. DETERMINES POSITIONING OF SLOTS. Both values of "64" are based on dimensions of sprites!
			var inst = instance_create_layer(x + 8 + (64*slot_index), y + 8 + (64*slot_row), "Instances", o_slot);
			inst.var_slot = slot;
			slot ++;
			slot_index ++;
		}
		slot_row++;
	}

}