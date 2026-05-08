-- abstractInvLib, by Shrekshellraiser.
--
-- Abstraction over CC's inventory peripheral API. Used by storage
-- systems (msks, MISC, others). Lives in the CC-MISC repo.
--
-- Use: local inv = require("abstractInvLib")

return {
  name = "abstractInvLib",
  version = "master",
  description = "Abstract inventory peripheral library for ComputerCraft.",
  author = "Shrekshellraiser",
  license = "MIT",

  base_url = "https://raw.githubusercontent.com/Storehaus/CC-MISC/master",

  files = {
    lib = {
      ["lib/abstractInvLib.lua"] = "init.lua",
    },
  },
  hashes = {},
}
