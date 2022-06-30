Weekly status of Protocol Team - CW26, 2022

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
    	- ✅ Sync patch.version
    	- 🟢 Test new image in the same environment
- Issue report from Benedikt
	- 🟢 Unable to handle kernel paging request at virtual address ffffffc13ea9cfff
		- PC is at free_block+0x110/0x178
		- 🟢 Analyze the panic log with CONFIG_DEBUG_SLAB is enabled.
- Issue report from factory
	- 5GHz 11AX 160MHz RX PER test failed (43684 + 21.2p1).
		- ✅ Prepare SOP for MFG firmware downgrade and recovery.
			- 5GHz 11AX 160MHz RX PER test pass with 43684 + 19.1.1
		- Tim has created CSP and co-worked with BRCM.
- ✅  Prepare 3.0.000.0-RC3~RC6 and provide to EIT.

### Formal release
- [7/04] 3.0.000.0
	- ✅ New UI simulation 2.19.198
	- ✅ CR 22-1275 Start the integrated iPerf3 server via Display V2
	- ✅ CR 22-1253 Smart Home changes in UI
	- ✅ New user manual (version: 01.06.2022)
	- ✅ Change to environment variable to prevent ASSIA agent to open LAN side port
	- 🚫 20341 [BQFN] Unexpected reboot of HG in long term test setups
		- DT agreed to postpone for later release.
	- ✅ 20443 [IPPBX] Missing audion during incoming calls due to false transfer of sdp of internal SIP client in 18x
	- ✅ 20495 [IVA4][SIP] NIMS: Route Header / Service Route Smart 4
	- ✅ 20510 [IPPBX] IPPBX CSeq handling in multi dialog call not correctly
	- ✅ 20554 [IPPBX] RTP of 1st dlg not transferred to IPPBX extension after switch back from 2nd dlg-LAN
	- ✅ 20576 [GUI] Incorrect WAN port status in mini UI while using xDSL modem mode
	- ✅ 20595 [BQFN] IPv6 prefix change impact LAN to WAN traffic (RC1)
	- ✅ 20596 [BQFN] RTT impact and throughput drops on LAN port 2 (RC1)
	- ✅ 20582 Smart 4 (type A and B): No outgoing telephony when 1st number is deactivated (BT-030/NIMIC-0018112362)
	- ✅ 20457 [HDSM][ARC][SMART4 PLUS] Agent on connected MESH repeater is killed during backhaul changes

- [8/01] 3.0.001.0
	- 📌 20557 [IPPBX] Internal call transfer to or from IPPBX extension does not work (BT-029)
	- 📌 20302 [Multicast Forwarding] Multicast packets are not forwarded if the router uses GPON for WAN access


## VRV9517WAX44 1-B-23 (Smart 4 Typ A)

- Reboot issue
    - 🟡 The HW reboot happened when performing the ADSL link up/down test every 2 minutes.
- Apply ip6tables rule failed when using 3.0.000.0 formal firmware
	- 🟢 Sync following patches from git.netfilter.org, enable -w by default and test it
		- add optional [seconds] argument to -w
		- use flock() instead of abstract unix sockets
		- Add an interval option for xtables lock wait
		- do not lock again and again if "-w" option is not specified
		- using the blocking file lock request when we wait indefinitely
		- set the path of the lock file via a configure option.
		- move XT_LOCK_NAME from CFLAGS to config.h.
		- remove duplicated argument parsing code
		- iptables-restore: support acquiring the lock.
		- insist that the lock is held

## VRV9517WAX44-1-B-23: Typ B (Smart4 TypeB)

- 🟡 [BUGFIX/JIRA/SGCM-126] DUT didn’t send the PADI to server after DUT restarted. (WAN type: Ethernet)
    - Eth0.7 interface didn’t up, moreover, if I un-plug and plugin WAN line, DUT didn’t detect this event. Try to wait more 20ms for PHY hardware reset. (Fail)


## VRV9517ZWAX34-A-SP (Spark)

## WA7374442-TS (Telus Boost2.1)
- 📌 Service blocking list
- 📌 DoS protection
- 📌 DMZ
- 📌 Port Forwarding
- 📌 Port triggering
- 📌 NAT

## DT-EU

- 📌 wanManager study

# Terry

## Smart 4 plus

> GRV9519ZWAX44-B-23



## Others

- ✅ (W24) Study new OpenWrt packet by Autotools, a kind of build system.
  <!-- [build system overview] https://julienjorge.medium.com/an-overview-of-build-systems-mostly-for-c-projects-ac9931494444 -->
- ✅ (W24) Study GDB core dump file.
- ✅ (W24) Install the GDB program in the Smart4 device via TFTP.
- ✅ (W25) Study Git manipulation. (e.g. push, pull, rebase, merge, format-patch, ...)
- 🟢 (W26) Study the firewall background knowledge.
  - 🟢 (W26) Study the iptables suite of Netfilter framework through Smart4 codebase.
- 🟢 (W26) Study Yocto project background.
- 🟢 (W26) Study WSL2 (Windows Subsystem for Linux version 2) 

# Goat

## WN9722OAX22-DM (AIOS7.0)

 - 🟢 [06/30] Prepare AIOS7.0 build code environment and try to build code.
 - 🟢 [06/14] Create git repo of AIOS seris on gitea server.
     - ✅ AIOS6.5 : Follow and update with codebase provided by Wind. (Including history)
     - 🟢 AIOS7.0 : Trace codebase provided by MTK and our develop. 
 - 🟢 [06/24] Find way to write broad data to specific partition.
     - 🟡 SU will provide special partition that is available in the eMMC device (RPMB).
 - ✅ [06/28] Update jira issues
     - ✅ How and where should we write broad data.
         - New partition will be provided by SU.
     - ✅ What type of dual image will be implemented.
         - SU will provide CPE like dual image machanism.
         
 - 🟡 [06/07] Study document and review git commit log.
 - 🟡 [06/20] Check difference of AIOS6.5 / AIOS7.0 (partition, uboot, little kernel, fastboot, adb...)


## Common

### CCAPI

 - 🟢 [06/30] Study document & review code.

### Docker builder maintain and enhance


# Archived - 2022H2
## Jared

### VRV9519XWAC44 3-B-23 (Smart 3)
#### Tethering
	- ✅ [6/22] Add support for more rndis_host device, e.g., HTC M8
	- ✅ [6/22] Fix GUI may hang if tethering is disabled during count down to tethering.
	> Reset remaining countdown second to zero.

### GRV9519ZWAX44-B-23 (Smart 4 plus)
	- email notification failure with port 465 with commit 2f43cb5
		- 📌 [05/19] reported by CL
		- ✅ [05/24] Fixed by adding more signature algorithms for TLS 1.3.

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

## Sophia

### VRV9519XWAC44 3-B-23 (Smart 3)
- Disable OpenWrt failsafe mode

### GRV9519ZWAX44-B-23 (Smart 4 plus)
- Disable OpenWrt failsafe mode
- Don't install the dropbear binary in the firmware
- Issues reported from factory
    - Provide the explanation for the Display, LED and UI behavior when user hasn't enter ppp setting and he can access the Internet.
    - Get PHY ID failed (0x0000) after the PDL is executed

### VRV9517ZWAX34-A-SP (Spark)
- [JIRA 24398-22][Moderate] Existed IPv4 traffic didn't stop when connected client entered blocked time of MAC filter.
- LAN client cannot establish PPTP tunnel to server if the GRE Learning are enabled.

## Terry

> The naming rule of the archive shows below: 
> **\[\<category\>\]\[\<module\>\]** 


###  Smart 4 plus

>GRV9519ZWAX44-B-23

\[Feature\]\[DHCP\]

- Catch DHCP option 43 content. 
  - Method A: standalone application way
    - (W23) New a OpenWrt package, named `arc_dhcp_option_catcher`.
    - (W23) Fix interface issue. ( add interface option to communicate with DHCP server )
    - (W25) Push git commit 
      `94cc671a16 [Smart4Common][DHCP] Add new application "arc_dhcp_catcher" to catch DHCP option 43 content`
  - Method B: busybox way
    - (W22) New a busybox patch, named `600-add-udhcpc-trimmed-applet.patch`, to new applet `trimmed_dhcpc`.
    - (W23) Fix interface issue. ( add interface option to communicate with DHCP server )
    - (W25) Push git commit 
      `8beaeb70b0 [Smart4Common][busybox/udhcpc] Add busybox applet to catch DHCP option 43 content`

\[Mechanism\]\[Busybox\]

- (W23) Replace the overwrite way with the patch way in the busybox package.
  <sub>overwrite way is copying all files from `package/busybox/src.dt` folder to `build-dir/target*/busybox-*/`</sub>
  - (W23) New a busybox patch, named `601-replace-src.dt.patch`

## Goat

### WN9722OAX22-DM (AIOS7.0)

 - [06/14] Create project "DENON AIOS7.0" and new "AIOS7.0 info" on confluence.
 - [06/20] Discuss whole test plan with Edison.
 - [06/14] Test all script by commands of AIOS6.5.

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

