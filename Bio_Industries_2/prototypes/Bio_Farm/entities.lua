local BioInd = require('common')('Bio_Industries_2')
local ICONPATH = BioInd.modRoot .. "/graphics/icons/"
local ICONPATH_E = BioInd.modRoot .. "/graphics/icons/entity/"
local ENTITYPATH_BIO = BioInd.modRoot .. "/graphics/entities/"
local REMNANTSPATH = BioInd.modRoot .. "/graphics/entities/remnants/"


require("util")

local greenhouse_speed = 1
if mods["Krastorio2"] or mods["Krastorio2-spaced-out"] then
    greenhouse_speed = settings.startup["BI_greenhouse_speed_up"].value
end


-- Pipes
------------------------------------------------------------------------------------
--                                    Bio farm                                    --
------------------------------------------------------------------------------------

function biofarmpipepictures()
  return
  {
    north = {
      filename = "__core__/graphics/empty.png",
      priority = "low",
      width = 1,
      height = 1,
    },
    east =
      {
        filename = ENTITYPATH_BIO .. "bio_farm/biofarm_pipes/bio_farm-pipe-E.png",
        priority = "extra-high",
        width = 42,
        height = 76,
        shift = util.by_pixel(-24.5, 1),
        scale = 0.5
      
    },
    south =
      {
        filename = ENTITYPATH_BIO .. "bio_farm/biofarm_pipes/bio_farm-pipe-S.png",
        priority = "extra-high",
        width = 88,
        height = 61,
        shift = util.by_pixel(0, -31.25),
        scale = 0.5
      
    },
    west =
    {
        filename = ENTITYPATH_BIO .. "bio_farm/biofarm_pipes/bio_farm-pipe-W.png",
        priority = "extra-high",
        width = 39,
        height = 73,
        shift = util.by_pixel(25.75, 1.25),
        scale = 0.5
      
    }
  }
end

------------------------------------------------------------------------------------
--                                    Bio Greenhouse                               --
------------------------------------------------------------------------------------

function biogreenhousepipepictures()
  return
  {
    north = {
            filename = ENTITYPATH_BIO .. "bio_greenhouse/biogreenhouse_pipes/assembling-machine-3-pipe-N-exp.png",
            priority = "extra-high",
            width = 171,
            height = 152,
            shift = util.by_pixel(2.25, 13.5),
            scale = 0.5
    },
    east =
      {
            filename = ENTITYPATH_BIO .. "bio_greenhouse/biogreenhouse_pipes/assembling-machine-3-pipe-E.png",
            priority = "extra-high",
            width = 42,
            height = 76,
            shift = util.by_pixel(-24.5, 1),
            scale = 0.5
      
    },
    south =
      {
            filename = ENTITYPATH_BIO .. "bio_greenhouse/biogreenhouse_pipes/assembling-machine-3-pipe-S.png",
            priority = "extra-high",
            width = 88,
            height = 61,
            shift = util.by_pixel(0, -31.25),
            scale = 0.5
      
    },
    west =
    {
            filename = ENTITYPATH_BIO .. "bio_greenhouse/biogreenhouse_pipes/assembling-machine-3-pipe-W.png",
            priority = "extra-high",
            width = 39,
            height = 73,
            shift = util.by_pixel(25.75, 1.25),
            scale = 0.5
      
    }
  }
end



inv_extension2 = {
    filename = ENTITYPATH_BIO .. "bio_terraformer/arboretum.png",
    priority = "high",
	width = 640,
	height = 640,
	frame_count = 1,
	scale = 0.5,
	shift = { 0, 0 }
}


data:extend({
    ------- Seedling
    {
        type = "simple-entity-with-force",
        name = "seedling",
        localised_name = { "entity-name.seedling" },
        localised_description = { "entity-description.seedling" },
        icon = ICONPATH .. "Seedling.png",
        icon_size = 64,
        icons = {
            {
                icon = ICONPATH .. "Seedling.png",
                icon_size = 64,
            }
        },
        order = "x[bi]-a[bi-seedling]",
        flags = { "placeable-neutral", "placeable-player", "player-creation", "breaths-air" },
        create_ghost_on_death = false,
        minable = {
            mining_particle = "wooden-particle",
            mining_time = 0.25,
            results = { { type = "item", name = "seedling", amount = 1 } },
            count = 1
        },
        corpse = nil,
        remains_when_mined = nil,
        emissions_per_second = { pollution = -0.0006 },
        max_health = 5,

        collision_box = { { -0.1, -0.1 }, { 0.1, 0.1 } },
        selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
        subgroup = "trees",
        impact_category = "wood",
        picture = {
            filename = ICONPATH .. "Seedling_b.png",
            priority = "extra-high",
            width = 64,
            height = 64,
            scale = 0.3
        },
    },

    ------- Seedling - Dummy for Seed Bomb
    {
        type = "simple-entity-with-force",
        name = "seedling-2",
        localised_name = { "entity-name.seedling" },
        localised_description = { "entity-description.seedling" },
        icon = ICONPATH .. "Seedling.png",
        icon_size = 64,
        icons = {
            {
                icon = ICONPATH .. "Seedling.png",
                icon_size = 64,
            }
        },
        order = "x[bi]-a[bi-seedling]",
        flags = { "placeable-neutral", "placeable-player", "player-creation", "breaths-air" },
        create_ghost_on_death = false,
        minable = {
            mining_particle = "wooden-particle",
            mining_time = 0.25,
            results = { { type = "item", name = "seedling", amount = 1 } },
            count = 1
        },
        corpse = nil,
        remains_when_mined = nil,
        emissions_per_second = { pollution = -0.0006 },
        max_health = 5,

        collision_box = { { -0.1, -0.1 }, { 0.1, 0.1 } },
        selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
        subgroup = "trees",
        impact_category = "wood",
        picture = {
            filename = ICONPATH .. "Seedling_b.png",
            priority = "extra-high",
            width = 64,
            height = 64,
            scale = 0.3
        },
    },

    {
        type = "simple-entity-with-force",
        name = "seedling-3",
        localised_name = { "entity-name.seedling" },
        localised_description = { "entity-description.seedling" },
        icon = ICONPATH .. "Seedling.png",
        icon_size = 64,
        icons = {
            {
                icon = ICONPATH .. "Seedling.png",
                icon_size = 64,
            }
        },
        order = "x[bi]-a[bi-seedling]",
        flags = { "placeable-neutral", "placeable-player", "player-creation", "breaths-air" },
        create_ghost_on_death = false,
        minable = {
            mining_particle = "wooden-particle",
            mining_time = 0.25,
            results = { { type = "item", name = "seedling", amount = 1 } },
            count = 1
        },
        corpse = nil,
        remains_when_mined = nil,
        emissions_per_second = { pollution = -0.0006 },
        max_health = 5,

        collision_box = { { -0.1, -0.1 }, { 0.1, 0.1 } },
        selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
        subgroup = "trees",
        impact_category = "wood",
        picture = {
            filename = ICONPATH .. "Seedling_b.png",
            priority = "extra-high",
            width = 64,
            height = 64,
            scale = 0.3
        },
    },

    ------- Bio Farm
    {
        type = "assembling-machine",
        name = "bi-bio-farm",
        icons = {{ icon = ICONPATH_E .. "bio_Farm_Icon.png", icon_size = 64, }},
        flags = { "placeable-neutral", "placeable-player", "player-creation" },
        minable = { hardness = 0.2, mining_time = 0.5, result = "bi-bio-farm" },
        max_health = 350,
        corpse = "bi-bio-farm-remnant",
        dying_explosion = "medium-explosion",
        resistances = { { type = "fire", percent = 70 } },
        fluid_boxes = {
            {
                production_type = "input",
                pipe_picture = biofarmpipepictures(),
                pipe_covers = pipecoverspictures(),
                volume = 1000,
                base_level = -1,
                pipe_connections = { { flow_direction = "input", direction = defines.direction.north, position = { -1, -4 } } }
            },
            {
                production_type = "input",
                pipe_picture = biofarmpipepictures(),
                pipe_covers = pipecoverspictures(),
                volume = 1000,
                base_level = -1,
                pipe_connections = { { flow_direction = "input", direction = defines.direction.north, position = { 1, -4 } } }
            },
        },
        fluid_boxes_off_when_no_fluid_recipe = true,
        collision_box = { { -4.2, -4.2 }, { 4.2, 4.2 } },
        selection_box = { { -4.5, -4.5 }, { 4.5, 4.5 } },
		graphics_set = {
			animation = {
				layers = {
					{
						filename = ENTITYPATH_BIO .. "bio_farm/bio_farm.png",
						priority = "high",
						width = 608,
						height = 800,
						frame_count = 1,
						scale = 0.5,
						shift = { 0, -2.0 }
					},
					{
						filename = ENTITYPATH_BIO .. "bio_farm/bio_farm_shadow.png",
						priority = "high",
						width = 800,
						height = 800,
						frame_count = 1,
						scale = 0.5,
						draw_as_shadow = true,
						shift = { 1, -2.0 }
					}
				}
			},
			working_visualisations = {
				{
					light = { intensity = 1.4, size = 10 },
					effect = "flicker",
					apply_recipe_tint = "primary",
					constant_speed = true,
					fadeout = true,
					animation = {
						filename = ENTITYPATH_BIO .. "bio_farm/bio_farm_light.png",
						priority = "high",
						width = 800,
						height = 800,
						scale = 0.5,
						frame_count = 1,
						shift = { 1, -2 },
						draw_as_light = true
					}
				}
			}
		},
        crafting_categories = { "biofarm-mod-farm" },
        crafting_speed = greenhouse_speed,
        energy_source = {
            type = "electric",
            usage_priority = "primary-input",
            drain = "50kW",
            emissions_per_minute = { pollution = -9 }, -- the "-" means it Absorbs pollution.
        },
        energy_usage = "100kW",
        ingredient_count = 3,
        open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
        close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
        module_slots = 3,
        allowed_effects = { "consumption", "speed", "productivity", "pollution" },
    },

	--- Corpse
	{
	 
	 type = "corpse",
	  name = "bi-bio-farm-remnant",
	  localised_name = {"entity-name.bi-bio-farm-remnant"},
	  icon = "__base__/graphics/icons/remnants.png",
	  icon_size = 64,
	  icon_mipmaps = 4,
	  BI_add_icon = true,
	  flags = {"placeable-neutral", "building-direction-8-way", "not-on-map"},
	  subgroup = "remnants",
	  order = "z-z-z",
	  selection_box = {{-4.5, -4.5}, {4.5, 4.5}},
	  tile_width = 9,
	  tile_height = 9,
	  selectable_in_game = false,
	  time_before_removed = 60 * 60 * 15, -- 15 minutes
	  final_render_layer = "remnants",
	  remove_on_tile_placement = false,
	  animation =
	  {
		{
		  filename = REMNANTSPATH .. "bio_farm_remnant.png",
		  line_length = 1,
		  width = 728,
		  height = 800,
		  frame_count = 1,
		  direction_count = 1,
		  shift = {0, -1.5},
		  scale = 0.5
		}
	  }
	},

})



data:extend({

    ------ Greenhouse / Nursary
    {
        type = "assembling-machine",
        name = "bi-bio-greenhouse",
        icons = { { icon = ICONPATH_E .. "bio_greenhouse.png", icon_size = 64, } },
        flags = { "placeable-neutral", "placeable-player", "player-creation" },
        minable = { hardness = 0.2, mining_time = 0.25, result = "bi-bio-greenhouse" },
        collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
        selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
        max_health = 250,
        corpse = "bi-bio-greenhouse-remnant",
        dying_explosion = "medium-explosion",
        crafting_categories = { "biofarm-mod-greenhouse" },
        crafting_speed = greenhouse_speed,
        energy_source = {
            type = "electric",
            usage_priority = "primary-input",
            drain = "15kW",
            emissions_per_minute = { pollution = -6 }, -- the "-" means it Absorbs pollution.
        },
        energy_usage = "50kW",
        ingredient_count = 3,
        resistances = {
            {
                type = "fire",
                percent = 70
            }
        },
        fluid_boxes = {
            {
                production_type = "input",
                pipe_picture = biogreenhousepipepictures(),
                pipe_covers = pipecoverspictures(),
                volume = 1000,
                base_level = -1,
                pipe_connections = { { flow_direction = "input", direction = defines.direction.north, position = { 0, -1 } } }
            },
        },
        module_slots = 2,
        allowed_effects = { "consumption", "speed", "productivity", "pollution" },
		graphics_set = {
			animation = {
				layers = {
					{
						filename = ENTITYPATH_BIO .. "bio_greenhouse/bio_greenhouse.png",
						width = 192,
						height = 256,
						frame_count = 1,
						scale = 0.5,
						shift = { 0, -0.5 }
					},
					{
						filename = ENTITYPATH_BIO .. "bio_greenhouse/bio_greenhouse_shadow.png",
						width = 256,
						height = 128,
						frame_count = 1,
						scale = 0.5,
						draw_as_shadow = true,
						shift = { 1, -0.5 }
					}
				}
			},
			working_visualisations = {
				{
					light = { intensity = 1, size = 6 },
					draw_as_light = true,
					effect = "flicker",
					apply_recipe_tint = "primary",
					animation = {
						filename = ENTITYPATH_BIO .. "bio_greenhouse/bio_greenhouse_light_anim.png",
						width = 192,
						height = 256,
						frame_count = 10,
						scale = 0.5,
						animation_speed = 0.1,
						shift = { 0, -0.5 },
					}
				}
			}
		},
        open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
        close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 }
    },

	-- corpse	
{
  type = "corpse",
  name = "bi-bio-greenhouse-remnant",
  localised_name = {"entity-name.bi-bio-greenhouse-remnant"},
  icon = "__base__/graphics/icons/remnants.png",
  icon_size = 64,
  icon_mipmaps = 4,
  BI_add_icon = true,
  flags = {"placeable-neutral", "building-direction-8-way", "not-on-map"},
  subgroup = "remnants",
  order = "z-z-z",
  selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
  tile_width = 3,
  tile_height = 3,
  selectable_in_game = false,
  time_before_removed = 60 * 60 * 15, -- 15 minutes
  final_render_layer = "remnants",
  remove_on_tile_placement = false,
  animation =
  {
    {
      filename = REMNANTSPATH .. "bio_greenhouse_remnant.png",
      line_length = 1,
      width = 384,
      height = 384,
      frame_count = 1,
      direction_count = 1,
      shift = {0, -0.5},
      scale = 0.5
    }
  }
},

    -- COKERY
    {
        type = "assembling-machine",
        name = "bi-cokery",
        icons = { { icon = ICONPATH_E .. "cokery.png", icon_size = 64, } },
        -- This is necessary for "Space Exploration" (if not true, the entity can only be
        -- placed on Nauvis)!
        se_allow_in_space = true,
        flags = { "placeable-neutral", "placeable-player", "player-creation" },
        order = "a[cokery]",
        minable = { hardness = 0.2, mining_time = 0.5, result = "bi-cokery" },
        max_health = 200,
        corpse = "bi-cokery-remnant",
        resistances = { { type = "fire", percent = 95 } },
        collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
        selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
        module_slots = 2,
        allowed_effects = { "consumption", "speed", "pollution" },
		graphics_set = {
			-- Working animation (16 frames)
			animation = {
				layers = {
					{
						filename = ENTITYPATH_BIO .. "bio_cokery/cokery_anim.png",
						priority = "high",
						width = 256,
						height = 256,
						frame_count = 16,
						line_length = 8,
						animation_speed = 0.1,
						shift = { 0.5, -0.5 },
						scale = 0.5
					},
					{
						filename = ENTITYPATH_BIO .. "bio_cokery/cokery_shadow.png",
						width = 334,
						height = 126,
						frame_count = 1,
						repeat_count = 16, -- match working animation
						draw_as_shadow = true,
						shift = { 1.5, -0.5 },
						scale = 0.5
					}
				}
			}
		},
        crafting_categories = { "biofarm-mod-smelting" },
        energy_source = {
            type = "electric",
            input_priority = "secondary",
            usage_priority = "secondary-input",
            emissions_per_minute = { pollution = 2.5 },
        },
        energy_usage = "180kW",
        crafting_speed = 2,
        ingredient_count = 1
    },
	
	--- corpse
	
	{
	  type = "corpse",
	  name = "bi-cokery-remnant",
	  localised_name = {"entity-name.bi-cokery-remnant"},
	  icon = "__base__/graphics/icons/remnants.png",
	  icon_size = 64,
	  icon_mipmaps = 4,
	  BI_add_icon = true,
	  flags = {"placeable-neutral", "building-direction-8-way", "not-on-map"},
	  subgroup = "remnants",
	  order = "z-z-z",
	  selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
	  tile_width = 3,
	  tile_height = 3,
	  selectable_in_game = false,
	  time_before_removed = 60 * 60 * 15, -- 15 minutes
	  final_render_layer = "remnants",
	  remove_on_tile_placement = false,
	  animation =
	  {
		{
		  filename = REMNANTSPATH .. "cokery_remnant.png",
		  line_length = 1,
		  width = 256,
		  height = 256,
		  frame_count = 1,
		  direction_count = 1,
		  shift = {0.5, -0.5},
		  scale = 0.5
		}
	  }
	},

    -- STONECRUSHER
    {
        type = "furnace",
        name = "bi-stone-crusher",
        icon = ICONPATH_E .. "stone_crusher.png",
        icon_size = 64,
        -- This is necessary for "Space Exploration" (if not true, the entity can only be
        -- placed on Nauvis)!
        se_allow_in_space = true,
        flags = { "placeable-neutral", "player-creation" },
        minable = { hardness = 0.2, mining_time = 0.5, result = "bi-stone-crusher" },
        max_health = 100,
        corpse = "bi-stone-crusher-remnant",
        module_slots = 1,
        resistances = { { type = "fire", percent = 70 } },
        working_sound = {
            sound = {
                filename = "__base__/sound/assembling-machine-t1-1.ogg",
                volume = 0.7
            },
            apparent_volume = 1.5
        },
        collision_box = { { -0.8, -0.8 }, { 0.8, 0.8 } },
        selection_box = { { -1.0, -1.0 }, { 1.0, 1.0 } },
		graphics_set = {
			animation = {
				filename = ENTITYPATH_BIO .. "bio_stone_crusher/stone_crusher_off.png",
				priority = "high",
				width = 130,
				height = 156,
				frame_count = 1,
				scale = 0.5,
				shift = { 0.0, -0.1 }
			},
			working_visualisations = {
				{
					animation = {
						filename = ENTITYPATH_BIO .. "bio_stone_crusher/stone_crusher_anim.png",
						priority = "high",
						width = 130,
						height = 156,
						frame_count = 20,
						line_length = 10,                
						animation_speed = 0.2,
						scale = 0.5,
						shift = { 0.0, -0.1 }
					}
				}
			},
		},
        crafting_categories = { "biofarm-mod-crushing" },
        result_inventory_size = 1,
        source_inventory_size = 1,
        crafting_speed = 1,
        energy_source = {
            type = "electric",
            usage_priority = "secondary-input",
            emissions_per_minute = { pollution = 0.25 },
        },
        energy_usage = "50kW",
        module_specification = {
            module_slots = 2
        },
        allowed_effects = { "consumption", "speed", "pollution" },
    },

--- corpse
	{
	  type = "corpse",
	  name = "bi-stone-crusher-remnant",
	  localised_name = {"entity-name.bi-stone-crusher-remnant"},
	  icon = "__base__/graphics/icons/remnants.png",
	  icon_size = 64,
	  icon_mipmaps = 4,
	  BI_add_icon = true,
	  flags = {"placeable-neutral", "building-direction-8-way", "not-on-map"},
	  subgroup = "remnants",
	  order = "z-z-z",
	  selection_box = {{-1, -1}, {1, 1}},
	  tile_width = 2,
	  tile_height = 2,
	  selectable_in_game = false,
	  time_before_removed = 60 * 60 * 15, -- 15 minutes
	  final_render_layer = "remnants",
	  remove_on_tile_placement = false,
	  animation =
	  {
		{
		  filename = REMNANTSPATH .. "stone_crusher_remnant.png",
		  line_length = 1,
		  width = 130,
		  height = 156,
		  frame_count = 1,
		  direction_count = 1,
		  shift = {0, -0.2},
		  scale = 0.5
		}
	  }
	},


    --- Seed Bomb Projectile - 1
    {
        type = "projectile",
        name = "seed-bomb-projectile-1",
        flags = { "not-on-map" },
        acceleration = 0.005,
        action = {
            type = "direct",
            action_delivery = {
                type = "instant",
                target_effects = {
                    {
                        type = "nested-result",
                        action = {
                            type = "area",
                            target_entities = false,
                            repeat_count = 600,
                            radius = 24,
                            action_delivery = {
                                type = "projectile",
                                projectile = "seed-bomb-wave-1",
                                starting_speed = 0.5
                            }
                        }
                    }
                }
            }
        },
        light = { intensity = 0.8, size = 15 },
        animation = {
            filename = "__Bio_Industries_2__/graphics/entities/rocket.png",
            frame_count = 8,
            line_length = 8,
            width = 9,
            height = 35,
            shift = { 0, 0 },
            priority = "high"
        },
        shadow = {
            filename = "__Bio_Industries_2__/graphics/entities/rocket-shadow.png",
            frame_count = 1,
            width = 7,
            height = 24,
            priority = "high",
            shift = { 0, 0 }
        },
        smoke = {
            {
                name = "smoke-fast",
                deviation = { 0.15, 0.15 },
                frequency = 1,
                position = { 0, -1 },
                slow_down_factor = 1,
                starting_frame = 3,
                starting_frame_deviation = 5,
                starting_frame_speed = 0,
                starting_frame_speed_deviation = 5
            }
        }
    },

    --- Seed Bomb Projectile - 2
    {
        type = "projectile",
        name = "seed-bomb-projectile-2",
        flags = { "not-on-map" },
        acceleration = 0.005,
        action = {
            type = "direct",
            action_delivery = {
                type = "instant",
                target_effects = {
                    {
                        type = "nested-result",
                        action = {
                            type = "area",
                            target_entities = false,
                            repeat_count = 800,
                            radius = 27,
                            action_delivery = {
                                type = "projectile",
                                projectile = "seed-bomb-wave-2",
                                starting_speed = 0.5
                            }
                        }
                    }
                }
            }
        },
        light = { intensity = 0.8, size = 15 },
        animation = {
            filename = "__Bio_Industries_2__/graphics/entities/rocket.png",
            frame_count = 8,
            line_length = 8,
            width = 9,
            height = 35,
            shift = { 0, 0 },
            priority = "high"
        },
        shadow = {
            filename = "__Bio_Industries_2__/graphics/entities/rocket-shadow.png",
            frame_count = 1,
            width = 7,
            height = 24,
            priority = "high",
            shift = { 0, 0 }
        },
        smoke = {
            {
                name = "smoke-fast",
                deviation = { 0.15, 0.15 },
                frequency = 1,
                position = { 0, -1 },
                slow_down_factor = 1,
                starting_frame = 3,
                starting_frame_deviation = 5,
                starting_frame_speed = 0,
                starting_frame_speed_deviation = 5
            }
        }
    },

    --- Seed Bomb Projectile - 3
    {
        type = "projectile",
        name = "seed-bomb-projectile-3",
        flags = { "not-on-map" },
        acceleration = 0.005,
        action = {
            type = "direct",
            action_delivery = {
                type = "instant",
                target_effects = {
                    {
                        type = "nested-result",
                        action = {
                            type = "area",
                            target_entities = false,
                            repeat_count = 1000,
                            radius = 30,
                            action_delivery = {
                                type = "projectile",
                                projectile = "seed-bomb-wave-3",
                                starting_speed = 0.5
                            }
                        }
                    }
                }
            }
        },
        light = { intensity = 0.8, size = 15 },
        animation = {
            filename = "__Bio_Industries_2__/graphics/entities/rocket.png",
            frame_count = 8,
            line_length = 8,
            width = 9,
            height = 35,
            shift = { 0, 0 },
            priority = "high"
        },
        shadow = {
            filename = "__Bio_Industries_2__/graphics/entities/rocket-shadow.png",
            frame_count = 1,
            width = 7,
            height = 24,
            priority = "high",
            shift = { 0, 0 }
        },
        smoke = {
            {
                name = "smoke-fast",
                deviation = { 0.15, 0.15 },
                frequency = 1,
                position = { 0, -1 },
                slow_down_factor = 1,
                starting_frame = 3,
                starting_frame_deviation = 5,
                starting_frame_speed = 0,
                starting_frame_speed_deviation = 5
            }
        }
    },

    --- Seed Bomb Wave - 1
    {
        type = "projectile",
        name = "seed-bomb-wave-1",
        flags = { "not-on-map" },
        acceleration = 0,
        action = {
            {
                type = "direct",
                action_delivery = {
                    type = "instant",
                    target_effects = {
                        {
                            type = "create-entity",
                            entity_name = "seedling",
                            check_buildability = true,
                            trigger_created_entity = true,
                        }
                    }
                }
            },
        },
        animation = {
            filename = "__core__/graphics/empty.png",
            frame_count = 1,
            width = 1,
            height = 1,
            priority = "high"
        },
        shadow = {
            filename = "__core__/graphics/empty.png",
            frame_count = 1,
            width = 1,
            height = 1,
            priority = "high"
        }
    },

    --- Seed Bomb Wave - 2
    {
        type = "projectile",
        name = "seed-bomb-wave-2",
        flags = { "not-on-map" },
        acceleration = 0,
        action = {
            {
                type = "direct",
                action_delivery = {
                    type = "instant",
                    target_effects = {
                        {
                            type = "create-entity",
                            entity_name = "seedling-2",
                            check_buildability = true,
                            trigger_created_entity = true,
                        }
                    }
                }
            },
        },
        animation = {
            filename = "__core__/graphics/empty.png",
            frame_count = 1,
            width = 1,
            height = 1,
            priority = "high"
        },
        shadow = {
            filename = "__core__/graphics/empty.png",
            frame_count = 1,
            width = 1,
            height = 1,
            priority = "high"
        }
    },

    --- Seed Bomb Wave - 3
    {
        type = "projectile",
        name = "seed-bomb-wave-3",
        flags = { "not-on-map" },
        acceleration = 0,
        action = {
            {
                type = "direct",
                action_delivery = {
                    type = "instant",
                    target_effects = {
                        {
                            type = "create-entity",
                            entity_name = "seedling-3",
                            check_buildability = true,
                            trigger_created_entity = true,
                        },
                    }
                }
            },
        },
        animation = {
            filename = "__core__/graphics/empty.png",
            frame_count = 1,
            width = 1,
            height = 1,
            priority = "high"
        },
        shadow = {
            filename = "__core__/graphics/empty.png",
            frame_count = 1,
            width = 1,
            height = 1,
            priority = "high"
        }
    },

    ---- Arboretum Area Overlay
    {
        type = "ammo-turret",
        name = "bi-arboretum-area",
        localised_name = { "entity-name.bi-arboretum" },
        localised_description = { "entity-description.bi-arboretum" },
        icons = { { icon = ICONPATH_E .. "arboretum_Icon.png", icon_size = 64, }},
        flags = { "not-deconstructable", "not-on-map", "placeable-off-grid", "not-repairable" },
        open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
        close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
        max_health = 250,
        corpse = "big-remnants",
        dying_explosion = "medium-explosion",
        collision_box = { { -4.5, -4.5 }, { 4.5, 4.5 } },
        selection_box = { { -4.5, -4.5 }, { 4.5, 4.5 } },
        order = "x[bi]-a[bi-arboretum]",
        automated_ammo_count = 1,
        resistances = {},
        inventory_size = 1,
        attack_parameters = {
            type = "projectile",
            ammo_category = "bullet",
            cooldown = 2,
            range = 75,
            projectile_creation_distance = 0.1,
            action = {}
        },
        folding_speed = 0.08,
        folded_animation = (function()
            local res = util.table.deepcopy(inv_extension2)
            res.frame_count = 1
            res.line_length = 1
            return res
        end)(),

        folding_animation = (function()
            local res = util.table.deepcopy(inv_extension2)
            res.run_mode = "backward"
            return res
        end)(),

        call_for_help_radius = 1,
        graphics_set = {}
    },


    --- Assembling-Machine Arboretum
    {
        type = "assembling-machine",
        name = "bi-arboretum",
		icons = { { icon = ICONPATH_E .. "arboretum_Icon.png", icon_size = 64, }},
        flags = { "placeable-neutral", "placeable-player", "player-creation" },
        placeable_by = { item = "bi-arboretum-area", count = 1 }, -- Fixes that entity couldn't be blueprinted
        minable = { hardness = 0.2, mining_time = 0.5, result = "bi-arboretum-area" },
        max_health = 250,
        corpse = "bi-arboretum-area-remnant",
        dying_explosion = "medium-explosion",
        resistances = { { type = "fire", percent = 70 } },
        fluid_boxes = {
            {
                production_type = "input",
                --pipe_picture = assembler3pipepictures(),
                pipe_covers = pipecoverspictures(),
                volume = 1000,
                base_level = -1,
                pipe_connections = { { flow_direction = "input", direction = defines.direction.north, position = { -1, -4 } } }
            },
            {
                production_type = "input",
                --pipe_picture = assembler3pipepictures(),
                pipe_covers = pipecoverspictures(),
                volume = 1000,
                base_level = -1,
                pipe_connections = { { flow_direction = "input", direction = defines.direction.north, position = { 1, -4 } } }
            },
        },
        fluid_boxes_off_when_no_fluid_recipe = true,
        collision_box = { { -4.2, -4.2 }, { 4.2, 4.2 } },
        selection_box = { { -4.5, -4.5 }, { 4.5, 4.5 } },
        order = "x[bi]-a[bi-arboretum]",
		graphics_set = {
			animation = {
				layers = {
					{
						filename = ENTITYPATH_BIO .. "bio_terraformer/arboretum.png",
						width = 640,
						height = 640,
						frame_count = 1,
						scale = 0.5,
						shift = { 0, 0 }
					},
					{
						filename = ENTITYPATH_BIO .. "bio_terraformer/arboretum_shadow.png",
						width = 560,
						height = 640,
						frame_count = 1,
						scale = 0.5,
						draw_as_shadow = true,
						shift = { 1.5, 0 }
					}
				}
			},
			working_visualisations = {
				{
					light = { intensity = 1, size = 8 },
					animation = {
						filename = ENTITYPATH_BIO .. "bio_terraformer/arboretum_light.png",
						width = 560,
						height = 640,
						frame_count = 1,
						scale = 0.5,
						sshift = { 0.75, 1 }
					}
				}
			}
		},
        crafting_categories = { "bi-arboretum" },
        crafting_speed = 0.000000000001,
        energy_source = {
            type = "electric",
            usage_priority = "primary-input",
            emissions_per_minute = { pollution = -8 }, -- the "-" means it Absorbs pollution.
        },
        energy_usage = "150kW",
        ingredient_count = 3,
        open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
        close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
        module_specification = {},
    },
	
	--- Corpse
	{
	  type = "corpse",
	  name = "bi-arboretum-area-remnant",
	  localised_name = {"entity-name.bi-arboretum-area-remnant"},
	  icon = "__base__/graphics/icons/remnants.png",
	  icon_size = 64,
	  icon_mipmaps = 4,
	  BI_add_icon = true,
	  flags = {"placeable-neutral", "building-direction-8-way", "not-on-map"},
	  subgroup = "remnants",
	  order = "z-z-z",
	  selection_box = {{-4.5, -4.5}, {4.5, 4.5}},
	  tile_width = 9,
	  tile_height = 9,
	  selectable_in_game = false,
	  time_before_removed = 60 * 60 * 15, -- 15 minutes
	  final_render_layer = "remnants",
	  remove_on_tile_placement = false,
	  animation =
	  {
		{
		  filename = REMNANTSPATH .. "arboretum_remnant.png",
		  line_length = 1,
		  width = 640,
		  height = 640,
		  frame_count = 1,
		  direction_count = 1,
		  shift = {0,0},
		  scale = 0.5
		}
	  }
	},
	
})

--Basic tree farm design from DonBoobleone's "Zen Garden" mod
--If I knew what I was doing with graphics better I probably wouldn't need all these functions.

local function create_single_zen_tree_layers(tree_variation, tint)
    local layers = {}
    if tree_variation.shadow then
        local shadow = util.copy(tree_variation.shadow)
        shadow.draw_as_shadow = true
        shadow.frame_count = 1
        table.insert(layers, shadow)
    end
    if tree_variation.trunk then
        local trunk = util.copy(tree_variation.trunk)
        trunk.frame_count = 1
        table.insert(layers, trunk)
    end
    if tree_variation.leaves then
        local leaves = util.copy(tree_variation.leaves)
        leaves.frame_count = 1
        leaves.tint = tint
        table.insert(layers, leaves)
    end
    return layers
end

local function create_zen_tree_layers(tree_variation, position, tint, scale, draw_order)
    local layers = create_single_zen_tree_layers(tree_variation, tint)
    for _, layer in ipairs(layers) do
        if layer.shift then
            if layer.draw_as_shadow and tree_variation.trunk then
                local trunk_shift = tree_variation.trunk.shift or { 0, 0 }
                layer.shift = {
                    (layer.shift[1] - trunk_shift[1]) * scale + position[1],
                    (layer.shift[2] - trunk_shift[2]) * scale + position[2]
                }
            else
                layer.shift = { position[1], position[2] }
            end
            layer.scale = (layer.scale or 1) * scale
        end
        layer.secondary_draw_order = draw_order
    end
    return layers
end

local function create_zen_garden_graphics(tree_table)
    table.sort(tree_table, function(a, b) return a.position[2] < b.position[2] end)
    local all_layers = {}
    for _, tree in ipairs(tree_table) do
        local scale = tree.scale or 1
        local draw_order = math.min(math.max(math.floor(tree.position[2] * 10), -128), 127)
        local tree_layers = create_zen_tree_layers(tree.tree_type, tree.position, tree.tint, scale, draw_order)
        for _, layer in ipairs(tree_layers) do
            table.insert(all_layers, layer)
        end
    end
    return { layers = all_layers }
end

local function generate_ring(radius, tree_count)
    local positions = {}
    local angle_step = 360 / tree_count
    for i = 0, tree_count - 1 do
        local angle = i * angle_step
        local rad = math.rad(angle)
        local x = radius * math.cos(rad)
        local y = radius * math.sin(rad)
        table.insert(positions, { x, y })
    end
    return positions
end

local stretch_factor = 0.8

local function stretch(position)
    return { position[1] / stretch_factor, position[2] * stretch_factor }
end

local function generate_teeth(radius, teeth_size)
    local positions = {}
    local offset = teeth_size / 2
    for i = 0, 7 do
        local angle = i * 45
        local rad = math.rad(angle)
        local central_x = radius * math.cos(rad)
        local central_y = radius * math.sin(rad)
        local tangential_dx = -math.sin(rad)
        local tangential_dy = math.cos(rad)
        local x1 = central_x + offset * tangential_dx
        local y1 = central_y + offset * tangential_dy
        local x2 = central_x - offset * tangential_dx
        local y2 = central_y - offset * tangential_dy
        table.insert(positions, { x1, y1 })
        table.insert(positions, { x2, y2 })
    end
    return positions
end

local function generate_tree_rings(radii, tree_counts)
    local positions = {}
    for i, radius in ipairs(radii) do
        for _, pos in ipairs(generate_ring(radius, tree_counts[i])) do
            table.insert(positions, pos)
        end
    end
    local stretched_positions = {}
    for _, pos in ipairs(positions) do
        table.insert(stretched_positions, stretch(pos))
    end
    return stretched_positions
end

local function create_tree_table(positions, tree_variation, tint, scale)
    local trees = {}
    for _, pos in ipairs(positions) do
        table.insert(trees, {
            position = pos,
            tree_type = tree_variation,
            tint = tint,
            scale = scale
        })
    end
    return trees
end

local variation = data.raw["tree"]["tree-01"].variations[1]

local function generate_gear_trees()
    local ring_positions = generate_tree_rings({ 1.3, 1.6, 2.1 }, { 8, 16, 32 })
    for _, pos in ipairs(generate_teeth(2.5, 0.38)) do
        table.insert(ring_positions, stretch(pos))
    end
    return create_tree_table(ring_positions, variation, { r = 131 / 255, g = 242 / 255, b = 90 / 255, a = 1 }, 0.33)
end

local gear_tree_layers = create_zen_garden_graphics(generate_gear_trees()).layers

local water_features_layer = {
    filename = ENTITYPATH_BIO .."fountain.png",
    priority = "extra-high",
    width = 256,
    height = 256,
    frame_count = 1,
    line_length = 1,
    scale = 0.35,
    shift = util.by_pixel(0, 0)
}

--Gear Garden Layer assembly
local gear_all_layers = {}
table.insert(gear_all_layers, water_features_layer)
for _, layer in ipairs(gear_tree_layers) do table.insert(gear_all_layers, layer) end

if settings.startup["BI_Add_Basic_Farm"].value then
data:extend(    {{
        type = "assembling-machine",
        name = "bi-basic-farm",
        icons = { { icon = ICONPATH_E .. "bio_basic_farm.png", icon_size = 64, } },
        flags = { "placeable-neutral", "placeable-player", "player-creation" },
        --minable = { mining_time = 1, result = "gear-garden" },
        max_health = 1000,
        corpse = "assembling-machine-3-remnants",
        dying_explosion = "assembling-machine-3-explosion",
        icon_draw_specification = { shift = { 0, -0.3 } },
        alert_icon_shift = util.by_pixel(0, -12),
        surface_conditions = mods["space-age"] and {
            {
                property = "pressure",
                min = 1000,
                max = 1000
            }
        } or nil,
        resistances = {
            { type = "fire", percent = 100 }
        },
        impact_category = "metal",
        working_sound = {
            sound = { filename = "__base__/sound/world/trees/tree-ambient-leaves-1.ogg", volume = 0.55, audible_distance_modifier = 0.5 },
            fade_in_ticks = 4,
            fade_out_ticks = 20
        },
        collision_box = { { -3.51, -3.51 }, { 3.51, 3.51 } },
        selection_box = { { -4, -4 }, { 4, 4 } },
        drawing_box_vertical_extension = 0.2,
        graphics_set = {
            animation = { layers = gear_all_layers }
        },
        crafting_categories = { "biofarm-mod-basic" },
        crafting_speed = 0.5,
        energy_source = {
            type = "burner",
            fuel_inventory_size = 1,
            initial_fuel_percent = 0.01,
            auto_refuel = false
        },
        energy_usage = "100kW",
        module_slots = nil,
        allowed_effects = {}
    }}
)
end