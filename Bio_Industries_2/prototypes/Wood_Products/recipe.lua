local BioInd = require('common')('Bio_Industries_2')

local ICONPATH = BioInd.modRoot .. "/graphics/icons/"

data:extend({

  --- Big Electric Pole
  {
    type = "recipe",
    name = "bi-wooden-pole-big",
    localised_name = {"entity-name.bi-wooden-pole-big"},
    localised_description = {"entity-description.bi-wooden-pole-big"},
    icon = ICONPATH .. "big-wooden-pole.png",
    icon_size = 64,
    icons = {
      {
        icon = ICONPATH .. "big-wooden-pole.png",
        icon_size = 64,
      }
    },
    normal = {
      enabled = false,
      ingredients = {
        {type="item", name="wood", amount=5},
        {type="item", name="small-electric-pole", amount=2},
      },
      results = {{type="item", name="bi-wooden-pole-big", amount=1}},
      main_product = "",
      allow_as_intermediate = false,    -- Added for 0.18.34/1.1.4
      always_show_made_in = false,      -- Added for 0.18.34/1.1.4
      allow_decomposition = true,       -- Added for 0.18.34/1.1.4
    },
    expensive = {
      enabled = false,
      ingredients = {
        {type="item", name="wood", amount=10},
        {type="item", name="small-electric-pole", amount=4},
      },
      results = {{type="item", name="bi-wooden-pole-big", amount=1}},
      main_product = "",
      allow_as_intermediate = false,    -- Added for 0.18.34/1.1.4
      always_show_made_in = false,      -- Added for 0.18.34/1.1.4
      allow_decomposition = true,       -- Added for 0.18.34/1.1.4
    },
    --~ always_show_made_in = true,
    --~ allow_decomposition = false,
    allow_as_intermediate = false,      -- Added for 0.18.34/1.1.4
    always_show_made_in = false,        -- Changed for 0.18.34/1.1.4
    allow_decomposition = true,         -- Changed for 0.18.34/1.1.4
    subgroup = "energy-pipe-distribution",
    order = "a[energy]-b[small-electric-pole]",
    -- This is a custom property for use by "Krastorio 2" (it will change
    -- ingredients/results; used for wood/wood pulp)
    mod = "Bio_Industries_2",
  },

  --- Huge Wooden Pole
  {
    type = "recipe",
    name = "bi-wooden-pole-huge",
    localised_name = {"entity-name.bi-wooden-pole-huge"},
    localised_description = {"entity-description.bi-wooden-pole-huge"},
    icon = ICONPATH .. "huge-wooden-pole.png",
    icon_size = 64,
    icons = {
      {
        icon = ICONPATH .. "huge-wooden-pole.png",
        icon_size = 64,
      }
    },
    normal = {
      enabled = false,
      ingredients = {
        {type="item", name="wood", amount=5},
        {type="item", name="concrete", amount=100},
        {type="item", name="bi-wooden-pole-big", amount=6},
      },
      results = {{type="item", name="bi-wooden-pole-huge", amount=1}},
      main_product = "",
      allow_as_intermediate = false,    -- Added for 0.18.34/1.1.4
      always_show_made_in = false,      -- Added for 0.18.34/1.1.4
      allow_decomposition = true,       -- Added for 0.18.34/1.1.4
    },
    expensive = {
      enabled = false,
      ingredients = {
        {type="item", name="wood", amount=10},
        {type="item", name="concrete", amount=150},
        {type="item", name="bi-wooden-pole-big", amount=10},
      },
      results = {{type="item", name="bi-wooden-pole-huge", amount=1}},
      main_product = "",
      allow_as_intermediate = false,    -- Added for 0.18.34/1.1.4
      always_show_made_in = false,      -- Added for 0.18.34/1.1.4
      allow_decomposition = true,       -- Added for 0.18.34/1.1.4
    },
    --~ always_show_made_in = true,
    --~ allow_decomposition = false,
    allow_as_intermediate = false,      -- Added for 0.18.34/1.1.4
    always_show_made_in = false,        -- Changed for 0.18.34/1.1.4
    allow_decomposition = true,         -- Changed for 0.18.34/1.1.4
    subgroup = "energy-pipe-distribution",
    order = "a[energy]-d[big-electric-pole]",
    -- This is a custom property for use by "Krastorio 2" (it will change
    -- ingredients/results; used for wood/wood pulp)
    mod = "Bio_Industries_2",
  },

  --- Wooden Fence
  {
    type = "recipe",
    name = "bi-wooden-fence",
    localised_name = {"entity-name.bi-wooden-fence"},
    localised_description = {"entity-description.bi-wooden-fence"},
    icon = ICONPATH .. "wooden-fence.png",
    icon_size = 64,
    icons = {
      {
        icon = ICONPATH .. "wooden-fence.png",
        icon_size = 64,
      }
    },
    normal = {
      enabled = true,
      ingredients = {
        {type="item", name="wood", amount=2},
      },
      results = {{type="item", name="bi-wooden-fence", amount=1}},
      main_product = "",
      allow_as_intermediate = false,    -- Added for 0.18.34/1.1.4
      always_show_made_in = false,      -- Added for 0.18.34/1.1.4
      allow_decomposition = true,       -- Added for 0.18.34/1.1.4
    },
    expensive = {
      enabled = true,
      ingredients = {
        {type="item", name="wood", amount=4},
      },
      results = {{type="item", name="bi-wooden-fence", amount=1}},
      main_product = "",
      allow_as_intermediate = false,    -- Added for 0.18.34/1.1.4
      always_show_made_in = false,      -- Added for 0.18.34/1.1.4
      allow_decomposition = true,       -- Added for 0.18.34/1.1.4
    },
    --~ always_show_made_in = true,
    --~ allow_decomposition = false,
    allow_as_intermediate = false,      -- Added for 0.18.34/1.1.4
    always_show_made_in = false,        -- Changed for 0.18.34/1.1.4
    allow_decomposition = true,         -- Changed for 0.18.34/1.1.4
    subgroup = "defensive-structure",
    -- This is a custom property for use by "Krastorio 2" (it will change
    -- ingredients/results; used for wood/wood pulp)
    mod = "Bio_Industries_2",
  },

  --- Wooden Rail
  {
    type = "recipe",
    name = "bi-rail-wood",
    localised_name = {"entity-name.bi-rail-wood"},
    localised_description = {"entity-description.bi-rail-wood"},
    icon = ICONPATH .. "rail-wood.png",
    icon_size = 64,
    icons = {
      {
        icon = ICONPATH .. "rail-wood.png",
        icon_size = 64,
      }
    },
    normal = {
      enabled = false,
      ingredients = {
        {type="item", name="wood", amount=6},
        {type="item", name="stone", amount=1},
        {type="item", name="steel-plate", amount=1},
        {type="item", name="iron-stick", amount=1},
      },
      results = {{type="item", name="bi-rail-wood", amount=2}},
      main_product = "",
      requester_paste_multiplier = 4,
      allow_as_intermediate = false,    -- Added for 0.18.34/1.1.4
      always_show_made_in = false,      -- Added for 0.18.34/1.1.4
      allow_decomposition = true,       -- Added for 0.18.34/1.1.4
    },
    expensive = {
      enabled = false,
      ingredients = {
        {type="item", name="wood", amount=6},
        {type="item", name="stone", amount=1},
        {type="item", name="steel-plate", amount=1},
        {type="item", name="iron-stick", amount=1},
      },
      results = {{type="item", name="bi-rail-wood", amount=1}},
      main_product = "",
      requester_paste_multiplier = 4,
      allow_as_intermediate = false,    -- Added for 0.18.34/1.1.4
      always_show_made_in = false,      -- Added for 0.18.34/1.1.4
      allow_decomposition = true,       -- Added for 0.18.34/1.1.4
    },
    --~ always_show_made_in = true,
    --~ allow_decomposition = false,
    allow_as_intermediate = false,      -- Added for 0.18.34/1.1.4
    always_show_made_in = false,        -- Changed for 0.18.34/1.1.4
    allow_decomposition = true,         -- Changed for 0.18.34/1.1.4
    subgroup = "transport",
    order = "a[train-system]-a[rail]",
    -- This is a custom property for use by "Krastorio 2" (it will change
    -- ingredients/results; used for wood/wood pulp)
    mod = "Bio_Industries",
  },

  --- Wooden Rail to Concrete Rail
  {
    type = "recipe",
    name = "bi-rail-wood-to-concrete",
    icon = ICONPATH .. "rail-wood-to-concrete.png",
    icon_size = 64,
    icons = {
      {
        icon = ICONPATH .. "rail-wood-to-concrete.png",
        icon_size = 64,
      }
    },
    normal = {
      enabled = false,
      ingredients = {
        {type="item", name="bi-rail-wood", amount=3},
        {type="item", name="stone-brick", amount=10},
      },
      results = {{type="item", name="rail", amount=2}},
      main_product = "",
      requester_paste_multiplier = 4,
      allow_as_intermediate = false,    -- Added for 0.18.34/1.1.4
      always_show_made_in = false,      -- Added for 0.18.34/1.1.4
      allow_decomposition = true,       -- Added for 0.18.34/1.1.4
    },
    expensive = {
      enabled = false,
      ingredients = {
        {type="item", name="bi-rail-wood", amount=2},
        {type="item", name="stone-brick", amount=10},
      },
      results = {{type="item", name="rail", amount=1}},
      main_product = "",
      requester_paste_multiplier = 4,
      allow_as_intermediate = false,    -- Added for 0.18.34/1.1.4
      always_show_made_in = false,      -- Added for 0.18.34/1.1.4
      allow_decomposition = true,       -- Added for 0.18.34/1.1.4
    },
    subgroup = "transport",
    order = "a[train-system]-aa1[rail-upgrade]",
    --~ always_show_made_in = true,
    --~ allow_decomposition = false,
    allow_as_intermediate = false,      -- Added for 0.18.34/1.1.4
    always_show_made_in = false,        -- Changed for 0.18.34/1.1.4
    allow_decomposition = true,         -- Changed for 0.18.34/1.1.4
  },

  --- Wooden Bridge Rail
  {
    type = "recipe",
    name = "bi-rail-wood-bridge",
    localised_name = {"entity-name.bi-rail-wood-bridge"},
    localised_description = {"entity-description.bi-rail-wood-bridge"},
    name = "bi-rail-wood-bridge",
    icon = ICONPATH .. "rail-wood-bridge.png",
    icon_size = 64,
    icons = {
      {
        icon = ICONPATH .. "rail-wood-bridge.png",
        icon_size = 64,
      }
    },
    normal = {
      enabled = false,
      ingredients = {
        {type="item", name="bi-rail-wood", amount=1},
        {type="item", name="steel-plate", amount=1},
        {type="item", name="wood", amount=32}
      },
      results = {{type="item", name="bi-rail-wood-bridge", amount=2}},
      main_product = "",
      requester_paste_multiplier = 4,
      allow_as_intermediate = false,    -- Added for 0.18.34/1.1.4
      always_show_made_in = false,      -- Added for 0.18.34/1.1.4
      allow_decomposition = true,       -- Added for 0.18.34/1.1.4
    },
    expensive = {
      enabled = false,
      ingredients = {
        {type="item", name="bi-rail-wood", amount=1},
        {type="item", name="steel-plate", amount=1},
        {type="item", name="wood", amount=32}
      },
      results = {{type="item", name="bi-rail-wood-bridge", amount=1}},
      main_product = "",
      requester_paste_multiplier = 4,
      allow_as_intermediate = false,    -- Added for 0.18.34/1.1.4
      always_show_made_in = false,      -- Added for 0.18.34/1.1.4
      allow_decomposition = true,       -- Added for 0.18.34/1.1.4
    },
    --~ always_show_made_in = true,
    --~ allow_decomposition = false,
    allow_as_intermediate = false,      -- Added for 0.18.34/1.1.4
    always_show_made_in = false,        -- Changed for 0.18.34/1.1.4
    allow_decomposition = true,         -- Changed for 0.18.34/1.1.4
    subgroup = "transport",
    order = "a[train-system]-aa[rail]",
    -- This is a custom property for use by "Krastorio 2" (it will change
    -- ingredients/results; used for wood/wood pulp)
    mod = "Bio_Industries",
  },

  --- Power Rail
  {
    type = "recipe",
    name = "bi-rail-power",
    localised_name = {"entity-name.bi-rail-power"},
    localised_description = {"entity-description.bi-rail-power"},
    icon = ICONPATH .. "rail-concrete-power.png",
    icon_size = 64,
    icons = {
      {
        icon = ICONPATH .. "rail-concrete-power.png",
        icon_size = 64,
      }
    },
    normal = {
      enabled = false,
      ingredients = {
        {type="item", name="rail", amount=2},
        {type="item", name="copper-cable", amount=4},
      },
      results = {{type="item", name="bi-rail-power", amount=2}},
      main_product = "",
      requester_paste_multiplier = 4,
      allow_as_intermediate = false,    -- Added for 0.18.34/1.1.4
      always_show_made_in = false,      -- Added for 0.18.34/1.1.4
      allow_decomposition = true,       -- Added for 0.18.34/1.1.4
    },
    expensive = {
      enabled = false,
      ingredients = {
        {type="item", name="rail", amount=1},
        {type="item", name="copper-cable", amount=4},
      },
      results = {{type="item", name="bi-rail-power", amount=1}},
      main_product = "",
      requester_paste_multiplier = 4,
      allow_as_intermediate = false,    -- Added for 0.18.34/1.1.4
      always_show_made_in = false,      -- Added for 0.18.34/1.1.4
      allow_decomposition = true,       -- Added for 0.18.34/1.1.4
    },
    --~ always_show_made_in = true,
    --~ allow_decomposition = false,
    allow_as_intermediate = false,      -- Added for 0.18.34/1.1.4
    always_show_made_in = false,        -- Changed for 0.18.34/1.1.4
    allow_decomposition = true,         -- Changed for 0.18.34/1.1.4
    subgroup = "transport",
    order = "a[train-system]-ab[rail]",
  },

  --- Wood Pipe
  {
    type = "recipe",
    name = "bi-wood-pipe",
    localised_name = {"entity-name.bi-wood-pipe"},
    localised_description = {"entity-description.bi-wood-pipe"},
    icon = ICONPATH .. "wood_pipe.png",
    icon_size = 64,
    icons = {
      {
        icon = ICONPATH .. "wood_pipe.png",
        icon_size = 64,
      }
    },
    normal = {
      energy_required = 1,
      enabled = true,
      ingredients = {
        {type="item", name="copper-plate", amount=1},
        {type="item", name="wood", amount=8}
      },
      results = {{type="item", name="bi-wood-pipe", amount=4}},
      main_product = "",
      requester_paste_multiplier = 15,
      allow_as_intermediate = false,    -- Added for 0.18.34/1.1.4
      always_show_made_in = false,      -- Added for 0.18.34/1.1.4
      allow_decomposition = true,       -- Added for 0.18.34/1.1.4
    },
    expensive = {
      energy_required = 2,
      enabled = true,
      ingredients = {
        {type="item", name="copper-plate", amount=1},
        {type="item", name="wood", amount=12}
      },
      results = {{type="item", name="bi-wood-pipe", amount=4}},
      main_product = "",
      requester_paste_multiplier = 15,
      allow_as_intermediate = false,    -- Added for 0.18.34/1.1.4
      always_show_made_in = false,      -- Added for 0.18.34/1.1.4
      allow_decomposition = true,       -- Added for 0.18.34/1.1.4
    },
    --~ always_show_made_in = true,
    --~ allow_decomposition = false,
    allow_as_intermediate = false,      -- Added for 0.18.34/1.1.4
    always_show_made_in = false,        -- Changed for 0.18.34/1.1.4
    allow_decomposition = true,         -- Changed for 0.18.34/1.1.4
    subgroup = "energy-pipe-distribution",
    order = "a[pipe]-1a[pipe]",
    -- This is a custom property for use by "Krastorio 2" (it will change
    -- ingredients/results; used for wood/wood pulp)
    mod = "Bio_Industries_2",
  },

  -- Wood Pipe to Ground
  {
    type = "recipe",
    name = "bi-wood-pipe-to-ground",
    localised_name = {"entity-name.bi-wood-pipe-to-ground"},
    localised_description = {"entity-description.bi-wood-pipe-to-ground"},
    icon = ICONPATH .. "pipe-to-ground-wood.png",
    icon_size = 64,
    icons = {
      {
        icon = ICONPATH .. "pipe-to-ground-wood.png",
        icon_size = 64,
      }
    },
    normal = {
      energy_required = 2,
      enabled = true,
      ingredients = {
        {type="item", name="copper-plate", amount=4},
        {type="item", name="bi-wood-pipe", amount=5}
      },
      results = {{type="item", name="bi-wood-pipe-to-ground", amount=2}},
      main_product = "",
      allow_as_intermediate = false,    -- Added for 0.18.34/1.1.4
      always_show_made_in = false,      -- Added for 0.18.34/1.1.4
      allow_decomposition = true,       -- Added for 0.18.34/1.1.4
    },
    expensive = {
      energy_required = 4,
      enabled = true,
      ingredients = {
        {type="item", name="copper-plate", amount=5},
        {type="item", name="bi-wood-pipe", amount=6}
      },
      results = {{type="item", name="bi-wood-pipe-to-ground", amount=2}},
      main_product = "",
      allow_as_intermediate = false,    -- Added for 0.18.34/1.1.4
      always_show_made_in = false,      -- Added for 0.18.34/1.1.4
      allow_decomposition = true,       -- Added for 0.18.34/1.1.4
    },
    --~ always_show_made_in = true,
    --~ allow_decomposition = false,
    allow_as_intermediate = false,      -- Added for 0.18.34/1.1.4
    always_show_made_in = false,        -- Changed for 0.18.34/1.1.4
    allow_decomposition = true,         -- Changed for 0.18.34/1.1.4
    subgroup = "energy-pipe-distribution",
    order = "a[pipe]-1b[pipe-to-ground]",
  },

  --- Rail to Power Pole
  {
    type = "recipe",
    name = "bi-power-to-rail-pole",
    localised_name = {"entity-name.bi-power-to-rail-pole"},
    localised_description = {"entity-description.bi-power-to-rail-pole"},
    icon = ICONPATH .. "electric-to-rail.png",
    icon_size = 64,
    icon_mipmaps = 1,
    icons = {
      {
        icon = ICONPATH .. "electric-to-rail.png",
        icon_size = 64,
      }
    },
    normal = {
      enabled = false,
      ingredients = {
        {type="item", name="copper-cable", amount=2},
        {type="item", name="medium-electric-pole", amount=1},
      },
      results = {{type="item", name="bi-power-to-rail-pole", amount=1}},
      main_product = "",
      allow_as_intermediate = false,    -- Added for 0.18.34/1.1.4
      always_show_made_in = false,      -- Added for 0.18.34/1.1.4
      allow_decomposition = true,       -- Added for 0.18.34/1.1.4
    },
    expensive = {
      enabled = false,
      ingredients = {
        {type="item", name="copper-cable", amount=4},
        {type="item", name="medium-electric-pole", amount=1},
      },
      results = {{type="item", name="bi-power-to-rail-pole", amount=1}},
      main_product = "",
      allow_as_intermediate = false,    -- Added for 0.18.34/1.1.4
      always_show_made_in = false,      -- Added for 0.18.34/1.1.4
      allow_decomposition = true,       -- Added for 0.18.34/1.1.4
    },
    --~ always_show_made_in = true,
    --~ allow_decomposition = false,
    --~ allow_as_intermediate = false,  -- Added for 0.18.34/1.1.4
    always_show_made_in = false,        -- Changed for 0.18.34/1.1.4
    allow_decomposition = true,         -- Changed for 0.18.34/1.1.4
    subgroup = "transport",
    order = "a[train-system]-ac[rail]",
  },

  --~ --- Large Wooden Chest
  --~ {
    --~ type = "recipe",
    --~ name = "bi-wooden-chest-large",
    --~ localised_name = {"entity-name.bi-wooden-chest-large"},
    --~ localised_description = {"entity-description.bi-wooden-chest-large"},
    --~ icon = ICONPATH .. "large_wooden_chest_icon.png",
    --~ icon_size = 64,
    --~ icons = {
      --~ {
        --~ icon = ICONPATH .. "large_wooden_chest_icon.png",
        --~ icon_size = 64,
      --~ }
    --~ },
    --~ normal = {
      --~ energy_required = 2,
      --~ enabled = false,
      --~ ingredients = {
        --~ {type="item", name="copper-plate", amount=16},
        --~ {type="item", name="resin", amount=24},
        --~ {type="item", name="wooden-chest", amount=8}
      --~ },
      --~ result = "bi-wooden-chest-large",
      --~ result_count = 1,
      --~ main_product = "",
      --~ requester_paste_multiplier = 4,
      --~ allow_as_intermediate = false,    -- Added for 0.18.34/1.1.4
      --~ always_show_made_in = false,      -- Added for 0.18.34/1.1.4
      --~ allow_decomposition = true,       -- Added for 0.18.34/1.1.4
    --~ },
    --~ expensive = {
      --~ energy_required = 4,
      --~ enabled = false,
      --~ ingredients = {
        --~ {type="item", name="copper-plate", amount=24},
        --~ {type="item", name="resin", amount=32},
        --~ {type="item", name="wooden-chest", amount=8}
      --~ },
      --~ result = "bi-wooden-chest-large",
      --~ result_count = 1,
      --~ main_product = "",
      --~ requester_paste_multiplier = 4,
      --~ allow_as_intermediate = false,    -- Added for 0.18.34/1.1.4
      --~ always_show_made_in = false,      -- Added for 0.18.34/1.1.4
      --~ allow_decomposition = true,       -- Added for 0.18.34/1.1.4
    --~ },
    --~ -- always_show_made_in = true,
    --~ -- allow_decomposition = false,
    --~ allow_as_intermediate = false,      -- Added for 0.18.34/1.1.4
    --~ always_show_made_in = false,        -- Changed for 0.18.34/1.1.4
    --~ allow_decomposition = true,         -- Changed for 0.18.34/1.1.4
    --~ subgroup = "storage",
    --~ order = "a[items]-aa[wooden-chest]",
  --~ },

  --~ --- Huge Wooden Chest
  --~ {
    --~ type = "recipe",
    --~ name = "bi-wooden-chest-huge",
    --~ localised_name = {"entity-name.bi-wooden-chest-huge"},
    --~ localised_description = {"entity-description.bi-wooden-chest-huge"},
    --~ icon = ICONPATH .. "huge_wooden_chest_icon.png",
    --~ icon_size = 64,
    --~ icons = {
      --~ {
        --~ icon = ICONPATH .. "huge_wooden_chest_icon.png",
        --~ icon_size = 64,
      --~ }
    --~ },
    --~ normal = {
      --~ energy_required = 2,
      --~ enabled = false,
      --~ ingredients = {
        --~ {type="item", name="iron-stick", amount=32},
        --~ {type="item", name="stone-brick", amount=32},
        --~ {type="item", name="bi-wooden-chest-large", amount=16}
      --~ },
      --~ result = "bi-wooden-chest-huge",
      --~ result_count = 1,
      --~ main_product = "",
      --~ requester_paste_multiplier = 4,
      --~ allow_as_intermediate = false,    -- Added for 0.18.34/1.1.4
      --~ always_show_made_in = false,      -- Added for 0.18.34/1.1.4
      --~ allow_decomposition = true,       -- Added for 0.18.34/1.1.4
    --~ },
    --~ expensive = {
      --~ energy_required = 4,
      --~ enabled = false,
      --~ ingredients = {
        --~ {type="item", name="iron-stick", amount=48},
        --~ {type="item", name="stone-brick", amount=48},
        --~ {type="item", name="bi-wooden-chest-large", amount=16}
      --~ },
      --~ result = "bi-wooden-chest-huge",
      --~ result_count = 1,
      --~ main_product = "",
      --~ requester_paste_multiplier = 4,
      --~ allow_as_intermediate = false,    -- Added for 0.18.34/1.1.4
      --~ always_show_made_in = false,      -- Added for 0.18.34/1.1.4
      --~ allow_decomposition = true,       -- Added for 0.18.34/1.1.4
    --~ },
    --~ -- always_show_made_in = true,
    --~ -- allow_decomposition = false,
    --~ allow_as_intermediate = false,      -- Added for 0.18.34/1.1.4
    --~ always_show_made_in = false,        -- Changed for 0.18.34/1.1.4
    --~ allow_decomposition = true,         -- Changed for 0.18.34/1.1.4
    --~ subgroup = "storage",
    --~ order = "a[items]-ab[wooden-chest]",
  --~ },

  --~ --- Giga Wooden Chest
  --~ {
    --~ type = "recipe",
    --~ name = "bi-wooden-chest-giga",
    --~ localised_name = {"entity-name.bi-wooden-chest-giga"},
    --~ localised_description = {"entity-description.bi-wooden-chest-giga"},
    --~ icon = ICONPATH .. "giga_wooden_chest_icon.png",
    --~ icon_size = 64,
    --~ icons = {
      --~ {
        --~ icon = ICONPATH .. "giga_wooden_chest_icon.png",
        --~ icon_size = 64,
      --~ }
    --~ },
    --~ normal = {
      --~ energy_required = 4,
      --~ enabled = false,
      --~ ingredients = {
        --~ {type="item", name="steel-plate", amount=32},
        --~ {type="item", name="concrete", amount=32},
        --~ {type="item", name="bi-wooden-chest-huge", amount=16}
      --~ },
      --~ result = "bi-wooden-chest-giga",
      --~ result_count = 1,
      --~ main_product = "",
      --~ requester_paste_multiplier = 4,
      --~ allow_as_intermediate = false,    -- Added for 0.18.34/1.1.4
      --~ always_show_made_in = false,      -- Added for 0.18.34/1.1.4
      --~ allow_decomposition = true,       -- Added for 0.18.34/1.1.4
    --~ },
    --~ expensive = {
      --~ energy_required = 6,
      --~ enabled = false,
      --~ ingredients = {
        --~ {type="item", name="steel-plate", amount=48},
        --~ {type="item", name="concrete", amount=48},
        --~ {type="item", name="bi-wooden-chest-huge", amount=16}
      --~ },
      --~ main_product = "",
      --~ result = "bi-wooden-chest-giga",
      --~ result_count = 1,
      --~ main_product = "",
      --~ requester_paste_multiplier = 4,
      --~ allow_as_intermediate = false,    -- Added for 0.18.34/1.1.4
      --~ always_show_made_in = false,      -- Added for 0.18.34/1.1.4
      --~ allow_decomposition = true,       -- Added for 0.18.34/1.1.4
    --~ },
    --~ -- always_show_made_in = true,
    --~ -- allow_decomposition = false,
    --~ allow_as_intermediate = false,      -- Added for 0.18.34/1.1.4
    --~ always_show_made_in = false,        -- Changed for 0.18.34/1.1.4
    --~ allow_decomposition = true,         -- Changed for 0.18.34/1.1.4
    --~ subgroup = "storage",
    --~ order = "a[items]-ac[wooden-chest]",
  --~ },
 })
