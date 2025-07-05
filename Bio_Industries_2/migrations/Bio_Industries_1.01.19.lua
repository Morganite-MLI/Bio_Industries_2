--~ -- If a tutorial from Tips and Tricks is started, the migration will be applied to a
--~ -- mod named "level" and none of our global variables will be defined.)
--~ if script.mod_name ~= "autodrive" then
  --~ AD.entered_file("leave", "Nothing to do for mod \""..script.mod_name.."\"!")
  --~ return
--~ end
--~ AD.entered_file()


-- Add functions that are also used in other files (debugging output etc.)
--~ local BioInd = require("__" .. script.mod_name .. "__.common")(script.mod_name)
BioInd.writeDebug("Entered migration script 1.01.19")

--~ require("util")


-- Restructure tables for growing trees. They used to be arrays of treedata that had
-- to be resorted by treedata.time whenever a new tree was added, so we could stop
-- the on_tick event when the treedata.time of the first array was in the future.
-- Now we index these tables directly by tick, so we can skip sorting the tables.
local function convert_tab(tab)
  local ret = {}
  local tick

  for t, tree_data in pairs(tab) do
    tick = tree_data.time
    --~ tree_data.time = nil

    ret[tick] = ret[tick] or {}
    table.insert(ret[tick], tree_data)
  end

  return ret
end

local tab = "tree_growing"
BioInd.writeDebug("Converting table global.bi[%s]", {tab})
global.bi[tab] = convert_tab(global.bi[tab])
BioInd.show("global.bi["..tab.."]", global.bi[tab])

for s = 1, 4 do
  tab = "tree_growing_stage_"..s
  BioInd.writeDebug("Converting table global.bi[%s]", {tab})
  global.bi[tab] = convert_tab(global.bi[tab])
BioInd.show("global.bi["..tab.."]", global.bi[tab])
end
