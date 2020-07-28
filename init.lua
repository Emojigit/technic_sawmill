technic_sawmill = {}
technic_sawmill.mp = minetest.get_modpath("technic_sawmill")
dofile(technic_sawmill.mp.."/recipe.lua")

function technic_sawmill.register_sawmill(data)
	data.typename = "sawmilling"
	data.machine_name = "sawmill"
	data.machine_desc = "%s Sawmill"
	technic.register_base_machine(data)
end


minetest.register_alias("sawmill", "technic_sawmill:lv_sawmill")
minetest.register_craft({
	output = 'technic_sawmill:lv_sawmill',
	recipe = {
		{'technic:stainless_steel_ingot', 'technic:diamond_drill_head', 'technic:stainless_steel_ingot'},
		{'technic:fine_copper_wire',      'technic:machine_casing',     'technic:motor'},
		{'technic:carbon_steel_ingot',    'technic:lv_cable',           'technic:carbon_steel_ingot'},
	},
})

technic_sawmill.register_sawmill({tier="LV", demand={200}, speed=1, 
	modname = "technic_sawmill",
	node_box = {
		type = "fixed",
		fixed = {
			{-3/32, 14/32, -1/32, 3/32, 15/32, 1/32},
			{-6/32, 13/32, -1/32, 6/32, 14/32, 1/32},
			{-8/32, 12/32, -1/32, 8/32, 13/32, 1/32},
			{-9/32, 11/32, -1/32, 9/32, 12/32, 1/32},
			{-10/32, 10/32, -1/32, 10/32, 11/32, 1/32},
			{-11/32, 9/32, -1/32, 11/32, 10/32, 1/32},
			{-12/32, 7/32, -1/32, 12/32, 9/32, 1/32},
			{-1/2, -1/2, -1/2, 1/2, 7/32, 1/2},
		},
	}, 
	tiles = {nil,nil,nil,nil,"_back",nil}
})

