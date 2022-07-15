# Goat

## WN9722OAX22-DM (AIOS7.0)
 - 🟢 [07/07] Design and implement architecture of AIOS7.0.
     - ✅ Add Arcadyan's layer into image.
     - ✅ Add package group to store recipes from Arcadyan.
 - ✅ [07/06] Create new jira ticket.
     - 🟢 Ask SU to provide some files to keep synchronize.
         - 🟢 Device tree (ensure pin mapping right)
         - 🟡 Bootloader of Little kernel (if SU modify)
         - 🟡 Flash partition (ensure we write board data in right place)
         - 🟡 Kernel config (if SU modify)
     - 🟢 [06/24] Find way to write broad data to specific partition.
         - 🟡 SU will provide special partition that is available in the eMMC device. (RPMB)
 - 🚫 [07/07] Prepare master file to CNC. (7/15)
     - ✅ Prepare environment.
     - ✅ SU will provide AIOS7.0 FW.
     - 🚫 Try whole process to create master file via AIOS6.5.
     - 🔴 SU and Arcadyan will upgrade FW respectively after board arrived.
 - 🟢 [07/07] Try test script on AIOS7.0.
     - 🟡 (New) SN/Test MAC/Test Key Write
         - Need partition from SU to write these data, test pending.
     - ✅ (Exist) Bootup and Console Check
         - No need script, test pass.
     - 📌 (Exist) Audio Test
         - Need to find scipt and reference board don't support DMIC, test pending.
     - 🟢 (Exist) I2C Test
         - All script is ready, but test fail.
         - Three mode(detect, set, get) * four channel.
     - 🟢 (Exist) PWM/ADC Loopback
         - Need to modify script, test pending.
         - Three threshlod(duty_H, duty_M, duty_L) * two channel + GPIO write
     - 🟢 (New) UART Test
         - Need to create script, test pending.
     - 📌 (New) MSDC1 Test
         - Need to create script, test pending.
     - 📌 (Exist) GPIO Loopback Test
         - Need to modify script, test pending.
     - 📌 (Exist) HDMI TX / eARC
         - Need to modify script, test pending.
     - 📌 (New) HDMI RX
         - Need to create script, test pending.
     - 📌 (Exist) USB P0, P1, P2
         - Need to modify script, test pending.
     - 📌 (Exist) Ethernt
         - Need to modify script, test pending.
     - 📌 (New) PHY LED / VCORE_PG
         - Need to create script, test pending.
     - 📌 (New) PCIe
         - Need to create script, test pending.
     - 📌 (New) PWRKEY / RESETB
         - Need to create script, test pending.
     - 📌 (Exist) USB_5V Supply and 3.3V Input
         - Need to modify script, test pending.
     - 📌 (New) ADC0 - Temp Sensor check
         - Need to create script, test pending.
     - 📌 (Exist) Wi-Fi radio calibration
         - Need to modify script, test pending.
     - 📌 (New) BT
         - Need to create script, test pending.
    
 - 🟡 [06/07] Study document and review git commit log.
 - 🟡 [06/20] Check difference of AIOS6.5 / AIOS7.0 (partition, uboot, little kernel, fastboot, adb...)

## Common

### Utility
 - ✅ [07/07] Fix cp_check bug.
     - ~~Status will not be updated to latest automatically if source or target branch exist on local. Result will go wrong when either branch is not latest. Add machanism to update branch to latest everytime run this script.~~
     - Status will not be updated to latest automatically if source or target branch exist on local. Result will go wrong when either branch is not latest. Add warning message let user know status of branch and terminate compare process.

### CCAPI

 - 🟢 [06/30] Study document & review code.

### Docker builder maintain and enhance
