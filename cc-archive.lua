-- CC-Archive, by MCJack123.
--
-- Libraries for archive format support: ar, tar, gzip, xz.
-- Upstream: https://github.com/MCJack123/CC-Archive
--
-- The library files do bare-name requires for "LibDeflate", "ar", and
-- "muxzcat" (siblings in the upstream repo). We install those at the
-- top of /usr/allay/lib/ via the raw kind so the bare-name requires
-- resolve cleanly. The main archive APIs go under /usr/allay/lib/cc-archive/
-- so users can require them as cc-archive.archive, cc-archive.tar, etc.
--
-- Use:
--     local archive = require("cc-archive.archive")
--     local tar     = require("cc-archive.tar")
--     local gzip    = require("cc-archive.gzip")

return {
  name = "cc-archive",
  version = "master",
  description = "Archive formats for CC: ar, tar, gzip, xz.",
  author = "MCJack123",
  license = "MIT",

  base_url = "https://raw.githubusercontent.com/MCJack123/CC-Archive/master",

  files = {
    lib = {
      ["archive.lua"] = "archive.lua",
      ["tar.lua"]     = "tar.lua",
      ["gzip.lua"]    = "gzip.lua",
      ["arlib.lua"]   = "arlib.lua",
      ["unxz.lua"]    = "unxz.lua",
    },
    raw = {
      -- Vendored at the top of /usr/allay/lib/ so bare-name requires
      -- inside the cc-archive files (`require "LibDeflate"`, etc.) resolve.
      ["LibDeflate.lua"] = "/usr/allay/lib/LibDeflate.lua",
      ["ar.lua"]         = "/usr/allay/lib/ar.lua",
      ["muxzcat.lua"]    = "/usr/allay/lib/muxzcat.lua",
    },
  },
  hashes = {},

  post_install_message = [[
cc-archive installed. Use:
  local archive = require("cc-archive.archive")
  local tar     = require("cc-archive.tar")
  local gzip    = require("cc-archive.gzip")
]],
}
