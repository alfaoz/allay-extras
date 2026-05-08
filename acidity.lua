-- Acidity, by 9551-Dev.
--
-- Procedural noise generation for procedural world generation.
-- Upstream: https://github.com/9551-Dev/acidity
--
-- Use: local acidity = require("acidity")

return {
  name = "acidity",
  version = "master",
  description = "Procedural noise generation library.",
  author = "9551-Dev",
  license = "MIT",

  base_url = "https://raw.githubusercontent.com/9551-Dev/acidity/master",

  files = {
    lib = {
      ["acidity.lua"] = "init.lua",
    },
  },
  hashes = {},
}
