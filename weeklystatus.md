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
     - 📌 20226 [Smart3 HDSM14] sysfs reports wrong speeds for Gigabit Ethernet connections
     - 📌 20560 [HDSM][ARC][Smart 3 Drop 25] CC_GetMeshStaInfo failure , unknown MAC
     - 📌 20580 [HDSM][ARC][Smart3] Connected devices via Wifi are not shown in Assia GUI
     - ✅ 20583 [HDSM][ARC][Smart 3 HDSM18] Serial number mismatch between CC_GetMeshDevice and CC_GetCpeInfo (Joe) 21c049dab 3cb26b09a
     - ✅ CR 22-1285 Smart 3 New PDF User Manual (20220511) 3acf220e9

## GRV9519ZWAX44-B-23 (Smart 4 plus)

- Hybrid reorder fine tune
    - 🟢 [05/23] habond.c kernel module study
       - ✅ [06/09] skb buffer flow in RX direct - from dev to gre_reorder
       - 📌 [06/09] skb buffer flow in TX direct
       - ✅ [06/09] What's RCU (Read-Copy-Update) ?
       - ✅ [06/09] gre_reorder() tracing
       - 🟢 [06/09] reorder_buffer_timeout_handler() and reorder_buffer_calculate_timeout() tracing

    - some other possible enhancements
       - 📌 tripple defined of ""struct gre_o_seqno", move to net/ip_tunnels.h??
       - 📌 During getting configure items, tid data type is "int", it SHOULD be "void *"!?
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
    - 📌 [6/10] Provide master file for sample run 2

- ErP issues are encountered in the DT lab (GPON and xDSL)
    - 📌 Provide the ErP measurement results for DT review

- Reboot issue
    - 🟡 DUT reboot when performing the ppp link up and link down repeatedly.
        - Change sleep time to 10 sec in the arc_email_push_system_report.sh, then this issue isn't observed.

- Sometimes iptables rules are missing
    - 🟡 Study the solutions from git.netfilter.org

- Issue report from factory
    - ✅ Fail to get the DECT firmware version
        - DECT firmware update is triggered after the firmware of DUT was updated from shipping fw to MFG fw. We can get the DECT firmware version after the DECT firmware update is finished. (5 min)
        - To save time, the alignment of DECT firmware version in EEPROM, MFG fw and shipping fw is necessary. (It is under discussion with PM.)

- Issues report in 2.6.000.0-RC1 from EIT
    - 🟢 Homepod mini deauth from AP every hour
        - This issue isn't observed if we change the config value of WPA_GroupRekey from 3600 to 0.
    - 🟢 Error message: rdd dhd helper: release of not allocated SKB: idx=544, ptr=1287

### Formal release

- [6/13] 2.6.000.0
    - [5/30] 2.6.000.0-RC1
    - ✅ [6/08] Provide 2.6.000.0 formal firmware to EIT
:::info
Scope List
- ✅ New WiFi driver 21.2P1 (RC1)
- Final power table for 6715x samples
    - 🟡 The final power table is available after the certification is finished.
:::

- [7/04] 3.0.000.0
    - [5/31] 3.0.000.0-RC1 (DT asked us to have RC1 next week for test in benchmark lab.)
    - 🟢 [6/13] 3.0.000.0-RC2
:::info
Scope List
- 🟢 New UI simulation 2.19.198
- ✅ CR 22-1275 Start the integrated iPerf3 server via Display V2
- 🟢 CR Smart Home changes in UI
- 📌 New user manual
- 🟢 20341 [BQFN] Unexpected reboot of HG in long term test setups
- ✅ 20443 [IPPBX] Missing audion during incoming calls due to false transfer of sdp of internal SIP client in 18x
- 🟢 20495 [IVA4][SIP] NIMS: Route Header / Service Route Smart 4
- 📌 20510 [IPPBX] IPPBX CSeq handling in multi dialog call not correctly
- ✅ 20554 [IPPBX] RTP of 1st dlg not transferred to IPPBX extension after switch back from 2nd dlg-LAN
- 📌 20557 [IPPBX] Internal call transfer to or from IPPBX extension does not work (BT-029)
- ✅ 20576 [GUI] Incorrect WAN port status in mini UI while using xDSL modem mode
- ✅ 20595 [BQFN] IPv6 prefix change impact LAN to WAN traffic (RC1)
- ✅ 20596 [BQFN] RTT impact and throughput drops on LAN port 2 (RC1)
- 🟢 20582 Smart 4 (type A and B): No outgoing telephony when 1st number is deactivated (BT-030/NIMIC-0018112362)
- 🟢 20302 [Multicast Forwarding] Multicast packets are not forwarded if the router uses GPON for WAN access
- ✅ 20457 [HDSM][ARC][SMART4 PLUS] Agent on connected MESH repeater is killed during backhaul changes
- IPTV benchmark:
    - Optimization/implementation changes to be defined
    - Optional: TACKM activation for all customers (to be discussed)
:::

- [8/01] 3.0.001.0
    - Scope to be defined

## VRV9517WAX44 1-B-23 (Smart 4 Typ A)

- Reboot issue
    - 🟡 The HW reboot happened when performing the ADSL link up/down test every 2 minutes.

- Voice Redundancy
    - ✅ Firewall also accept VoIP packets from LTE WAN (eth0.0) interface.

## VRV9517WAX44-1-B-23: Typ B (Smart4 TypeB)

- 🟡 [BUGFIX/JIRA/SGCM-126] DUT didn’t send the PADI to server after DUT restarted. (WAN type: Ethernet)
    - Eth0.7 interface didn’t up, moreover, if I un-plug and plugin WAN line, DUT didn’t detect this event. Try to wait more 20ms for PHY hardware reset. (Fail)


## VRV9517ZWAX34-A-SP (Spark)

## VRV9518baax24b2g (OTE)

- ✅ [JIRA 9518B-23] Clients connected to 5G Guest AP cannot forward WAN traffic
    - This issue isn't observed if the flow cache is disabled.

## Smart 5

- wanManager

# Terry

## Smart 4 A/B

- Develop DHCP Client API - write standalone API

  - ✅ Study packet sniffer for DHCP packet detection.
  - ✅ Implement a packet sniffer program.
  - ✅ Implement a UDP packet sniffer program.
  - ✅ Implement a DHCP payload parser program.
  - ✅ (W21) Create and broadcast the DHCP Discovery frame.
  - ✅ (W21) Receive and parse DHCP Offer frame.
  - 🟢 (W23) New OpenWrt package in Arcadyan-utilities.
    - 🟢 (W23) Fix interface issue. ( add interface option to communicate with DHCP server )
  
- Develop DHCP Client API - trim busybox udhcpc program

  - ✅ Add a new applet into the busybox.
  - ✅  (W21) Add a trimmed udhcpc program into the busybox.
    - ✅ Fix all dependence issues.
    - ✅ Display the specific DHCP option content.
    - ✅ (W21) Trim the unused part.
    
  - ✅ New applet in Smart 4 busybox
  
    - ✅ (W22) New a busybox patch, named `600-add-udhcpc-trimmed-applet.patch`
    - ✅ (W22) Confirm image including new busybox applet `udhcpc_trimmed`
    - ✅ (W23) Confirm the busybox applet `udhcpc_trimmed` works properly.
    - ✅ (W23) Fix interface issue. ( add interface option to communicate with DHCP server )
    - ✅ (W23) Replace the overwrite way with the patch way in the busybox package.
      <!--p.s. overwrite way does copy all files in `package/busybox/src.dt` folder to `build-dir/target*/busybox-*/`-->

​     


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

#### Terry

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