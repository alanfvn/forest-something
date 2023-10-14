-- shipwright_build.lua
local colorscheme = require('lush_theme.matcha')
local lushwright = require("shipwright.transform.lush")

run(colorscheme,
  lushwright.to_lua,
  {patchwrite, "palette/colors.lua", "-- PATCH_OPEN", "-- PATCH_CLOSE"}
)
