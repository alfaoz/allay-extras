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
  version = "1.0.1",
  description = "lua REPL with allay's package.path preset for require().",
  author = "alfa",
  license = "MIT",

  -- Required by the schema even though every file is inline. Unused.
  base_url = "https://raw.githubusercontent.com/allaycc/extras/main",

  files = {
    bin = {
      ["@launcher"] = {
        dest = "aua",
        -- The launcher needs to reach the REPL's package.path, not just
        -- our own. CC's lua program calls cc.require.make(env, "/") which
        -- builds a fresh package table with a hardcoded path -- it does
        -- NOT inherit _ENV.package.path. So mutating package.path here
        -- alone has no effect on the REPL's require().
        --
        -- Trick: patch cc.require.make before loading the REPL. The REPL
        -- ends up calling our wrapper, which extends the returned
        -- package's path with ours. From the REPL user's perspective,
        -- require() now resolves /usr/allay/lib/ and /lib/.
        inline =
          "local extra = dofile(\"/usr/allay/setup.lua\")\n"
       .. "package.path = extra .. package.path\n"
       .. "local ok, cc_require = pcall(require, \"cc.require\")\n"
       .. "if ok and cc_require and cc_require.make then\n"
       .. "  local orig = cc_require.make\n"
       .. "  cc_require.make = function(env, dir)\n"
       .. "    local req, pkg = orig(env, dir)\n"
       .. "    pkg.path = extra .. (pkg.path or \"\")\n"
       .. "    return req, pkg\n"
       .. "  end\n"
       .. "end\n"
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
