Weekly status of Protocol Team - CW29, 2022

# States
| Icon | State    |
|------|----------|
| 📌   | ToDo     |
| 🔴   | Critical |
| 🟢   | Ongoing  |
| 🟡   | Pending  |
| 🚫   | Canceled |
| ✅   | Finished |



# Jared

## VRV9510KWAC23-B-23 (W724)

## SC411MAC11-OG (Djingo)
### CVE

## WN9722OAX22-DM (AIOS7.0)
### Driver
 - ✅ Porting Realtek 2.5G Ethernet driver
      > https://arc-conf.arcadyan.com.tw/display/0911866010/patch+kernel+and+config

## VRV9519XWAC44 3-B-23 (Smart 3)
### Misc
### Tethering
### Firmware release
#### 5.0.001.1 (Released on 18/July)
   - ✅ [7/12] RC7 prepare (new bootstrap/awk syntax error)
   - ✅ [7/14] formal firmware prepare
   - ✅ [7/18] Prepare release notes and uploaded to DT SDR.


## GRV9519ZWAX44-B-23 (Smart 4 plus)
### Security
 - 🟡 Busybox upgrade to 1.35.0
   - ✅ build S4 Plus engineer firmware requested by CL (done)
   - ✅ [06/01] Activated SIP in Router mode, then switch to DSL modem mode, there are lots of "waitting for arc-sip ready" and could not reset to default. The upgradion should not be a factor to cause this problem.
   - ✅ [06/06] Smart 4 Plus: finished. all looking good.
   - 🟢 [06/06] Smart 4 MS: conducting
### HPQC
 - 🟢 19414 [Security] Open Port 3702 LAN IPv4/IPv6
      > Could not reprocuce with found firmware 1.0.010.0 and latest 3.0.000.0

	  > grep code tree, wsdd2 open 3702 port, with which the samba service accompanied by.
	  > Means wsdd2 stop when samba service is stoped.

## VRV9517WAX44 1-B-23 (Smart 4 MS)

### Hybrid
 - 🟢 EtherWAN refused to up
   - [7/06] Case 1: doesn't return TRUE during hybrid condition checking in AWD_CheckIsPermitUp(). (JC reported)
     > Add more debug message to check while AWD_CheckIsPermitUp doesn't return TRUE.

     > [7/21] tid issue??

   - [7/07] Case 2: refused due to the previous link down event was ignored. (Morgan reported)
     > DSL down event was conducting, therefore Ethnet down event was ignored.

     > Do usleep and retry.

     > ✅ [7/21] patch commit.

   - [7/07] Case 3: mng_action doesn't take action.
     > AWD_DBG("link_up %s\n", wan_linktype_num_str[WAN_UPLINK_TYPE_ETHERNET]);
     > mng_action("link_up", wan_linktype_num_str[WAN_UPLINK_TYPE_ETHERNET]);

     > debug mng_action ??

   - [7/12] debug AWD_TID invalided

     > Add more debug message in midcore.

     > [7/14] Log with 10M(30M) file size has 6550(106417) times cfg get return MID_FAIL. It could be a generic issue in Midcore function mapi_opt_trans().

     > 🟢 [7/20] fix arc-ipv6 compiling warning, provide test firmware, run over 100 times test loop, still working fine.

 ```
	if(header.act_rsp_code == 0)
		return MID_SUCCESS;

	printf("[MIDCORE-DEBUG]: %s action:[%d], item [%s] return MID_FAIL\n", __FUNCTION__, action, (data)?data:"");
	return MID_FAIL;
 ```

### HPQC
 - [HPQC 20290/20291/20292][BBTC][Data] In case the VoIP functionality is deactivated the "Active Services"-list is not updated immediately (reboot necessary)
   - 🟢 [06/16] arc-sip closed udp socket, but netstat still listed it. possible way to speed up the reclaiming of closed port ? Answer: no way to speed up
   - 🚫 [6/21] could not reproduce anymore
### Tethering
### Active Service
### VPN
 - 📌 [6/22] create more than one tunnels on the same smartphone. After connected and disconnected to server. The connection status on HG could be wrong.
### Smarthome
 - ✅ [7/13] update bootstrap to 2.3.20 (due to awk command syntax)
      > Currently, v1.x.x still used.
	  > When upgrade busybox to 1.35.0, shuld switch to bootstrap v2.x.x by enabling`CONFIG_QIVICON_BOOTSTRAP_2=y` in .config
 - ✅ [7/18] prepare test images(Plus/A/B) and provide to Todor.
 - ✅ [7/20] update bootstrap to 2.3.21 (bootstrap compiled using Golang 1.18.4, which contains many security fixes)
### HDSM
 - 🟢 dsl ccapi readness
      > ✅ Sync code from Smart 3 and let it buildable.

      > 🟢 check api readness.

### Misc
 - 🟢 openssl upgrade issue
      > [7/20] openssl(1.1.1i) from Brcm SDK was not installed to rootfs. openssl(1.1.1g) from ALDK package was installed to rootfs.

## VRV9517WAX44 2-B-H2-23 (Smart 5/RDK)

### Tethering
#### 🟢 Build Tethering software stacks
 - 🔴 [7/05] Build usbmuxd recipe for iPhone
     > skip due to *GPL-3.0 or GPL-2.0*

#### Implementation
 - 🟡 study how to fit in the LTE dongle status pulling/notifying
   - HAL client/Server to detect tethering link state
     > use inotify to watch /sys/class/net, if new interface, e.g., usb0 created, new folder /sys/class/net/usb0 was created, too.

	 > ✅ [7/14] inotify PoC failed, it doesn't support sysfs pseudo fs.

     > 🟢 [7/14] try to use libudev.

     > get Class/SubClass/Protocol via file /sys/class/net/usb0/device/bInterfaceClass, bInterfaceSubClass, bInterfaceProtocol.

   - tethering ccsp component and data model
   - wanmanager policy modification

#### Questions
   - 📌 [7/05] Try to turn on usbmuxd for iPhone
        > usbmuxd was skipped: it has incompatible license(s): *GPL-3.0 or GPL-2.0*

        > How to enable GPL-3.0 recipes?

   - ✅ [6/28] wanmanager policy
		> Currently, wan manager enforces AUTOWAN_MODE policy
        > s_xsun: actually we are defining the new DM of WanManager... I guess there will be new Policies to be supported. But to be honest I have no idea about the usb tethering now... because it is not yet supported by RDK-F at all.

# Sophia

## VRV9519XWAC44 3-B-23 (Smart 3)

- GPL release
    - 📌 Release SOP document

## GRV9519ZWAX44-B-23 (Smart 4 plus)

- ErP issues are encountered in the DT lab (GPON and xDSL)
    - 📌 Provide the ErP measurement results for DT review
- Reboot issue
    - 🟡 DUT reboot when performing the ppp link up and link down repeatedly.
        - Change sleep time to 10 sec in the arc_email_push_system_report.sh, then this issue isn't observed.
- Issues report in 2.6.000.0 (21.2p1 + 43684 chip) from EIT
    - 🟡 Error message: rdd dhd helper: release of not allocated SKB: idx=544, ptr=1287
    	- Test setup: Five RE connects to GW, then some WLAN clients connect to GW or RE.
    	- Will reopen CS00010013691 after below issue is fixed.
    - 🟢 [CSP CS00012250548] WLAN client can ping www.google.com, but it cannot browse video via YouTube
    	- 🟢 Test new image in the same environment (work fine, uptime: 14 days)
- Issue report from Benedikt
	- 🟢 Unable to handle kernel paging request at virtual address ffffffc13ea9cfff
		- PC is at free_block+0x110/0x178
		- When CONFIG_DEBUG_SLAB is enabled, slab detected double free in cache 'UDP', objp ffffffc02809e780
		- 🟢 Test image with CONFIG_DEBUG_OBJECTS enabled.
- DECT registration for one of the Smart 4 Plus (6715x) samples is not working.
	- ✅ The board data "DECT RFPI" is wrong. (It is correct during the MT test)
	- 📌 When running the shipping firmware, it is not allowed to overwrite the board data of DECT RFPI, meanwhile, we will record the RFPI value if there is module attempting to overwrite it.
	- 📌 SHOULD ALL other board data switch to RO when switching to shipping firmware?

### Formal release
- [8/01] 3.0.001.0
	- ✅ UI simulation 2.19.204
	- 📌 New user manual
	- 📌 HoC 342: Correction of typo of the syslog event G103
	- 📌 Hoc 343 to 345: Changed "Included in extended syslog only" status to “No” of the syslog event G102, G104 and G105.
	- 📌 19414 [Security] Open Port 3702 LAN IPv4/IPv6
	- 📌 20557 [IPPBX] Internal call transfer to or from IPPBX extension does not work (BT-029)
	- 📌 20302 [Multicast Forwarding] Multicast packets are not forwarded if the router uses GPON for WAN access
	- 📌 20460 [BBTC][E-mail Push] E-Mail push for caller list onyl is not send in case of activation
	- 📌 20610 [HDSM][ARC][Smart4Plus HDSM14] CC_GetMeshDevice may mark connected stations as disassociated
	- ✅	20675 [BBTC][VPN][Internet-Access] When triggering IP address change by an connected VPN client (Wireguard) the Speedport does not come back online
	- 📌 20676 [GUI] Designation of registered DECT handset after update firmware of default


## VRV9517WAX44 1-B-23 (Smart 4 Typ A)

- Reboot issue
    - 🟡 The HW reboot happened when performing the ADSL link up/down test every 2 minutes.
- Apply ip6tables rule failed when using 3.0.000.0 formal firmware
	- 🟢 Sync patches relating to lock mechanism from git.netfilter.org, enable -w by default and test it.
- There is no IPv6 RA accept rule when performing DSL and LTE up/down test
	- ✅ arc-ipv6cp-up-firewall-cfg.sh calls ip6tables-restore command without --noflush option, so that RA rule is flushed. After that, RA rule isn't recovered anymore.

## VRV9517WAX44-1-B-23: Typ B (Smart4 TypeB)

- 🟡 [BUGFIX/JIRA/SGCM-126] DUT didn’t send the PADI to server after DUT restarted. (WAN type: Ethernet)
    - Eth0.7 interface didn’t up, moreover, if I un-plug and plugin WAN line, DUT didn’t detect this event. Try to wait more 20ms for PHY hardware reset. (Fail)


## VRV9517ZWAX34-A-SP (Spark)
- 📌 [JIRA 24398-119] When a range of ports (private and public) is set, the port mappings do not match.

## WA7374442-TS (Telus Boost2.1)
- 📌 Service blocking list
- ✅ DoS protection
- ✅ DMZ
- ✅ Port Forwarding
- 🟢 Port triggering
- ✅ NAT
- 📌 Integration test with GUI

## DT-EU

- 📌 wanManager study

# Terry

## Smart 4 plus

> GRV9519ZWAX44-B-23

[Confluence link - smart4 framwork](https://arc-conf.arcadyan.com.tw/pages/viewpage.action?pageId=144015859&preview=/144015859/144015958/smart4_openwrt_framework.pdf#Note(PDF)-Report:)

[Confluence link - smart4 firewall mechanism](https://arc-conf.arcadyan.com.tw/pages/viewpage.action?pageId=144015859&preview=/144015859/145490201/smart4_firewall_mechanism.pdf#Note(PDF)-Report:)



## Others

> Yocto Project

[Confluence link - yocto study](https://arc-conf.arcadyan.com.tw/pages/viewpage.action?pageId=144015859&preview=%2F144015859%2F145490987%2Fstudy_yocto.pdf)

- ✅ (W29) Build yocto `qemux86-64` image.
- ✅ (W29) Run `qemux86-64` at `qemu` emulator.

- ✅ (W29) Build yocto `raspberrypi3-64` image.
- ✅ (W29) Run `raspberrypi3-64` at `raspberrypi3 model B+` device.

- ✅ (W29) Build custom package `hello-world` in `qemux86-64` and `raspberrypi` image.
- ✅ (W29) Verify `hello-world` application work properly.
- 📌 Learn how to add `patch`.
- 📌 Learn how to `debug`.
- 📌 Learn firewall mechanism in poky reference distribution. 






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


# Archived - 2022H2
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

#### Misc
  - busybox upgrade issues
    - ✅ `ls` doesn't support -e anymore.
    - ✅ [7/06] Fix `awk` syntax issue
      > - echo ${IF_ADDR} | awk '{FS="."} {print $2}'
	  > + echo ${IF_ADDR} | awk 'BEGIN {FS="."}; {print $2}'
    - ✅ [7/08] Query if smarthome bootstrap should also update due to `awk ORS...`
 
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

#### Active Service
  - ✅ [7/13] Fix active service lists for WAN/LAN are blanked when WAN interface is down

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

## Sophia

### VRV9519XWAC44 3-B-23 (Smart 3)
- Disable OpenWrt failsafe mode

### GRV9519ZWAX44-B-23 (Smart 4 plus)
- Disable OpenWrt failsafe mode
- Don't install the dropbear binary in the firmware
- Issues reported from factory
    - Provide the explanation for the Display, LED and UI behavior when user hasn't enter ppp setting and he can access the Internet.
    - Get PHY ID failed (0x0000) after the PDL is executed
- 3.0.000.0 formal release

### VRV9517ZWAX34-A-SP (Spark)
- [JIRA 24398-22][Moderate] Existed IPv4 traffic didn't stop when connected client entered blocked time of MAC filter.
- LAN client cannot establish PPTP tunnel to server if the GRE Learning are enabled.

## Terry

> The naming rule of the archive shows below: 
> **\[\<Action\>\]\[\<Category\>\]\[\<Module\>\]** 


###  Smart 4 plus

>GRV9519ZWAX44-B-23

\[Add\]\[Feature\]\[DHCP\]

- (W25) Catch DHCP option 43 content. 
  - (W25) Method A: standalone application way
    - (W23) New a OpenWrt package, named `arc_dhcp_option_catcher`.
    - (W23) Fix interface issue. ( add interface option to communicate with DHCP server )
    - (W25) Push git commit 
      `94cc671a16 [Smart4Common][DHCP] Add new application "arc_dhcp_catcher" to catch DHCP option 43 content`
  - (W25) Method B: busybox way
    - (W22) New a busybox patch, named `600-add-udhcpc-trimmed-applet.patch`, to new applet `trimmed_dhcpc`.
    - (W23) Fix interface issue. ( add interface option to communicate with DHCP server )
    - (W25) Push git commit 
      `8beaeb70b0 [Smart4Common][busybox/udhcpc] Add busybox applet to catch DHCP option 43 content`



\[Maintain\]\[Mechanism\]\[Busybox\]

[Confluence Link](https://arc-conf.arcadyan.com.tw/pages/viewpage.action?pageId=144015859&preview=/144015859/145490210/study_busybox_applet.pdf)

- (W23) Replace the overwrite way with the patch way in the busybox package.
  <sub>overwrite way is copying all files from `package/busybox/src.dt` folder to `build-dir/target*/busybox-*/`</sub>
  - (W23) New a busybox patch, named `601-replace-src.dt.patch`



\[Learn\]\[Development\]\[Utils\]

- (W24) Study new OpenWrt packet by Autotools, a kind of build system.
  <!-- [build system overview] https://julienjorge.medium.com/an-overview-of-build-systems-mostly-for-c-projects-ac9931494444 -->
- (W24) Study GDB core dump file.
- (W24) Install the GDB program in the Smart4 device via TFTP.
- (W25) Study Git manipulation. (e.g. push, pull, rebase, merge, format-patch, ...)



\[Learn\]\[firewall\]\[background\]

[Confluence Link](https://arc-conf.arcadyan.com.tw/pages/viewpage.action?pageId=144015859&preview=/144015859/145490201/smart4_firewall_mechanism.pdf)

- (W26) Study the firewall background knowledge.
  - (W26) Study the iptables suite of Netfilter framework through Smart4 codebase.

-  (W28) Trace firewall mechanism of Smart4. 

  - (W27) OpenWrt-based mechanism ( `etc/firewall.usr` and  `etc/config/firewall` )

  - (W28) Arcadyan mechanism ( `httpd` )



\[Learn\]\[Yocto\]\[background\]

[Confluence link](https://arc-conf.arcadyan.com.tw/pages/viewpage.action?pageId=144015859&preview=%2F144015859%2F145490987%2Fstudy_yocto.pdf)

- (W26) Study Yocto project background.
- (W28) Setup Yocto build environment by docker. 
  github: https://github.com/crops/poky-container 
  docker hub: https://hub.docker.com/r/crops/poky
- (W28) Build Yocto project image by `bitbake core-image-minimal`
- (W28) Run Yocto project in emulator by `runqemu qemux86-64 nographic`



\[Learn\]\[WSL2\]\[background\]

[Confluence link](https://arc-conf.arcadyan.com.tw/pages/viewpage.action?pageId=144015859&preview=/144015859/145490981/study_wsl2.pdf)

- (W26) Study WSL2 (Windows Subsystem for Linux version 2)
- (W28) Display wsl2 UI application on host. ( via X server )

## Goat

### WN9722OAX22-DM (AIOS7.0)

- [06/14] Create project "DENON AIOS7.0" and new "AIOS7.0 info" on confluence.
- [06/20] Discuss whole test plan with Edison.
- [06/14] Test all script by commands of AIOS6.5.
- [06/28] Update jira issues
    - How and where should we write broad data.
        - New partition will be provided by SU.
    - What type of dual image will be implemented.
        - SU will provide CPE like dual image machanism. 
- [06/30] Prepare AIOS7.0 build code environment and try to build code.
- [06/14] Create git repo of AIOS seris on gitea server.
    - AIOS6.5 : Follow and update with codebase provided by Wind. (Including history)
    - AIOS7.0 : Trace codebase provided by MTK and our develop.
        - Create four repo. (meta-arcadyan, set_env, script, manifest)
        - Just trace our layer and script on gitea server not MTK's.
        - Modify manifest in xml to clone both MTK's and ARC's code via "repo init" command.
- [07/01] Add and update document on confluence.
    - Change name "Denon AIOS7.0" to "Denon AIOS series" and update info inside.
    - Seprate AIOS6.5 / AIOS7.0 to two pages.
    - Update "Denon AIOS6.5" document.
    - Add "Denon AIOS7.0" document.
    - [AIOS series](https://arc-conf.arcadyan.com.tw/pages/viewpage.action?pageId=141329089)
    - [AIOS6.5](https://arc-conf.arcadyan.com.tw/display/0911866010/AIOS6.5)
    - [AIOS7.0](https://arc-conf.arcadyan.com.tw/display/0911866010/AIOS7.0)
 - [07/07] Design and implement architecture of AIOS7.0.
    - Add Arcadyan's layer into image.
    - Add package group to store recipes from Arcadyan.

### Common

#### Docker builder maintain and enhance

- [06/06] Review git commit log.
- [06/06] Delete duplicate path in commands.
- [06/06] Merge two create container action cases to one.
    -  Use "add-host" replace host mode network.
- [06/06] Add new platform to builder.
    - MTK
    - AIOS7.0
- [06/07] Detect if toolchains are installed when create container.
- [06/14] Fix smart4 platform "zlib" multi-version problem.
    - New version of pip will check if there existed muti-version package, disable it.
- [06/14] Let builder can be executed anywhere not only in builder folder.

#### Utility
- [07/07] Fix cp_check bug.
    - Status will not be updated to latest automatically if source or target branch exist on local. Result will go wrong when either branch is not latest. Add warning message let user know status of branch and terminate compare process.


# Project lists

  | Arc Project Name            | a.k.a         | Customer |
  |-----------------------------|---------------|----------|
  | SC411MAC11-OG               | Djingo        | DT       |
  | VRV9510KWAC23-B-23          | W724          | DT       |
  | VRV9519XWAC44 3-B-23        | Smart 3       |          |
  | GRV9519ZWAX44-B-23          | Smart 4 Plus  | DT       |
  | VRV9517WAX44 1-B-23         | Smart 4 Typ A | DT       |
  | VRV9517WAX44-1-B-23: Typ B  | Smart4 TypeB  | DT       |
  | VRV9518BAAX24-B-2C          | DT-EU         |          |
  | VRV9517WAX44 1-B-23:RDK-POC | Smart 5       |          |
  | VRV9517ZWAX34-A-SP          | SPARK         |          |
  | WN9722OAX22-DM              | AIOS7         |          |


