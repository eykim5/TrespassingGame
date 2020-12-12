/// @description Modifies a slot in the inventory. Can add and remove items, and set the item.
/// @function inventory_modify_slot_amount(slot, amount, override);
/// @param slot
/// @param amount
/// @param override
function inventory_modify_slot_amount(_slot, _amount, _override){

	if (_override == false) //If it is not overriding current values
	{
		global.inventory[# _slot, 1] += _amount; //Increase amount by input amount
	}
	else //If it is overriding current values
	{
		global.inventory[# _slot, 1] = _amount; //Set amount to input amount
	}

	//Clear slot if the amount is less than or equal to 0
	if (global.inventory[# _slot, 1] <= 0) {
		global.inventory[# _slot, 0] = item.none;
		global.inventory[# _slot, 1] = 0;
	}
}