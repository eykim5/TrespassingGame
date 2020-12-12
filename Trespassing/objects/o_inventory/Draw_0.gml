/// @description Draw the mouse items.

with (o_slot)
 {
	//Get values
	var iid = global.inventory[# var_slot, 0];
	var amount = global.inventory[# var_slot, 1];

	//Draw stuff
	if (iid != item.none)
	{
		draw_sprite(s_items, iid, x, y); //Draw item sprite
		
		// If the item type is NOT a weapon, display the quantity.
		if (global.item_index[# iid, item_stat.type] != item_type.weapon) {
			draw_text(x+4, y+4, string(amount)); //Draw item quantity
		}
		
		if (iid == o_inventory.equip_id) {
			draw_text(x+8, y+8, "E");
		}
	}
}

//Get values
var iid = global.mouse_slot[# 0, 0];
var amount = global.mouse_slot[# 0, 1];

//Draw stuff
//if (iid != item.none)
//{
//draw_sprite(s_items, iid, mouse_x-32, mouse_y-32); //Draw item sprite
//draw_text(mouse_x+4-32, mouse_y+4-32, string(amount)); //Draw item quantity
//}