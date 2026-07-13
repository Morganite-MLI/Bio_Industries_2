local BioInd = require('common')('Bio_Industries_2')
local coal_processing = require("prototypes.Bio_Farm.coal_processing")
local ICONPATH = BioInd.modRoot .. "/graphics/technology/"
local k2 = mods["Krastorio2"] or mods["Krastorio2-spaced-out"]
local ICONPATH_E = BioInd.modRoot .. "/graphics/icons/entity/"
local Technology = require('__kry_stdlib__/stdlib/data/technology')

---- Bio Farm
data:extend({
  {
    type = "technology",
    name = "bi-tech-bio-farming",
    icon_size = 256,
    icon = ICONPATH .. "bi-tech-bio-farming.png",
    icons = {
      {
        icon = ICONPATH .. "bi-tech-bio-farming.png",
        icon_size = 256,
      }
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bi-bio-greenhouse"
      },
      {
        type = "unlock-recipe",
        recipe = "bi-bio-farm"
      },
      {
        type = "unlock-recipe",
        recipe = "bi-arboretum"
      },
      {
        type = "unlock-recipe",
        recipe = "bi-arboretum-r1"
      },
      {
        type = "unlock-recipe",
        recipe = "bi-woodpulp"
      },
      {
        type = "unlock-recipe",
        recipe = "bi-resin-pulp"
      },
      {
        type = "unlock-recipe",
        recipe = "bi-wood-from-pulp"
      },
    },
    prerequisites = {"lamp"},
    unit = {
      count = 25,
      ingredients = {
        {"automation-science-pack", 1}
      },
      time = 20
    },
  },

  {
    type = "technology",
    name = "bi-tech-coal-processing-1",
    localised_name = {"technology-name.bi-tech-coal-processing-1"},
    localised_description = {"technology-description.bi-tech-coal-processing-1"},
    icon_size = 256,
    icon = ICONPATH .. "bi-tech-coal-processing-1.png",
    icons = {
      {
        icon = ICONPATH .. "bi-tech-coal-processing-1.png",
        icon_size = 256,
      }
    },
    effects = coal_processing[1],
    prerequisites = {"advanced-material-processing"},
    unit = {
      count = 150,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 30
    },
  },

  {
    type = "technology",
    name = "bi-tech-coal-processing-2",
    localised_name = {"technology-name.bi-tech-coal-processing-2"},
    localised_description = {"technology-description.bi-tech-coal-processing-2"},
    icon_size = 256,
    icon = ICONPATH .. "bi-tech-coal-processing-2.png",
    icons = {
      {
        icon = ICONPATH .. "bi-tech-coal-processing-2.png",
        icon_size = 256,
      }
    },
    effects = coal_processing[2],
    prerequisites = {"bi-tech-coal-processing-1", "chemical-science-pack"},
    unit = {
      count = 150,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
      },
      time = 35
    },
  },

  {
    type = "technology",
    name = "bi-tech-coal-processing-3",
    localised_name = {"technology-name.bi-tech-coal-processing-3"},
    localised_description = {"technology-description.bi-tech-coal-processing-3"},
    icon_size = 256,
    icon = ICONPATH .. "bi-tech-coal-processing-3.png",
    icons = {
      {
        icon = ICONPATH .. "bi-tech-coal-processing-3.png",
        icon_size = 256,
      }
    },
    effects = coal_processing[3],
    prerequisites = {"bi-tech-coal-processing-2", "production-science-pack"},
    unit = {
      count = 250,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
      },
      time = 40
    },
  },

  {
    type = "technology",
    name = "bi-tech-fertilizer",
    icon_size = 256,
    icon = ICONPATH .. "bi-tech-fertilizer.png",
    icons = {
      {
        icon = ICONPATH .. "bi-tech-fertilizer.png",
        icon_size = 256,
      }
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bi-liquid-air"
      },
      {
        type = "unlock-recipe",
        recipe = "bi-nitrogen"
      },
      {
        type = "unlock-recipe",
        recipe = "bi-fertilizer-1"
      },
      {
        type = "unlock-recipe",
        recipe = "bi-seed-3"
      },
      {
        type = "unlock-recipe",
        recipe = "bi-seedling-3"
      },
      {
        type = "unlock-recipe",
        recipe = "bi-logs-3"
      },
      {
        type = "unlock-recipe",
        recipe = "bi-bio-garden"
      },
      {
        type = "unlock-recipe",
        recipe = "bi-bio-garden-large"
      },
      {
        type = "unlock-recipe",
        recipe = "bi-bio-garden-huge"
      },
      {
        type = "unlock-recipe",
        recipe = "bi-purified-air-1"
      },
      {
        type = "unlock-recipe",
        recipe = "bi-seed-bomb-basic"
      },
      {
        type = "unlock-recipe",
        recipe = "bi-seed-bomb-standard"
      },
      {
        type = "unlock-recipe",
        recipe = "bi-arboretum-r2"
      },
      {
        type = "unlock-recipe",
        recipe = "bi-arboretum-r4"
      },
    },
    prerequisites = {
      "fluid-handling",
      "bi-tech-bio-farming"
    },
    unit = {
      count = 250,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 30
    }
  }
})


local start_tech = (k2 and settings.startup["BI_Hide_K2_Recipes"].value) and "kr-greenhouse" or "bi-tech-bio-farming"
Technology(start_tech):add_effect("bi-seed-1", "unlock-recipe")
Technology(start_tech):add_effect("bi-seedling-1", "unlock-recipe")
Technology(start_tech):add_effect("bi-logs-1", "unlock-recipe")

local function hide_recipe(name)
    if data.raw.recipe[name] then
        data.raw.recipe[name].hidden = true
    end
end

if k2 and settings.startup["BI_Hide_K2_Recipes"].value then
    hide_recipe("wood")
    hide_recipe("kr-grow-wood-with-sand")
    hide_recipe("kr-wood-with-fertilizer")
    
    --Copied from ATOM for testing purposes
    table.insert(data.raw["assembling-machine"]["kr-greenhouse"].crafting_categories, "biofarm-mod-farm")
    table.insert(data.raw["assembling-machine"]["kr-greenhouse"].crafting_categories, "biofarm-mod-greenhouse")
end

if settings.startup["BI_Add_Basic_Farm"].value then
    data:extend({
  {
    type = "technology",
    name = "bi-tech-basic-farm",
    icons = { { icon = ICONPATH_E .. "bio_basic_farm.png", icon_size = 64, } },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bi-basic-farm"
      },
      {
        type = "unlock-recipe",
        recipe = "bi-seedling-1-basic"
      },
      {
        type = "unlock-recipe",
        recipe = "bi-logs-1-basic"
      },
      {
        type = "unlock-recipe",
        recipe = "bi-seed-1-basic"
      },
    },
    prerequisites = k2 and {"kr-automation-core"} or mods["aai-industry"] and {"automation-science-pack"} or {},
    unit = {
      count = 20,
      ingredients = {
        {k2 and "kr-basic-tech-card" or "automation-science-pack", 1}
      },
      time = 20
    },
  },
  })
  
  Technology("bi-tech-bio-farming"):add_prereq("bi-tech-basic-farm")
  
end