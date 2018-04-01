#!/bin/bash
# create multiresolution windows icon
ICON_DST=../../src/qt/res/icons/VOLVOX.ico

convert ../../src/qt/res/icons/VOLVOX-16.png ../../src/qt/res/icons/VOLVOX-32.png ../../src/qt/res/icons/VOLVOX-48.png ${ICON_DST}
