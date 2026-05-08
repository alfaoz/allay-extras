-- ecnet2, by migeyel.
--
-- Secure rednet replacement with end-to-end encryption.
-- Upstream: https://github.com/migeyel/ecnet
--
-- Installed as `ecnet2` to match upstream's intended namespace.
-- Use: local ecnet = require("ecnet2")

return {
  name = "ecnet2",
  version = "main",
  description = "Secure network communications in ComputerCraft.",
  author = "migeyel",
  license = "MIT",

  base_url = "https://raw.githubusercontent.com/migeyel/ecnet/main",

  files = {
    lib = {
      ["ecnet2/init.lua"]              = "init.lua",
      ["ecnet2/address_encoder.lua"]   = "address_encoder.lua",
      ["ecnet2/cipher_state.lua"]      = "cipher_state.lua",
      ["ecnet2/class.lua"]             = "class.lua",
      ["ecnet2/connection.lua"]        = "connection.lua",
      ["ecnet2/constants.lua"]         = "constants.lua",
      ["ecnet2/ecnetd.lua"]            = "ecnetd.lua",
      ["ecnet2/handshake_state.lua"]   = "handshake_state.lua",
      ["ecnet2/identity.lua"]          = "identity.lua",
      ["ecnet2/listener.lua"]          = "listener.lua",
      ["ecnet2/modems.lua"]            = "modems.lua",
      ["ecnet2/protocol.lua"]          = "protocol.lua",
      ["ecnet2/symmetric_state.lua"]   = "symmetric_state.lua",
      ["ecnet2/uid.lua"]               = "uid.lua",
    },
  },
  hashes = {},

  -- ecnet2's identity layer pulls in ccryptolib for ECC ops.
  -- ccryptolib lives in unicornpkg-main; our compat translator handles it.
  dependencies = { "ccryptolib" },

  post_install_message = [[
ecnet2 installed. Use:  local ecnet = require("ecnet2")
]],
}
