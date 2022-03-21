

@echo off


echo *******************************************
echo *            setting 生成指令              *
echo *******************************************
nrfutil settings generate --family NRF52 --application ble_app_buttonless_dfu_pca10040_s132.hex --application-version 1 --bootloader-version 1 --bl-settings-version 1 setting.hex

echo.
echo.
echo.


echo *******************************************
echo *            Erase NRF52832               *
echo *******************************************
nrfjprog --eraseall --family NRF52

echo.
echo.
echo.

echo *******************************************
echo *          Program softdevice             *
echo *******************************************
nrfjprog --family NRF52 --program ./s132_nrf52_6.1.0_softdevice.hex

echo.
echo.
echo.

echo *******************************************
echo *          Program bootloader             *
echo *******************************************
nrfjprog --family NRF52 --program ./nrf52_bootloader.hex


rem echo *******************************************
rem echo *          Program Application             *
rem echo *******************************************
rem nrfjprog --family NRF52 --program ./ble_app_buttonless_dfu_pca10040_s132.hex


rem echo *******************************************
rem echo *          Program setting             *
rem echo *******************************************
rem nrfjprog --family NRF52 --program ./setting.hex

echo.
echo.
echo.

echo *******************************************
echo *            RESET NRF52832               *
echo *******************************************
nrfjprog --family NRF52 --reset

echo.
echo.
echo.


echo *******************************************
echo *              pkg 生成指令                *
echo *******************************************
nrfutil pkg generate --hw-version 52 --sd-req 0xAF --application-version 1 --application ble_app_buttonless_dfu_pca10040_s132.hex --key-file private_key.pem app_dfu_package.zip


echo.
echo.
echo.


pause



rem pkg 顯示 : nrfutil pkg display package.zip

rem key 生成指令 : nrfutil keys generate private.pem

rem pkg ps :
rem SoftDevice  FWID (sd-req)
rem s112_nrf52_6.0.0    0xA7
rem s112_nrf52_6.1.0    0xB0
rem s112_nrf52_6.1.1    0xB8
rem s112_nrf52_7.0.0    0xC4
rem s112_nrf52_7.0.1    0xCD
rem s113_nrf52_7.0.0    0xC3
rem s113_nrf52_7.0.1    0xCC
rem s130_nrf51_1.0.0    0x67
rem s130_nrf51_2.0.0    0x80
rem s132_nrf52_2.0.0    0x81
rem s130_nrf51_2.0.1    0x87
rem s132_nrf52_2.0.1    0x88
rem s212_nrf52_2.0.1    0x8D
rem s332_nrf52_2.0.1    0x8E
rem s132_nrf52_3.0.0    0x8C
rem s132_nrf52_3.1.0    0x91
rem s132_nrf52_4.0.0    0x95
rem s132_nrf52_4.0.2    0x98
rem s132_nrf52_4.0.3    0x99
rem s132_nrf52_4.0.4    0x9E
rem s132_nrf52_4.0.5    0x9F
rem s212_nrf52_4.0.5    0x93
rem s332_nrf52_4.0.5    0x94
rem s132_nrf52_5.0.0    0x9D
rem s212_nrf52_5.0.0    0x9C
rem s332_nrf52_5.0.0    0x9B
rem s132_nrf52_5.1.0    0xA5
rem s132_nrf52_6.0.0    0xA8
rem s132_nrf52_6.1.0    0xAF
rem s132_nrf52_6.1.1    0xB7
rem s132_nrf52_7.0.0    0xC2
rem s132_nrf52_7.0.1    0xCB
rem s140_nrf52_6.0.0    0xA9
rem s140_nrf52_6.1.0    0xAE
rem s140_nrf52_6.1.1    0xB6
rem s140_nrf52_7.0.0    0xC1
rem s140_nrf52_7.0.1    0xCA
rem s212_nrf52_6.1.1    0xBC
rem s332_nrf52_6.1.1    0xBA
rem s340_nrf52_6.1.1    0xB9

