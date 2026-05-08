-- Pine3D, by Xella#8655.
--
-- A 3D rendering engine designed to be fast.
-- Upstream: https://github.com/Xella37/Pine3D
--
-- Pine3D's Pine3D.lua uses the libFolder pattern for sibling requires
-- ((...):match("(.-)[^%.]+$")), which only works when the file is
-- loaded via a dotted require path. We ship an inline init.lua wrapper
-- so user code can just `require("pine3d")` -- the wrapper forwards to
-- `require("pine3d.Pine3D")`, which preserves the dotted call so the
-- internal sibling lookups (betterblittle, noise) resolve.

return {
  name = "pine3d",
  version = "1.0.0",
  description = "3D rendering engine for ComputerCraft. Use: require('pine3d').",
  author = "Xella37",
  license = "MIT",

  base_url = "https://raw.githubusercontent.com/Xella37/Pine3D/main",

  files = {
    lib = {
      ["Pine3D.lua"]        = "Pine3D.lua",
      ["betterblittle.lua"] = "betterblittle.lua",
      ["noise.lua"]         = "noise.lua",
      ["@init"] = {
        dest = "init.lua",
        inline = "return require(\"pine3d.Pine3D\")\n",
      },
    },
  },
  hashes = {},

  post_install_message = [[
pine3d installed. Use:  local Pine3D = require("pine3d")
]],
}
