-- msks, by Shrekshellraiser.
--
-- A modern, simple Krist shop for ComputerCraft.
-- Upstream: https://github.com/ShrekshellraiserCC/msks
--
-- msks.lua bare-name requires "ktwsl" (a sibling) and "abstractInvLib"
-- (in the CC-MISC repo). We bundle ktwsl alongside msks.lua, declare
-- abstractInvLib as a separate dependency, and ship a /bin/msks launcher
-- that prepends the package's lib dir to package.path before delegating.
--
-- After install, run:  msks
-- Edit /msks.conf for shop config.

return {
  name = "msks",
  version = "main",
  description = "A simple Krist shop for ComputerCraft.",
  author = "Shrekshellraiser",
  license = "MIT",

  base_url = "https://raw.githubusercontent.com/ShrekshellraiserCC/msks/main",

  files = {
    bin = {
      ["@launcher"] = {
        dest = "msks",
        inline = "package.path = \"/usr/allay/lib/msks/?.lua;/usr/allay/lib/msks/?/init.lua;\""
              .. " .. package.path\n"
              .. "return shell.run(\"/usr/allay/lib/msks/msks.lua\", ...)\n",
      },
    },
    lib = {
      ["msks.lua"]  = "msks.lua",
      ["ktwsl.lua"] = "ktwsl.lua",
    },
  },
  hashes = {},

  dependencies = { "abstractInvLib" },

  post_install_message = [[
msks installed. Run with:  msks
On first run, msks creates /msks.conf for your shop config.
]],
}
