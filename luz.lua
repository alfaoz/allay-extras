-- Luz, by MCJack123.
--
-- Lightweight compression algorithm for Lua files.
-- Upstream: https://github.com/MCJack123/Luz
--
-- Luz's entry file (luz.lua) bare-name requires "lex", "minify",
-- "compress", "decompress" (siblings). The wrapper init.lua below
-- prepends /usr/allay/lib/luz/ to package.path before delegating, so
-- those bare-name requires resolve to the bundled siblings. Users do:
--
--     local luz = require("luz")

return {
  name = "luz",
  version = "master",
  description = "Lightweight compression for Lua files.",
  author = "MCJack123",
  license = "MIT",

  base_url = "https://raw.githubusercontent.com/MCJack123/Luz/master",

  files = {
    lib = {
      ["@wrapper"] = {
        dest = "init.lua",
        inline = "package.path = \"/usr/allay/lib/luz/?.lua;/usr/allay/lib/luz/?/init.lua;\""
              .. " .. package.path\n"
              .. "return require(\"luz.luz\")\n",
      },
      ["luz.lua"]                  = "luz.lua",
      ["lex.lua"]                  = "lex.lua",
      ["minify.lua"]               = "minify.lua",
      ["compress.lua"]             = "compress.lua",
      ["decompress.lua"]           = "decompress.lua",
      ["histogram.lua"]            = "histogram.lua",
      ["maketree.lua"]             = "maketree.lua",
      ["token_decode_tree.lua"]    = "token_decode_tree.lua",
      ["token_encode_map.lua"]     = "token_encode_map.lua",
      ["LibDeflate.lua"]           = "LibDeflate.lua",
    },
  },
  hashes = {},

  post_install_message = [[
luz installed. Use:  local luz = require("luz")
]],
}
