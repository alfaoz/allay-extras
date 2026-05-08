-- IsometriH, by 9551-Dev.
--
-- Isometric rendering engine for ComputerCraft.
-- Upstream: https://github.com/9551-Dev/IsometriH
--
-- Depends on pixelbox_lite (separate package).
-- Use: local iso = require("isometrih")

return {
  name = "isometrih",
  version = "main",
  description = "Isometric rendering engine for ComputerCraft.",
  author = "9551-Dev",
  license = "MIT",

  base_url = "https://raw.githubusercontent.com/9551-Dev/IsometriH/main",

  files = {
    lib = {
      ["isometrih.lua"] = "init.lua",
    },
  },
  hashes = {},

  dependencies = { "pixelbox_lite" },
}
