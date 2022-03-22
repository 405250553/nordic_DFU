# nordic_DFU (base on sdk15.2)
## 目錄:

```
├── 52DK_example (52832 DK 版本的HEX)
├── Thingy52_example (THINGY52 版本的HEX)
├── dfu_project
         ├── thingy52_secure_bootloader  (thingy52 bootloader的project)
         ├── secure_bootloader   (平常build bootloader的project)
         ├──open_bootloader     (沒用過)
         └──example (hex only) (可以刪了)

(P.S. 52DK_example 和 Thingy52_example 內的 dfu_one_hot.bat window的bat檔，內包含了所有燒錄+setting生成+dfu update pkg生成 指令)

```

## DFU Project 設定，參考教學

https://blog.csdn.net/mygod2008ok/article/details/89715626

https://hackmd.io/uAt-HXscTT6ApEf-6V_ggw

http://www.sunyouqun.com/2018/04/nordic-ble-dfu-generate-package/

## 觀念教學:
**setting:**  http://www.sunyouqun.com/2019/05/read-settings-hex/

**bootloader:**  http://www.sunyouqun.com/2018/04/nordic-ble-dfu-3-bootloader/

**application:**  http://www.sunyouqun.com/2018/04/nordic-ble-dfu-4-buttonless-app/
