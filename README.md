# allay-extras

A curated source of CC: Tweaked libraries that aren't in unicornpkg-main.
After installing allay, add this source to get popular community libraries
like Pine3D, GuiH, ecnet, and more, with the same install/update/remove
flow as native allay packages.

## Add the source

    allay source add allaycc/extras

Then:

    allay search 3d              # find Pine3D, IsometriH, etc.
    allay install pine3d         # install
    allay install ecnet2         # secure rednet
    allay install msks           # Krist shop

## Packages

| Package         | Description                                          |
|-----------------|------------------------------------------------------|
| `pine3d`        | 3D rendering engine (Xella37/Pine3D)                 |
| `isometrih`     | Isometric rendering engine (9551-Dev)                |
| `pixelbox_lite` | Fast teletext 2D rendering (9551-Dev)                |
| `pnglua`        | PNG image decoder (9551-Dev)                         |
| `ecnet2`        | Secure encrypted rednet (migeyel/ecnet)              |
| `acidity`       | Procedural noise generation (9551-Dev)               |
| `tamperer`      | Settings menu library (Fatboychummy-CC)              |
| `luz`           | Lightweight Lua compression (MCJack123/Luz)          |
| `cc-archive`    | tar, ar, gzip, xz support (MCJack123/CC-Archive)     |
| `msks`          | Simple Krist shop (ShrekshellraiserCC/msks)          |

More packages are added over time. Submit a PR to nominate one.

## Need something not here?

Use the greedy installer:

    allay install gh:user/repo

allay walks any GitHub repo, classifies the files, scans for `require()`
calls, and installs as a bundle. Hash-pinned, fully tracked in the
lockfile, removable like a normal package. Not as polished as a curated
entry, but works for the long tail of libraries we haven't manually
packaged.

## Versioning

Each package pins to a branch (`main` or `master`) by default. allay
fetches the current state of that branch on install and records the
file hashes in your lockfile. Subsequent `allay update` calls re-fetch
from the same branch. If upstream restructures, an update may fail with
a clear error and someone will need to PR an updated package
definition here.

## License

Package definitions in this repo are MIT-licensed. The libraries they
point to retain their original licenses; allay only fetches files at
install time and does not redistribute upstream code.
