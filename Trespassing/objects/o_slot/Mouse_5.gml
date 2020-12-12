/// @description Placeholder. Equips weapon.

// Sets inventory equip id to weapon that is clicked.
var item_id = global.inventory[# var_slot, 0];

if (o_inventory.equip_id != item_id) {
	o_inventory.equip_id = item_id;
}
else {
	o_inventory.equip_id = -1;
}


