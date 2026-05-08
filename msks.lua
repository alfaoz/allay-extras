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
        -- shell.run would sandbox the script and discard our path patch.
        -- loadfile-with-env runs msks.lua in this launcher's environment,
        -- so msks.lua sees the patched package.path and can resolve its
        -- bare-name requires (ktwsl bundled, abstractInvLib as a dep).
        inline = "package.path = \"/usr/allay/lib/msks/?.lua;/usr/allay/lib/msks/?/init.lua;\""
              .. "\n            .. \"/usr/allay/lib/?.lua;/usr/allay/lib/?/init.lua;\""
              .. "\n            .. package.path\n"
              .. "local fn = assert(loadfile(\"/usr/allay/lib/msks/msks.lua\", \"t\", _ENV))\n"
              .. "return fn(...)\n",
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
