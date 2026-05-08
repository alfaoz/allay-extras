-- pngLua, by 9551-Dev (originally by DelusionalLogic).
--
-- PNG image parsing library.
-- Upstream: https://github.com/9551-Dev/pngLua
--
-- Use: local png = require("pnglua")

return {
  name = "pnglua",
  version = "master",
  description = "PNG image decoder for ComputerCraft.",
  author = "9551-Dev",
  license = "MIT",

  base_url = "https://raw.githubusercontent.com/9551-Dev/pngLua/master",

  files = {
    lib = {
      ["png.lua"]     = "init.lua",
      ["deflate.lua"] = "deflate.lua",
      ["stream.lua"]  = "stream.lua",
    },
  },
  hashes = {},
}
