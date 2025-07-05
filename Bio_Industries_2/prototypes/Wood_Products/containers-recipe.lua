if not BI.Settings.BI_Bigger_Wooden_Chests then
  return
end

local BioInd = require('common')('Bio_Industries')
local ICONPATH = BioInd.modRoot .. "/graphics/icons/"


BioInd.writeDebug("Creating recipes for bigger wooden chests!")
data:extend({
  --- Large Wooden Chest
  {
    type = "recipe",
    name = "bi-wooden-chest-large",
    localised_name = {"entity-name.bi-wooden-chest-large"},
    localised_description = {"entity-description.bi-wooden-chest-large"},
    icon = ICONPATH .. "large_wooden_chest_icon.png",
    icon_size = 64,
    icons = {
      {
        icon = ICONPATH .. "large_wooden_chest_icon.png",
        icon_size = 64,
      }
    },
    normal = {
      energy_required = 2,
      enabled = false,
      ingredients = {
        {type="item", name="copper-plate", amount=16},
        {type="item", name="resin", amount=24},
        {type="item", name="wooden-chest", amount=8}
      },
      results = {{type="item", name="bi-wooden-chest-large", amount=1}},
      main_product = "",
      requester_paste_multiplier = 4,
      allow_as_intermediate = false,    -- Added for 0.18.34/1.1.4
      always_show_made_in = false,      -- Added for 0.18.34/1.1.4
      allow_decomposition = true,       -- Added for 0.18.34/1.1.4
    },
    expensive = {
      energy_required = 4,
      enabled = false,
      ingredients = {
        {type="item", name="copper-plate", amount=24},
        {type="item", name="resin", amount=32},
        {type="item", name="wooden-chest", amount=8}
      },
      results = {{type="item", name="bi-wooden-chest-large", amount=1}},
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
    subgroup = "storage",
    order = "a[items]-aa[wooden-chest]",
  },

  --- Huge Wooden Chest
  {
    type = "recipe",
    name = "bi-wooden-chest-huge",
    localised_name = {"entity-name.bi-wooden-chest-huge"},
    localised_description = {"entity-description.bi-wooden-chest-huge"},
    icon = ICONPATH .. "huge_wooden_chest_icon.png",
    icon_size = 64,
    icons = {
      {
        icon = ICONPATH .. "huge_wooden_chest_icon.png",
        icon_size = 64,
      }
    },
    normal = {
      energy_required = 2,
      enabled = false,
      ingredients = {
        {type="item", name="iron-stick", amount=32},
        {type="item", name="stone-brick", amount=32},
        {type="item", name="bi-wooden-chest-large", amount=16}
      },
      results = {{type="item", name="bi-wooden-chest-huge", amount=1}},
      main_product = "",
      requester_paste_multiplier = 4,
      allow_as_intermediate = false,    -- Added for 0.18.34/1.1.4
      always_show_made_in = false,      -- Added for 0.18.34/1.1.4
      allow_decomposition = true,       -- Added for 0.18.34/1.1.4
    },
    expensive = {
      energy_required = 4,
      enabled = false,
      ingredients = {
        {type="item", name="iron-stick", amount=48},
        {type="item", name="stone-brick", amount=48},
        {type="item", name="bi-wooden-chest-large", amount=16}
      },
      results = {{type="item", name="bi-wooden-chest-huge", amount=1}},
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
    subgroup = "storage",
    order = "a[items]-ab[wooden-chest]",
  },

  --- Giga Wooden Chest
  {
    type = "recipe",
    name = "bi-wooden-chest-giga",
    localised_name = {"entity-name.bi-wooden-chest-giga"},
    localised_description = {"entity-description.bi-wooden-chest-giga"},
    icon = ICONPATH .. "giga_wooden_chest_icon.png",
    icon_size = 64,
    icons = {
      {
        icon = ICONPATH .. "giga_wooden_chest_icon.png",
        icon_size = 64,
      }
    },
    normal = {
      energy_required = 4,
      enabled = false,
      ingredients = {
        {type="item", name="steel-plate", amount=32},
        {type="item", name="concrete", amount=32},
        {type="item", name="bi-wooden-chest-huge", amount=16}
      },
      results = {{type="item", name="bi-wooden-chest-giga", amount=1}},
      main_product = "",
      requester_paste_multiplier = 4,
      allow_as_intermediate = false,    -- Added for 0.18.34/1.1.4
      always_show_made_in = false,      -- Added for 0.18.34/1.1.4
      allow_decomposition = true,       -- Added for 0.18.34/1.1.4
    },
    expensive = {
      energy_required = 6,
      enabled = false,
      ingredients = {
        {type="item", name="steel-plate", amount=48},
        {type="item", name="concrete", amount=48},
        {type="item", name="bi-wooden-chest-huge", amount=16}
      },
      main_product = "",
      results = {{type="item", name="bi-wooden-chest-giga", amount=1}},
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
    subgroup = "storage",
    order = "a[items]-ac[wooden-chest]",
  },
 })
