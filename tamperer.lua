-- Tamperer, by Fatboychummy-CC.
--
-- A library for easy creation of settings menus.
-- Upstream: https://github.com/Fatboychummy-CC/Tamperer
--
-- Tamperer's display.lua optionally requires a "sha256" module if you
-- use its password features. Install your sha256 module of choice if so.
--
-- Use: local tamperer = require("tamperer")

return {
  name = "tamperer",
  version = "master",
  description = "Settings menu library for ComputerCraft.",
  author = "Fatboychummy",
  license = "MIT",

  base_url = "https://raw.githubusercontent.com/Fatboychummy-CC/Tamperer/master",

  files = {
    lib = {
      ["display.lua"] = "init.lua",
    },
  },
  hashes = {},
}
