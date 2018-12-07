#!/bin/bash
# create multiresolution windows icon
ICON_SRC=../../src/qt/res/icons/acunar.png
ICON_DST=../../src/qt/res/icons/acunar.ico
NSISICON_DST=../pixmaps/acunar.ico
convert ${ICON_SRC} -resize 16x16 acunar-16.png
convert ${ICON_SRC} -resize 32x32 acunar-32.png
convert ${ICON_SRC} -resize 48x48 acunar-48.png
convert acunar-48.png acunar-32.png acunar-16.png ${ICON_DST}
convert ${ICON_SRC} -resize 64x64 acunar-64.png
convert ${ICON_SRC} -resize 96x96 acunar-96.png
convert ${ICON_SRC} -resize 128x128 acunar-128.png
convert acunar-128.png acunar-96.png acunar-64.png acunar-48.png acunar-32.png acunar-16.png ${NSISICON_DST}
