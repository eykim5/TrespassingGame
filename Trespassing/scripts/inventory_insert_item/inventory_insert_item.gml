/// @description Adds an item and a quantity into the inventory in a valid slot.
/// @function inventory_insert_item(item_ID, amount);
/// @param item_ID
/// @param amount
function inventory_insert_item(_item_id, _amount) {
	var slot = 0; //A temporary variable to loop through the slots
	var inventory_width = ds_grid_width(global.inventory);

	while (slot < inventory_width)
	 {
		//If the tested slot in the inventory is either empty, or contains a matching item id
		if (global.inventory[# slot, 0] == _item_id || global.inventory[# slot, 0] == item.none)
		 {
			global.inventory[# slot, 0] = _item_id;
			global.inventory[# slot, 1] += _amount;
			return true; //Did set the slot
			exit; //Exit function, because it has set the slot
			}
		slot ++; //Incriment slot to test next position
		}
	return false; //Did not set slot


}