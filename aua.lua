-- aua: lua REPL with allay's package.path preset.
--
-- CC: Tweaked gives every program its own `package` table, so the standard
-- `lua` REPL has no idea allay's libs exist. `aua` is `lua` plus the one-line
-- path setup -- you drop straight in and require() works against everything
-- under /usr/allay/lib/ and /lib/.
--
-- The launcher is tiny enough to ship inline. No fetch on install.

return {
  name = "aua",
  version = "1.0.0",
  description = "lua REPL with allay's package.path preset for require().",
  author = "alfa",
  license = "MIT",

  -- Required by the schema even though every file is inline. Unused.
  base_url = "https://raw.githubusercontent.com/alfaoz/allay-extras/main",

  files = {
    bin = {
      ["@launcher"] = {
        dest = "aua",
        -- 1) Prepend allay's lib dirs to this program's package.path.
        -- 2) Load CC's stock lua REPL into _our_ env via loadfile-with-_ENV
        --    so it inherits the patched package.path. shell.run would
        --    sandbox and lose the patch -- same trick msks uses.
        inline = "package.path = dofile(\"/usr/allay/setup.lua\") .. package.path\n"
              .. "local fn = assert(loadfile(\"/rom/programs/lua.lua\", \"t\", _ENV))\n"
              .. "return fn(...)\n",
      },
    },
  },
  hashes = {},

  post_install_message = [[
aua installed. Run with:  aua
Inside the REPL, require() resolves allay-installed packages directly.
]],
}
