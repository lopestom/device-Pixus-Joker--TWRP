# TWRP device tree for Tablet Pixus Joker
Вся информация и файлы находятся здесь: https://4pda.to/forum/index.php?s=&showtopic=1029376&view=findpost&p=108212586

Операционная система: Android
Версия ОС на момент выхода устройства: 9.0
Tablet PC Pixus Joker 4/ 64GB 4G
Dual Sim Black, 10.1" (1920x1200) IPS 
MediaTek Helio P22
ОЗУ 4 ГБ / 64 ГБ встроенной + microSD до 128 ГБ
камера 8 Мп + 5 Мп
4G (LTE) / Wi-Fi, Bluetooth / GPS, А-GPS
ОС Android 9.0 (Pie)
240.8 x 167.4 x 9.3 мм, 520 г
6000 мАч
черный

Источник: https://exe.ua/en/product/p335995/


## To build - Build with minimal Omni TWRP
```
export ALLOW_MISSING_DEPENDENCIES=true
export LC_ALL=C
export USE_NINJA=false
. build/envsetup.sh
lunch omni_Joker-eng
mka recoveryimage
```

