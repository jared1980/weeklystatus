# Goat

## WN9722OAX22-DM (AIOS7.0)

- ✅ [07/06] Create new jira ticket.
    - 🟢 Ask SU to provide some files to keep synchronize.
        - 🟢 Device tree (ensure pin mapping is right)
        - 🟡 Bootloader of Little kernel (if SU modify)
        - 🟡 Flash partition (ensure we write board data in right place)
        - 🟡 Kernel config (if SU modify)
    - 🟢 [06/24] Find way to write broad data to specific partition.
        - 🟡 SU will provide special partition that is available in the eMMC device. (RPMB)

- 🟢 [07/07] Try test script on AIOS7.0.
    - ✅ (Exist) Bootup and Console Check
        - No need script, test pass.
    - ✅ (Exist) USB P0, P1, P2
        - Script is ready, test pass.
        - Three usb interfaces.
    - 🟢 (Exist) I2C Test
        - Script is ready, but test fail.
        - Three mode (detect, set, get) * four channel.
        - Wait SU provide DTS to modify pin mux.
    - 🟢 (Exist) Wi-Fi radio calibration
        - Script is ready, but test fail.
        - Wait R0A board contain wireless interface card.
    - 🟢 (Exist) PWM/ADC Loopback
        - Script is ready, but test fail.
        - Three threshlod(duty_H, duty_M, duty_L) * two channel
        - Wait R0A board which ADC loop back to specific file.
    - 📌 (New) PCIe
        - Need to create script, test pending.
    - 🟢 (Exist) GPIO Loopback Test
        - Script is ready, waiting parameters from Bill.
    - 🟢 (Exist) HDMI TX / eARC
        - Test fail.
        - Wait porting.
    - 🟢 (New) HDMI RX
        - Test fail.
        - Wait porting.
    - 🟢 (Exist) Ethernt
        - Script is ready, but test fail.
        - Wait porting.
    - 🟢 (New) UART Test
        - Need to create script, test pending.
    - 📌 (New) MSDC1 Test
        - Need to create script, test pending.
    - 📌 (New) PHY LED / VCORE_PG
        - Need to create script, test pending.
    - 📌 (New) PWRKEY / RESETB
        - Need to create script, test pending.
    - 📌 (Exist) USB_5V Supply and 3.3V Input
        - Need to modify script, test pending.
    - 📌 (New) ADC0 - Temp Sensor check
        - Need to create script, test pending.
    - 📌 (New) BT
        - Need to create script, test pending.
    - 📌 (Exist) Audio Test
        - Need to modify scipt, test pending.
    - 🟡 (New) SN/Test MAC/Test Key Write
        - Need partition from SU to write these data, test pending.
    
- 🟡 [06/07] Study document and review git commit log.
- 🟡 [06/20] Check difference of AIOS6.5 / AIOS7.0 (partition, uboot, little kernel, fastboot, adb...)

## Common
### CCAPI

- 🟢 [06/30] Study document & review code.

### Docker builder maintain and enhance

### Utility
