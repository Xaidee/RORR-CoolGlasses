-- Lens Maker's Glasses but COOLER
-- Xaidee
mods["RoRRModdingToolkit-RoRR_Modding_Toolkit"].auto(true)

PATH = _ENV["!plugins_mod_folder_path"]

local init = function()
	local lensMakersGlasses = Item.find("ror", "lensMakersGlasses")
	lensMakersGlasses:set_sprite(Resources.sprite_load("xaidee", "coolGlasses", path.combine(PATH, "coolGlasses.png"), 1, 16, 16))
	--gm.sprite_replace(gm.constants.sLensMakersGlasses, path.combine(PATH, "coolGlasses.png"), 1, false, false, 16, 16)
end
Initialize(init)
