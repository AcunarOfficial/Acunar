#!/bin/bash
# create multiresolution windows icon
ICON_SRC=../../src/qt/res/icons/acunar.png
ICON_DST=../../src/qt/res/icons/acunar.ico
convert ${ICON_SRC} -resize 16x16 acunar-16.png
convert ${ICON_SRC} -resize 32x32 acunar-32.png
convert ${ICON_SRC} -resize 48x48 acunar-48.png
convert acunar-48.png acunar-32.png acunar-16.png ${ICON_DST}

