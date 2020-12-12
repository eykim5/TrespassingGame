/// @description scr_add_weapon(item_ID, name, description, damage)
/// @function scr_add_weapon
/// @param item_ID
/// @param name
/// @param description
/// @param damage
// Adds a new weapon that can be stored within the inventory.
function inventory_add_weapon(_id, _name, _desc, _damage){
	var item_id = _id;
	global.item_index[# item_id, item_stat.name] = _name;
	global.item_index[# item_id, item_stat.description] = _desc;
	global.item_index[# item_id, item_stat.damage] = _damage;

	global.item_index[# item_id, item_stat.type] = item_type.weapon;
}