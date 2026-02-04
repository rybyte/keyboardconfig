#!/bin/bash
work_dir=$(pwd)
cd ../zmk
git checkout v0.3.0

source .venv/bin/activate

cd app/

west config build.cmake-args   -- "-DZMK_CONFIG=$work_dir/config";

west build -p -d build/left -b nice_nano_v2 -- -DSHIELD=splitkb_aurora_sofle_left
west build -p -d build/right -b nice_nano_v2 -- -DSHIELD=splitkb_aurora_sofle_right
west build -p -d build/settings_reset -b nice_nano -- -DSHIELD=settings_reset

output_dir=$work_dir/uf2
mkdir -p $output_dir

cp -v build/left/zephyr/zmk.uf2 $output_dir/sofle-nice-left.uf2
cp -v build/right/zephyr/zmk.uf2 $output_dir/sofle-nice-right.uf2
cp -v build/settings_reset/zephyr/zmk.uf2 $output_dir/sofle-nice-settings-reset.uf2
