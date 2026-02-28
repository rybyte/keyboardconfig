# ZMK Config

This is a ZMK user config repository for:

- `splitkb_aurora_sofle_left` (`nice_nano_v2`)
- `splitkb_aurora_sofle_right` (`nice_nano_v2`)
- `settings_reset` (`nice_nano`)

## Build with GitHub Actions

Push changes to this repository. GitHub Actions will build firmware automatically using:

- `.github/workflows/build.yml`
- `build.yaml`
- `config/west.yml`

Built firmware files are available in the workflow run artifacts.

## Customize

- Keymap: `config/splitkb_aurora_sofle.keymap`
- Kconfig options: `config/splitkb_aurora_sofle.conf`
