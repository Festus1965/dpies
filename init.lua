-- D Pies init.lua
-- Copyright Duane Robertson (duane@duanerobertson.com), 2017
-- Distributed under the LGPLv2.1 (https://www.gnu.org/licenses/old-licenses/lgpl-2.1.en.html)

dpies_mod = {}
local mod = dpies_mod
local mod_name = 'dpies'
mod.version = '20171028'
mod.path = minetest.get_modpath(minetest.get_current_modname())
mod.world = minetest.get_worldpath()


minetest.register_craftitem(mod_name..':apple_pie_slice', {
	description = 'Apple Pie Slice',
	inventory_image = 'dpies_apple_pie_slice.png',
	on_use = minetest.item_eat(5),
})

minetest.register_craft({
	output = mod_name..':apple_pie_slice 6',
	type = 'shapeless',
	recipe = {
		mod_name..':apple_pie',
	}
})

minetest.register_node(mod_name..':apple_pie', {
	description = 'Apple Pie',
	drawtype = 'raillike',
	tiles = {'dpies_apple_pie.png'},
	inventory_image  = 'dpies_apple_pie.png',
	paramtype = 'light',
	walkable = false,
	selection_box = {
		type = 'fixed',
		fixed = {-0.4, -0.5, -0.4, 0.5, -0.4, 0.4}
	},
	groups = {dig_immediate = 3, attached_node = 1},
	sounds = default.node_sound_dirt_defaults(),
})

minetest.register_craftitem(mod_name..':apple_pie_uncooked', {
	description = 'Uncooked Apple Pie',
	inventory_image = 'dpies_apple_pie_uncooked.png',
})

if minetest.registered_items['big_trees:syrup'] then
	minetest.register_craft({
		output = mod_name..':apple_pie_uncooked',
		type = 'shapeless',
		recipe = {
			'default:apple',
			'default:apple',
			'farming:flour',
			'big_trees:syrup',
			'big_trees:syrup',
			'big_trees:syrup',
		},
		replacements = {
			{mod_name..':syrup', 'vessels:glass_bottle'},
			{mod_name..':syrup', 'vessels:glass_bottle'},
			{mod_name..':syrup', 'vessels:glass_bottle'},
		},
	})

	if minetest.registered_items['environ:pear'] then
		minetest.register_craft({
			output = mod_name..':apple_pie_uncooked',
			type = 'shapeless',
			recipe = {
				'environ:pear',
				'environ:pear',
				'farming:flour',
				'big_trees:syrup',
				'big_trees:syrup',
				'big_trees:syrup',
			},
			replacements = {
				{mod_name..':syrup', 'vessels:glass_bottle'},
				{mod_name..':syrup', 'vessels:glass_bottle'},
				{mod_name..':syrup', 'vessels:glass_bottle'},
			},
		})
	end
end

if minetest.registered_items['mobs:bucket_milk'] then
	if minetest.registered_items['environ:pear'] then
		minetest.register_craft({
			output = mod_name..':apple_pie_uncooked',
			type = 'shapeless',
			recipe = {
				'environ:pear',
				'environ:pear',
				'farming:flour',
				'mobs:bucket_milk',
			},
			replacements = {
				{'mobs:bucket_milk', 'bucket:bucket_empty'},
			},
		})
	end

	minetest.register_craft({
		output = mod_name..':apple_pie_uncooked',
		type = 'shapeless',
		recipe = {
			'default:apple',
			'default:apple',
			'farming:flour',
			'mobs:bucket_milk',
		},
		replacements = {
			{'mobs:bucket_milk', 'bucket:bucket_empty'},
		},
	})
end

if minetest.registered_items['mobs:honey'] then
	minetest.register_craft({
		output = mod_name..':apple_pie_uncooked',
		type = 'shapeless',
		recipe = {
			'default:apple',
			'default:apple',
			'farming:flour',
			'mobs:honey',
		},
	})

	if minetest.registered_items['environ:pear'] then
		minetest.register_craft({
			output = mod_name..':apple_pie_uncooked',
			type = 'shapeless',
			recipe = {
				'environ:pear',
				'environ:pear',
				'farming:flour',
				'mobs:honey',
			},
		})
	end
end


minetest.register_craftitem(mod_name..':blueberry_pie_slice', {
	description = 'Blueberry Pie Slice',
	inventory_image = 'dpies_blueberry_pie_slice.png',
	on_use = minetest.item_eat(5),
})

minetest.register_craft({
	output = mod_name..':blueberry_pie_slice 6',
	type = 'shapeless',
	recipe = {
		mod_name..':blueberry_pie',
	}
})

minetest.register_node(mod_name..':blueberry_pie', {
	description = 'Blueberry Pie',
	drawtype = 'raillike',
	tiles = {'dpies_blueberry_pie.png'},
	inventory_image  = 'dpies_blueberry_pie.png',
	paramtype = 'light',
	walkable = false,
	selection_box = {
		type = 'fixed',
		fixed = {-0.4, -0.5, -0.4, 0.5, -0.4, 0.4}
	},
	groups = {dig_immediate = 3, attached_node = 1},
	sounds = default.node_sound_dirt_defaults(),
})

minetest.register_craftitem(mod_name..':blueberry_pie_uncooked', {
	description = 'Uncooked Blueberry Pie',
	inventory_image = 'dpies_blueberry_pie_uncooked.png',
})

if minetest.registered_items['mobs:honey'] then
	minetest.register_craft({
		output = mod_name..':blueberry_pie_uncooked',
		type = 'shapeless',
		recipe = {
			'default:blueberries',
			'default:blueberries',
			'default:blueberries',
			'default:blueberries',
			'default:blueberries',
			'default:blueberries',
			'farming:flour',
			'farming:flour',
			'mobs:honey',
		},
	})
else
	minetest.register_craft({
		output = mod_name..':blueberry_pie_uncooked',
		type = 'shapeless',
		recipe = {
			'default:blueberry',
			'default:blueberry',
			'default:blueberry',
			'default:blueberry',
			'default:blueberry',
			'default:blueberry',
			'farming:flour',
			'farming:flour',
		},
	})
end

if minetest.registered_items['mobs:meat_raw'] then
	minetest.register_craftitem(mod_name..':meat_pie_uncooked', {
		description = 'Uncooked Meat Pie',
		inventory_image = 'dpies_meat_pie_uncooked.png',
	})

	minetest.register_craft({
		output = mod_name..':meat_pie_uncooked',
		type = 'shapeless',
		recipe = {
			'mobs:meat_raw',
			'mobs:meat_raw',
			mod_name..':onion',
			'farming:flour',
		},
	})

	minetest.register_node(mod_name..':meat_pie', {
		description = 'Meat Pie',
		drawtype = 'raillike',
		tiles = {'dpies_meat_pie.png'},
		inventory_image  = 'dpies_meat_pie.png',
		paramtype = 'light',
		walkable = false,
		selection_box = {
			type = 'fixed',
			fixed = {-0.4, -0.5, -0.4, 0.5, -0.4, 0.4}
		},
		groups = {dig_immediate = 3, attached_node = 1},
		sounds = default.node_sound_dirt_defaults(),
	})

	minetest.register_craft({
		type = 'cooking',
		cooktime = 15,
		output = mod_name..':meat_pie',
		recipe = mod_name..':meat_pie_uncooked'
	})

	minetest.register_craftitem(mod_name..':meat_pie_slice', {
		description = 'Meat Pie Slice',
		inventory_image = 'dpies_meat_pie_slice.png',
		on_use = minetest.item_eat(9),
	})

	minetest.register_craft({
		output = mod_name..':meat_pie_slice 5',
		type = 'shapeless',
		recipe = {
			mod_name..':meat_pie',
		}
	})
end

farming.register_plant(mod_name..':onion', {
	description = 'Onion',
	inventory_image = 'dpies_onion.png',
	steps = 3,
	minlight = 13,
	maxlight = default.LIGHT_MAX,
	fertility = {'grassland'}
})

minetest.registered_items[mod_name..':seed_onion'] = nil
minetest.registered_nodes[mod_name..':seed_onion'] = nil
minetest.registered_craftitems[mod_name..':seed_onion'] = nil
minetest.register_alias(mod_name..':seed_onion', mod_name..':onion')
for i = 1, 3 do
	local onion = minetest.registered_items[mod_name..':onion_'..i]
	if onion then
		onion.drop = {
			max_items = i,
			items = {
				{ items = {mod_name..':onion'}, rarity = 4 - i, },
				{ items = {mod_name..':onion'}, rarity = (4 - i) * 2, },
				{ items = {mod_name..':onion'}, rarity = (4 - i) * 4, },
			},
		}
	end
end

minetest.register_node(mod_name..':onion', {
	description = 'Onion',
	drawtype = 'plantlike',
	visual_scale = 0.75,
	tiles = {'dpies_onion.png'},
	inventory_image = 'dpies_onion.png',
	paramtype = 'light',
	sunlight_propagates = true,
	walkable = false,
	is_ground_content = false,
	selection_box = {
		type = 'fixed',
		fixed = {-0.2, -0.5, -0.2, 0.2, 0, 0.2}
	},
	fertility = {'grassland'},
	groups = {seed = 1, fleshy = 3, dig_immediate = 3, flammable = 2},
	on_use = minetest.item_eat(2),
	sounds = default.node_sound_leaves_defaults(),
	next_plant = mod_name..':onion_1',
	on_timer = farming.grow_plant,
	minlight = 10,
	maxlight = 15,

	on_place = function(itemstack, placer, pointed_thing)
		local stack = farming.place_seed(itemstack, placer, pointed_thing, mod_name..':onion')
		if stack then
			return stack
		end

		return minetest.item_place(itemstack, placer, pointed_thing)
	end,
})

minetest.register_craft({
	type = 'cooking',
	cooktime = 15,
	output = mod_name..':apple_pie',
	recipe = mod_name..':apple_pie_uncooked'
})

minetest.register_craft({
	type = 'cooking',
	cooktime = 15,
	output = mod_name..':blueberry_pie',
	recipe = mod_name..':blueberry_pie_uncooked'
})


for i = 3, 5 do
	minetest.override_item('default:grass_' .. i, {
		drop = {
			max_items = 2,
			items = {
				{ items = { 'default:grass_1'}, },
				{ items = {'farming:seed_wheat'},rarity = 5 },
				{ items = {mod_name..':onion',}, rarity = 5 },
			},
		},
	})
end


if minetest.get_modpath('bonemeal') then
	bonemeal:add_crop({{mod_name..':onion_', 3, mod_name..':onion'},})
end


if minetest.get_modpath('inspire') then
	minetest.register_craft({
		output = mod_name..':onion 3',
		type = 'shapeless',
		recipe = {
			mod_name..':onion',
			'inspire:inspiration',
		}
	})

	minetest.register_craft({
		output = mod_name..':apple_pie',
		type = 'shapeless',
		recipe = {
			'default:apple',
			'inspire:inspiration',
			'inspire:inspiration',
			'inspire:inspiration',
			'inspire:inspiration',
		}
	})

	minetest.register_craft({
		output = mod_name..':meat_pie',
		type = 'shapeless',
		recipe = {
			'mobs:meat_raw',
			'inspire:inspiration',
			'inspire:inspiration',
			'inspire:inspiration',
			'inspire:inspiration',
		}
	})
end
