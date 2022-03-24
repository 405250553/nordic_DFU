# thingy52_secure_bootloader
- HW:thingy52
- 此project為bootloader，可搭配nordic_ble_Peripheral的application project做搭配
- 追加 sx1509 紫色呼吸燈當作進入bootloader之提示
- 已將 bootloader 起始位置改為0x00077000 (default為0x00078000)
- sdk_config.h `#define NRF_BL_DFU_ENTER_METHOD_BUTTON 0` (如果不使用按鍵方式進入dfu升級模式)
- sdk_config.h `#define NRF_SDH_CLOCK_LF_SRC 0` (ble clock 改為內部低頻震盪器)
