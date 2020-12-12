// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_inventory(){
	var slot = 0;
	while (slot < ds_grid_width(global.inventory))
	{
		
	// TAKE NOTE OF X AND Y HERE. DETERMINES POSITIONING OF SLOTS. Both values of "64" are based on dimensions of sprites!
	var inst = instance_create_layer(x + 8 + (64*slot), y + 8, "Instances", o_slot);
	inst.var_slot = slot;
	slot ++;
	}

}