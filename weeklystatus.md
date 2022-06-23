📌 : ToDo
🔴 : critical
🟢 : ongoing
🟡 : pending
🚫 : canceled
✅ : finished

# Jared

## W724

## Smart 3

### Firmware release

- 5.0.001.1 (not scheduled yet)

     - ✅ 20520 [SIP] CSeq number increased not within dialog but over all dialogs (adia) 23f0fdefb
     - ✅ 20549 A very unusual time stamp appears under Network / Mesh settings / Problem handling / Restart. (Mia) f3eda9fab
     - ✅ 20550 Wrong encryption information is displayed for clients behind a repeater. (Joe) 218487876
     - ✅ 20579 [IVA4][GUI] Optimization of the change request smart 3 2022-1255 (Ben) 72e585f1b
     - ✅ 20581 [USB Tethering] The GUI hangs up during the fallback from the cellular network to DSL (Mia) 6cf3bc205
         - ✅ [06/15] acba0a6 [Smart3][GUI][HPQC/20581] an error message displays after a timeout of 30 seconds from the cellular network to DSL by Mia
         - ✅ [06/15] 1d10e01 [Smart3][GUI][HPQC/20581] an error message displays after a timeout of 30 seconds from the cellular network to DSL .. cont by Mia
     - 📌 20226 [Smart3 HDSM14] sysfs reports wrong speeds for Gigabit Ethernet connections 
     - 📌 20560 [HDSM][ARC][Smart 3 Drop 25] CC_GetMeshStaInfo failure , unknown MAC
     - 📌 20580 [HDSM][ARC][Smart3] Connected devices via Wifi are not shown in Assia GUI
     - ✅ 20583 [HDSM][ARC][Smart 3 HDSM18] Serial number mismatch between CC_GetMeshDevice and CC_GetCpeInfo (Joe) 21c049dab 3cb26b09a
     - ✅ CR 22-1285 Smart 3 New PDF User Manual (20220511) 3acf220e9

## GRV9519ZWAX44-B-23 (Smart 4 plus)

- Hybrid reorder fine tune
    - 🟢 [05/23] habond.c kernel module study
       - ✅ [06/09] skb buffer flow in RX direct - from dev to gre_reorder
       - ✅ [06/16] skb buffer flow in TX direct (IPv6/IPv4)
       - ✅ [06/09] What's RCU (Read-Copy-Update) ?
       - ✅ [06/09] gre_reorder() tracing
       - ✅ [06/15] reorder_buffer_timeout_handler() and reorder_buffer_calculate_timeout() tracing

    - 🟢 [06/16] backup sequence num in ring when timeout and dump via proc file
       - ✅ [06/15] implementation is finish.
       - 🟡 Wait for the test result by CL.

    - some other possible enhancements
       - ✅ [06/16] tripple definition of ""struct gre_o_seqno" in multiple c files, move to include/net/ip_tunnels.h
       - ✅ [06/15] During getting configure items, tid data type is "int", it SHOULD be "void *"!?
	   - ✅ [06/15] fix some compiling warning.
       - 📌 rcu_read_lock/rcu_read_unlock, hook function pointer update with lock

- Busybox upgrade to 1.35.0
    - ✅ build S4 Plus engineer firmware requested by CL (done)
    - 🟡 [05/16] Under testing by CL
       - ✅ [06/01] Activated SIP in Router mode, then switch to DSL modem mode, there are lots of "waitting for arc-sip ready" and could not reset to default. The upgradion should not be a factor to cause this problem.
       - ✅ [06/06] Smart 4 Plus: finished. all looking good.
       - 🟢 [06/06] Smart 4 MS: conducting

## VRV9517WAX44 1-B-23 (Smart 4 MS)

### VPN

## Smart 5 (RDK)

- wanManager

    - 🟡 study how to fit in the LTE dongle status pulling/notifying


# Sophia

## VRV9519XWAC44 3-B-23 (Smart 3)

- GPL release
    - 📌 Release SOP document

## GRV9519ZWAX44-B-23 (Smart 4 plus)

- Produce Smart 4 Plus with 6715X
    - ✅ [6/10] Provide master file for sample run 2
    	- Keep using original DECT FW version (04.13_B1706) because Smart 4 Plus is in MP state
- ErP issues are encountered in the DT lab (GPON and xDSL)
    - 📌 Provide the ErP measurement results for DT review
- Reboot issue
    - 🟡 DUT reboot when performing the ppp link up and link down repeatedly.
        - Change sleep time to 10 sec in the arc_email_push_system_report.sh, then this issue isn't observed.
- Sometimes iptables rules are missing
    - 🟡 Study the solutions from git.netfilter.org
- Issues report in 2.6.000.0 (21.2p1 + 43684 chip) from EIT
    - 🟢 Error message: rdd dhd helper: release of not allocated SKB: idx=544, ptr=1287
    	- Test setup: Five RE connects to GW, then some WLAN clients connect to GW or RE.
    	- This message is shown about 3 times in 10 days. Reopen CS00010013691 ?
    - 🟢 WLAN client can ping www.google.com, but it cannot browse video via YouTube
    	- This issue isn't observed if the flow cache and HW Acceleration are disabled.
- Issue report from Benedikt
	- 🟢 Unable to handle kernel paging request at virtual address ffffffc13ea9cfff
		- PC is at free_block+0x110/0x178
	- ✅ Failed to upgrade firmware via web UI
		- It is caused by memory leak (owl and arc-sip)
- ✅ Release 2.6.000.0
- ✅ Provide 3.0.000.0-RC2 to EIT

### Formal release
- [7/04] 3.0.000.0
	- 🟢 New UI simulation 2.19.198
	- ✅ CR 22-1275 Start the integrated iPerf3 server via Display V2
	- 🟢 CR Smart Home changes in UI
	- ✅ New user manual
	- 🟢 20341 [BQFN] Unexpected reboot of HG in long term test setups
	- ✅ 20443 [IPPBX] Missing audion during incoming calls due to false transfer of sdp of internal SIP client in 18x
	- 🟢 20495 [IVA4][SIP] NIMS: Route Header / Service Route Smart 4
	- 📌 20510 [IPPBX] IPPBX CSeq handling in multi dialog call not correctly
	- ✅ 20554 [IPPBX] RTP of 1st dlg not transferred to IPPBX extension after switch back from 2nd dlg-LAN
	- ✅ 20576 [GUI] Incorrect WAN port status in mini UI while using xDSL modem mode
	- ✅ 20595 [BQFN] IPv6 prefix change impact LAN to WAN traffic (RC1)
	- ✅ 20596 [BQFN] RTT impact and throughput drops on LAN port 2 (RC1)
	- 🟢 20582 Smart 4 (type A and B): No outgoing telephony when 1st number is deactivated (BT-030/NIMIC-0018112362)
	- 🟢 20302 [Multicast Forwarding] Multicast packets are not forwarded if the router uses GPON for WAN access
	- ✅ 20457 [HDSM][ARC][SMART4 PLUS] Agent on connected MESH repeater is killed during backhaul changes

- [8/01] 3.0.001.0
	- 📌 20557 [IPPBX] Internal call transfer to or from IPPBX extension does not work (BT-029)


## VRV9517WAX44 1-B-23 (Smart 4 Typ A)

- Reboot issue
    - 🟡 The HW reboot happened when performing the ADSL link up/down test every 2 minutes.

## VRV9517WAX44-1-B-23: Typ B (Smart4 TypeB)

- 🟡 [BUGFIX/JIRA/SGCM-126] DUT didn’t send the PADI to server after DUT restarted. (WAN type: Ethernet)
    - Eth0.7 interface didn’t up, moreover, if I un-plug and plugin WAN line, DUT didn’t detect this event. Try to wait more 20ms for PHY hardware reset. (Fail)


## VRV9517ZWAX34-A-SP (Spark)

## WA7374442-TS (Telus Boost2.1)
- 🟢 Remove WAN from bridge interface

## Smart 5

- wanManager

# Terry

## Smart 4 plus

> GRV9519ZWAX44-B-23

- Develop DHCP Client API - write standalone API

  - ✅ (W24) New OpenWrt package in Arcadyan-utilities with shared library way.
    - ✅ (W24) Generate a shared library.
    - ✅ (W24) Link a shared library.
  - ✅ (W24) Fix segment fault issue.
    - ✅ (W24) Find the caused reason.
    - ✅ (W25) Add -v verbose optional argument.
    - ✅ (W25) Add UDP packet check.
    - ✅ (W25) Add packet size check.
  - ✅ (W25) Push commit to Git server.



- Develop DHCP Client API - trim busybox udhcpc program
  - ✅ Confirm if the program works properly.
  - ✅ (W25) Push commit to Git server.
  



- Others
  - ✅ (W24) Study new OpenWrt packet by Autotools, a kind of build system.
    <!-- [build system overview] https://julienjorge.medium.com/an-overview-of-build-systems-mostly-for-c-projects-ac9931494444 -->
  - ✅ (W24) Study GDB core dump file.
  - ✅ (W24) Install the GDB program in the Smart4 device via TFTP.
  - ✅ (W25) Study Git manipulation. (e.g. push, pull, rebase, merge, format-patch, ...)
  - 🟢 (W25) Study the firewall background knowledge. ( e.g. chain, table, traffic rule, ...)






# Goat

## WN9722OAX22-DM (AIOS7.0)

 - 🚫 [6/7] Update firmware via SP-flash-tool.
 - 🟢 [6/7] Study document and review git commit log.
 - 🟢 [6/14] Test all script by commands of AIOS6.5.
 - ✅ [6/14] Create git repo of AIOS seris on gitea server.
     - AIOS6.5 : Follow and update with codebase provided by Wind.
     - AIOS7.0 : Trace codebase provided by MTK and our develop.
 - ✅ [6/14] Setup FW upload environment and load FW.
 - ✅ [6/14] Create project "DENON AIOS7.0" and new "AIOS7.0 info" on confluence. 

## Common

### Docker builder maintain and enhance

 - ✅ [6/14] Fix smart4 platform "zlib" multi-version problem.
 - ✅ [6/14] Let builder can be executed anywhere not only in builder folder.

## Archived
### 20222H
#### Jared

##### GRV9519ZWAX44-B-23 (Smart 4 plus)
 - email notification failure with port 465 with commit 2f43cb5
    - 📌 [05/19] reported by CL
    - ✅ [05/24] Fixed by adding more signature algorithms for TLS 1.3.

#####

 - 20079 [BBTC][VPN][Internet-Access] When triggering IP address change by an connected VPN client (Wireguard) the Speedport does not come back online
 - 20122 The Router can be incapacitated via a VPN connection

When "Change IP address" pressed, browser send "disable" and "online" to CGI. But "online" never reach httpd due to Internet is disconnected.

##### W724
 - Busybox CVE issues

The busybox has reported with 14 new vulnerabilities. W724 uses busybox 1.16.2 that was affected by 4. But the applet hash was not compiled and installed. Therefore, we need to fix 3 vulnerabilities which are CVE-2021-42378/42385/42386. They are all releated to awk. So porting 1.34.0 awk to busybox

#### Sophia

##### VRV9519XWAC44 3-B-23 (Smart 3)
- Disable OpenWrt failsafe mode

##### GRV9519ZWAX44-B-23 (Smart 4 plus)
- Disable OpenWrt failsafe mode
- Don't install the dropbear binary in the firmware
- Issues reported from factory
    - Provide the explanation for the Display, LED and UI behavior when user hasn't enter ppp setting and he can access the Internet.
    - Get PHY ID failed (0x0000) after the PDL is executed

##### VRV9517ZWAX34-A-SP (Spark)
- [JIRA 24398-22][Moderate] Existed IPv4 traffic didn't stop when connected client entered blocked time of MAC filter.
- LAN client cannot establish PPTP tunnel to server if the GRE Learning are enabled.



---

#### Terry

> The naming rule of the archive shows below: 
> **\[\<category\>\]\[\<module\>\]** 



#####  Smart 4 plus

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
  



---

#### Goat

##### WN9722OAX22-DM (AIOS7.0)

 - ✅ [6/7] Try to build code.

##### Common

###### Docker builder maintain and enhance

 - ✅ [6/6] Review git commit log.
 - ✅ [6/6] Delete duplicate path in commands.
 - ✅ [6/6] Merge two create container action cases to one.
     -  Use "add-host" replace host mode network.
 - ✅ [6/6] Add new platform to builder.
     - MTK
     - AIOS7.0
 - ✅ [6/7] Detect if toolchains are installed when create container.
 - ✅ [6/8] Add package "tree" on smart4 platform.
