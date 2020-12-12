
function init_inventory(){
	equip_id = -1;
	// Enumerator setup for items
	enum item {
		none,
		p12,
		total
	}

	enum item_type {
		none,
		weapon,
		total
	}

	enum item_stat {
		name,
		description,
		type,
		damage,
		total
	}
	
	// Creates a grid that is 4 slots wide, and 2 slots high. Actual inventory which the player uses.
	global.inventory = ds_grid_create(8, 2);
	ds_grid_clear(global.inventory, 0);

	// Creates a grid (similar to a 2D array) with item.total and item_stat.total as the dimensions. 
	// This stores the different types of items, seperate from the inventory.
	global.item_index = ds_grid_create(item.total, item_stat.total);
	ds_grid_clear(global.item_index, 0); // Set every position to 0.
	
	global.mouse_slot = ds_grid_create(1, 2);
	
	inventory_add_weapon(item.p12, "P12", "Semi-automatic pistol. Utilizes .45 ACP ammunition.", 10);
}