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
     - 🟡 SN/Test MAC/Test Key Write
     - ✅ Bootup and Console Check
     - 📌 Audio Test
     - 🟢 I2C Test
     - 🟢 PWM/ADC Loopback
     - 🟢 UART Test
     - 📌 MSDC1 Test
     - 📌 GPIO Loopback Test
     - 📌 HDMI TX / eARC
     - 📌 HDMI RX
     - 📌 USB P0, P1, P2
     - 📌 Ethernt
     - 📌 PHY LED / VCORE_PG
     - 📌 PCIe
     - 📌 PWRKEY / RESETB
     - 📌 USB_5V Supply and 3.3V Input
     - 📌 ADC0 - Temp Sensor check
     - 📌 Wi-Fi radio calibration
     - 📌 BT

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
