## Jared

### SC411MAC11-OG (Djingo)

#### CVE
- SAH queried CVE issues about Aggregation and Fragmentation Attacks Against Wi-Fi
  > CVE-2020-24586, CVE-2020-24587, CVE-2020-24588, CVE-2020-26139, CVE-2020-26140, CVE-2020-26141, CVE-2020-26142, CVE-2020-26143, CVE-2020-26144, CVE-2020-26145, CVE-2020-26146, CVE-2020-26147, CVE-2020-11264, CVE-2020-11301

  > [7/01] responsed to SAH the patch is already pushed on 19/05/2021.

### VRV9519XWAC44 3-B-23 (Smart 3)
#### Firmware release
##### 5.0.001.1 (scheduled on 18/July)
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

   - ✅ [7/4] busybox upgrade to 1.34
       - bc595bf - Revert "Revert "[Smart3][BUSYBOX][1.35 Migration] Enable missing busybox config which has been originally enabled in busybox 1.25."" (6 weeks ago) <Jared Huang>
       - 43404c1 - Revert "Revert "[Smart3][BUSYBOX][1.35 Migration] Temporarily disable bootcore to skip musl c lib compile error when bootcore builds busybox."" (6 weeks ago) <Jared Huang>
       - dd7e922 - Revert "Revert "[Smart3][BUSYBOX][1.35 Migration] Disable CONFIG_BUSYBOX_CONFIG_FEATURE_MOUNT_NFS to skip busybox compile error related to mount NFS feature."" (6 weeks ago) <Jared Huang>
       - 4f2a837 - Revert "Revert "[Smart3][BUSYBOX][1.35 Migration] Fix menuconfig forces to use 'busybox-selinux' variant instead of expected default 'busybox' variant."" (6 weeks ago) <Jared Huang>
       - f33edf6 - Revert "Revert "[Smart3][BUSYBOX][1.35 Migration] Mirgrate to openwrt original busybox 1.35.0."" (6 weeks ago) <Jared Huang>
       - 4071489 - [Smart3][busybox] Fix side effect of busybox upgration. ls doesn't support -e anymore. (6 weeks ago) <Jared Huang>

#### Tethering
  - ✅ [6/22] Add support for more rndis_host device, e.g., HTC M8
  - ✅ [6/22] Fix GUI may hang if tethering is disabled during count down to tethering.
    > Reset remaining countdown second to zero.
  - ✅ [7/05] vlan8 disappear from release 5.0.001.0
    > 5.0.001.0-r4 OKAY, 5.0.001.0-r5 NG/ commit 5715f37 - [Smart3][Tethering][DTQC/20440] The router terminates the USB tethering connection without waiting for a successful PPPoE session establishment

    > [7/06] Fixed and included in 5.0.001.1 RC7

### GRV9519ZWAX44-B-23 (Smart 4 plus)
  - email notification failure with port 465 with commit 2f43cb5
    > [05/19] reported by CL

    > [05/24] Fixed by adding more signature algorithms for TLS 1.3.

#### HPQC
  - 20079 [BBTC][VPN][Internet-Access] When triggering IP address change by an connected VPN client (Wireguard) the Speedport does not come back online
  - 20122 The Router can be incapacitated via a VPN connection
    > When "Change IP address" pressed, browser send "disable" and "online" to CGI. But "online" never reach httpd due to Internet is disconnected.

### VRV9510KWAC23-B-23 (W724)
  - Busybox CVE issues
    > The busybox has reported with 14 new vulnerabilities. W724 uses busybox 1.16.2 that was affected by 4. But the applet hash was not compiled and installed. Therefore, we need to fix 3 vulnerabilities which are CVE-2021-42378/42385/42386. They are all releated to awk. So porting 1.34.0 awk to busybox

### VRV9517WAX44 1-B-23 (Smart 4 MS)
#### Tethering
  - ✅ [6/22] Fix GUI may hang if tethering is disabled during count down to tethering.
    > Reset remaining countdown second to zero.

#### VPN
  - ✅ [6/23] Fix GUI may hang if tethering is disabled during count down to tethering.

#### Hybrid
  - ✅ Hybrid reorder fine tune
       - 🟢 [05/23] habond.c kernel module study
            - ✅ [06/09] skb buffer flow in RX direct - from dev to gre_reorder
            - ✅ [06/16] skb buffer flow in TX direct (IPv6/IPv4)
            - ✅ [06/09] What's RCU (Read-Copy-Update) ?
            - ✅ [06/09] gre_reorder() tracing
            - ✅ [06/15] reorder_buffer_timeout_handler() and reorder_buffer_calculate_timeout() tracing
            - ✅ [06/15] Documentation https://arc-conf.arcadyan.com.tw/display/0911866010/package+flow
  - ✅ [06/16] backup sequence num in ring when timeout and dump via proc file
       - ✅ [06/15] implementation is finish.
       - 🚫 Wait for the test result by CL.
       - 🚫 [6/22] case closed due to function already exist.
  - ✅ some other possible enhancements
       - ✅ [06/16] tripple definition of ""struct gre_o_seqno" in multiple c files, move to include/net/ip_tunnels.h
       - ✅ [06/15] During getting configure items, tid data type is "int", it SHOULD be "void *"!?
       - ✅ [06/15] fix some compiling warning.
       - 📌 rcu_read_lock/rcu_read_unlock, hook function pointer update with lock


### VRV9517WAX44 2-B-H2-23 (Smart 5/RDK)

#### Tethering

##### ✅ Build RDK-F code
 - ✅ [6/29] build RDK-F with rdk-factory docker

##### 🟢 Build Tethering software stacks
 - ✅ [6/30] Try to turn on some kernel modules (mii/usbnet/usbcore/cdc_ether/rndis_host/ipheth)
 - ✅ [7/05] Build usb-modeswitch, usb-modeswitch-data recipe for LTE MiFi device
