-- Pine3D, by Xella#8655.
--
-- A 3D rendering engine designed to be fast.
-- Upstream: https://github.com/Xella37/Pine3D
--
-- Pine3D uses Lua's libFolder pattern for sibling requires, so user code
-- must require the main file explicitly:
--
--     local Pine3D = require("pine3d.Pine3D")
--
-- This installs Pine3D.lua, betterblittle.lua, and noise.lua under
-- /usr/allay/lib/pine3d/. Models from the upstream repo (binary format)
-- are not installed; copy them from the repo as needed.

return {
  name = "pine3d",
  version = "main",
  description = "3D rendering engine for ComputerCraft. Use: require('pine3d.Pine3D').",
  author = "Xella37",
  license = "MIT",

  base_url = "https://raw.githubusercontent.com/Xella37/Pine3D/main",

  files = {
    lib = {
      ["Pine3D.lua"]        = "Pine3D.lua",
      ["betterblittle.lua"] = "betterblittle.lua",
      ["noise.lua"]         = "noise.lua",
    },
  },
  hashes = {},

  post_install_message = [[
pine3d installed under /usr/allay/lib/pine3d/.
Use: local Pine3D = require("pine3d.Pine3D")
(Note: not require("pine3d") — Pine3D's libFolder require pattern needs
the explicit submodule reference.)
]],
}
