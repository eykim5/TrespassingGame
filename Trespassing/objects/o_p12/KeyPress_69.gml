/// @description Adds P12 to inventory.

event_inherited();

if (pickedup) {
	inventory_insert_item(item.p12, 1);	
}
