------------------------------------------------------------------------------------
-- Just remove some obsolete global tables!
------------------------------------------------------------------------------------
--~ local BioInd = require('__Bio_Industries_2__/common')('Bio_Industries_2')

if global and global.bi then
  global.bi.terrains = nil
  global.bi.seed_bomb = nil
  BioInd.writeDebug("Removed obsolete tables from global!")
end

table.sort(global, function(a, b) return a < b end)
