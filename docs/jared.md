# Jared

## W724

## Smart 3

### Tethering

### Firmware release

- 5.0.001.1 (scheduled on 18/July)
     - ✅ [6/23] RC1~3 prepared
     - ✅ [6/27] RC4 prepared
     - ✅ 20520 [SIP] CSeq number increased not within dialog but over all dialogs (adia) 23f0fdefb
     - ✅ 20549 A very unusual time stamp appears under Network / Mesh settings / Problem handling / Restart. (Mia) f3eda9fab
     - ✅ 20550 Wrong encryption information is displayed for clients behind a repeater. (Joe) 52464f6dd 218487876
     - ✅ 20579 [IVA4][GUI] Optimization of the change request smart 3 2022-1255 (Ben) 72e585f1b
     - ✅ 20581 [USB Tethering] The GUI hangs up during the fallback from the cellular network to DSL (Mia) 6cf3bc205
         - ✅ [06/15] acba0a6 [Smart3][GUI][HPQC/20581] an error message displays after a timeout of 30 seconds from the cellular network to DSL by Mia
         - ✅ [06/15] 1d10e01 [Smart3][GUI][HPQC/20581] an error message displays after a timeout of 30 seconds from the cellular network to DSL .. cont by Mia
     - ✅ 20226 [Smart3 HDSM14] sysfs reports wrong speeds for Gigabit Ethernet connections
         - ✅ [6/21] e54d19a - [Smart3][CloudCheck] Update the CCAPI header file (version: 1.34.1)
         - ✅ [6/21] 0d6be36 - [Smart3][CloudCheck] Update the CCAPI header file (version: 1.41.0) (4 weeks ago) <Bryant_Yeh>
         - ✅ [6/21] 7e5dd22 - [Smart3][CloudCheck] Implement LAN data collection CCAPI (4 weeks ago) <Bryant_Yeh>
         - ✅ [6/21] 048cdc0 - [Smart3][CloudCheck] Update capi_test binary (R3.2.13) (4 weeks ago) <Bryant_Yeh>
         - ✅ [6/21] ae36617 - [Smart3][CloudCheck] Add version in CC_GetEthInterfaceInfo (3 weeks ago) <Bryant_Yeh>
     - ✅ 20560 [HDSM][ARC][Smart 3 Drop 25] CC_GetMeshStaInfo failure , unknown MAC
         - ✅ [6/21] 8ebd324 - [Smart3][CloudCheck][HPQC:20560]CC_GetMeshStaInfo failure , unknown MAC (4 weeks ago) <louis_wang>
   	     - ✅ [6/27] 09cdac5 [Smart3][CloudCheck][HPQC:20560]CC_GetMeshStaInfo failure , unknown MAC - cont
     - ✅ 20580 [HDSM][ARC][Smart3] Connected devices via Wifi are not shown in Assia GUI
         - ✅ [6/21] 734051d - [Smart3][CloudCheck]Close file lock fd when timed out occur while accessing the lock. (4 weeks ago) <louis_wang>
         - ✅ [6/21] 17374b9 - [Smart3][OWL] Sometime the "/tmp/owl/station" file cannot produce, because using the unmatch file lock description file. (4 weeks ago) <joe_lee>
         - ✅ [6/21] e722d1d - [Smart3][OWL] Fix some client station on /tmp/owl/station doesn't have ip. (11 days ago) <joe_lee>
         - ✅ [6/27] 1b39102  [Smart 3][OWL] About this patch 8e1fbd77a using an error pclist attribute, I change the attribute to PCLIST_ATTR_DHCP_CLT for ethernet static ip.
         - ✅ [6/27] 8e1fbd7 [Smart 3][OWL] When client use ethernet static ip, OWL to get static ip by pclist.
     - ✅ 20583 [HDSM][ARC][Smart 3 HDSM18] Serial number mismatch between CC_GetMeshDevice and CC_GetCpeInfo (Joe) 21c049dab 3cb26b09a
     - ✅ CR 22-1285 Smart 3 New PDF User Manual (20220511) 3acf220e9
     - ✅ 20602 DTCC-313 [HDSM][ARC][Smart3] CC_GetMeshStaInfo may incorrectly report stations as unauthorized/unauthenticated
         - ✅ [6/21] e75a5a4 - [Smart3][CloudCheck][DTCC-313]CC_GetMeshStaInfo may incorrectly report stations as unauthorized/unauthenticated (3 weeks ago) <louis_wang>
     - ✅ 20477 [TR069] WiFi Discs must stop sending HDSM data, if Easy Support has been disabled in HG
         - ✅ [6/21] b11853b - [Smart3][OWL] Fix an issue about ASSIA agent open/close doesn't sync to repeater when disable the easysupport. (6 weeks ago) <joe_lee>
     - extra commit for unexposed defects
         - ✅ [6/21] 3b0dd7f - [Smart 3][OWL] Fix station JSON has no record for the station via Eth connect to HG directly (20 hours ago) <Bryant_Yeh>
         - ✅ [6/21] 96ab848 - [Smart 3][OWL] Fix close tid of mapi_pclist_get (4 hours ago) <Bryant_Yeh>

     - busybox upgrade to 1.34
         - bc595bf - Revert "Revert "[Smart3][BUSYBOX][1.35 Migration] Enable missing busybox config which has been originally enabled in busybox 1.25."" (6 weeks ago) <Jared Huang>
         - 43404c1 - Revert "Revert "[Smart3][BUSYBOX][1.35 Migration] Temporarily disable bootcore to skip musl c lib compile error when bootcore builds busybox."" (6 weeks ago) <Jared Huang>
         - dd7e922 - Revert "Revert "[Smart3][BUSYBOX][1.35 Migration] Disable CONFIG_BUSYBOX_CONFIG_FEATURE_MOUNT_NFS to skip busybox compile error related to mount NFS feature."" (6 weeks ago) <Jared Huang>
         - 4f2a837 - Revert "Revert "[Smart3][BUSYBOX][1.35 Migration] Fix menuconfig forces to use 'busybox-selinux' variant instead of expected default 'busybox' variant."" (6 weeks ago) <Jared Huang>
         - f33edf6 - Revert "Revert "[Smart3][BUSYBOX][1.35 Migration] Mirgrate to openwrt original busybox 1.35.0."" (6 weeks ago) <Jared Huang>
         - 4071489 - [Smart3][busybox] Fix side effect of busybox upgration. ls doesn't support -e anymore. (6 weeks ago) <Jared Huang>

## GRV9519ZWAX44-B-23 (Smart 4 plus)

### Security
	- 🟡 Busybox upgrade to 1.35.0
		- ✅ build S4 Plus engineer firmware requested by CL (done)
		- 🟡 [05/16] Under testing by CL

### Active Service
	- ✅ [06/01] Activated SIP in Router mode, then switch to DSL modem mode, there are lots of "waitting for arc-sip ready" and could not reset to default. The upgradion should not be a factor to cause this problem.
		- ✅ [06/06] Smart 4 Plus: finished. all looking good.
		- 🟢 [06/06] Smart 4 MS: conducting

## VRV9517WAX44 1-B-23 (Smart 4 MS)

### HPQC
	- [HPQC 20290/20291/20292][BBTC][Data] In case the VoIP functionality is deactivated the "Active Services"-list is not updated immediately (reboot necessary)
		- 🟢 [06/16] arc-sip closed udp socket, but netstat still listed it. possible way to speed up the reclaiming of closed port ? Answer: no way to speed up
		- 🚫 [6/21] could not reproduce anymore

### Tethering

### VPN
    - 📌 [6/22] create more than one tunnels on the same smartphone. After connected and disconnected to server. The connection status on HG could be wrong.

## VRV9517WAX44 2-B-H2-23 (Smart 5/RDK)

### Tethering
    - 🟡 study how to fit in the LTE dongle status pulling/notifying
