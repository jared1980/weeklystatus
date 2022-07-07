# Goat

## WN9722OAX22-DM (AIOS7.0)
 - ✅ [06/30] Prepare AIOS7.0 build code environment and try to build code.
 - ✅ [06/14] Create git repo of AIOS seris on gitea server.
     - ✅ AIOS6.5 : Follow and update with codebase provided by Wind. (Including history)
     - ✅ AIOS7.0 : Trace codebase provided by MTK and our develop.
         - ✅ Create four repo. (meta-arcadyan, set_env, script, manifest)
         - ✅ Just trace our layer and script on gitea server not MTK's.
         - ✅ Modify manifest in xml to clone both MTK's and ARC's code via "repo init" command.
 - ✅ [07/01] Add and update document on confluence.
     - ✅ Change name "Denon AIOS7.0" to "Denon AIOS series" and update info inside.
     - ✅ Seprate AIOS6.5 / AIOS7.0 to two pages.
     - ✅ Update "Denon AIOS6.5" document.
     - ✅ Add "Denon AIOS7.0" document.
 - ✅ [07/06] Create new jira ticket.
     - ✅ Ask SU to provide some files to keep synchronize.
         - 🟡 Bootloader of Little kernel (if SU modify)
         - 🟡 Device tree (ensure pin mapping right)
         - 🟡 Flash partition (ensure we write board data in right place)
         - 🟡 Kernel config (if SU modify)
 - 🟢 [06/24] Find way to write broad data to specific partition.
     - 🟡 SU will provide special partition that is available in the eMMC device. (RPMB)
 - 🟢 [07/07] Prepare master file to CNC. (7/15)
     - ✅ Prepare environment.
     - 🟢 Try whole process to create master file via AIOS6.5.
     - 🟡 SU will provide AIOS7.0 FW.
 - 🟢 [07/07] Try script of AIOS6.5 on AIOS7.0

 - 🟡 [06/07] Study document and review git commit log.
 - 🟡 [06/20] Check difference of AIOS6.5 / AIOS7.0 (partition, uboot, little kernel, fastboot, adb...)

## Common

### Utility
 - ✅ [07/06] Fix cp_check bug.
     - Status will not be updated to latest automatically if source or target branch exist on local. Result will go wrong when either branch is not latest. Add machanism to update branch to latest everytime run this script.

### CCAPI

 - 🟢 [06/30] Study document & review code.

### Docker builder maintain and enhance
