return {
  spec = "allay/v1.0.0",
  format = "allay",
  name = "alfaoz/allay-extras",
  description = "Curated CC: Tweaked libraries that aren't in unicornpkg-main. Add this source to extend allay's catalog with popular community libraries.",
  homepage = "https://github.com/alfaoz/allay-extras",

  packages = {
    -- Graphics.
    pine3d = {
      version = "main",
      description = "3D rendering engine. require('pine3d.Pine3D')",
    },
    isometrih = {
      version = "main",
      description = "Isometric rendering engine.",
    },
    pixelbox_lite = {
      version = "master",
      description = "Fast 2D teletext rendering library.",
    },
    pnglua = {
      version = "master",
      description = "PNG image decoder.",
    },

    -- Networking and security.
    ecnet2 = {
      version = "main",
      description = "Secure encrypted rednet replacement. require('ecnet2')",
    },

    -- Generation and procedural.
    acidity = {
      version = "master",
      description = "Procedural noise generation for terrain and effects.",
    },

    -- UI and tooling.
    tamperer = {
      version = "master",
      description = "Settings menu library.",
    },

    -- Compression and archives.
    luz = {
      version = "master",
      description = "Lightweight compression for Lua files.",
    },
    ["cc-archive"] = {
      version = "master",
      description = "Archive formats: ar, tar, gzip, xz.",
    },

    -- Storage.
    abstractInvLib = {
      version = "master",
      description = "Abstract inventory peripheral library.",
    },

    -- Economy / Krist shops.
    msks = {
      version = "main",
      description = "Simple Krist shop, installs as /bin/msks.",
    },

    -- Developer tooling.
    aua = {
      version = "1.0.0",
      description = "lua REPL with allay's package.path preset; run as /bin/aua.",
    },
  },
}
