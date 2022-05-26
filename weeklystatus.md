📌 : ToDo
🔴 : critical
🟢 : ongoing
🟡 : pending
🚫 : canceled
✅ : finished

# Jared

## W724

- Busybox upgrade to 1.35.0
  
  The busybox has reported with 14 new vulnerabilities. W724 uses busybox 1.16.2 that was affected by 4. But the applet hash was not compiled and installed. Therefore, we need to fix 3 vulnerabilities which are CVE-2021-42378/42385/42386. They are all releated to awk.

	- 🚫 [05/19] uClibc upgrade to 0.9.33.2 due to st_atim, tons of packages need ot upgrade
	    * host tools
	    * binutils
	    * compile gcc(4.6.2) with configure "--with-gmp=staging/host", "--with-mpc=staging/host", "--with-mpfr=staging/host", but library still not found...
    - ✅ [05/25] Port awk from 1.34.0
    - 🟢 [05/26] Conduct more tests
	
   
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

- email notification failure with port 465 with commit 2f43cb5

	- 📌 [05/19] reported by CL
	- ✅ [05/24] Fixed by adding more signature algorithms for TLS 1.3.
	
- Busybox upgrade to 1.35.0

    - ✅ build S4 Plus engineer firmware requested by CL (done)
    - 🟡 [05/16] Under testing by CL

## Smart 5 (RDK)

- wanManager

	- 🟡 study how to fit in the LTE dongle status pulling/notifying


# Sophia

## VRV9519XWAC44 3-B-23 (Smart 3)

- GPL release
    - 📌 Release SOP document

- ✅ Disable OpenWrt failsafe mode

## GRV9519ZWAX44-B-23 (Smart 4 plus)

- Produce Smart 4 Plus with 6715X
    - Send two samples to Benedikt
        - ✅ Prepare engineering fw
        - 📌 perform WiFi basic function test
    - 📌 [6/10] Provide master file for sample run 2

- ErP issues are encountered in the DT lab (GPON and xDSL)
    - 📌 Provide the ErP measurement results for DT review

- Reboot issue
    - 🟡 DUT reboot when performing the ppp link up and link down repeatedly.
        - Change sleep time to 10 sec in the arc_email_push_system_report.sh, then this issue isn't observed.

- Issues reported from factory
    - ✅ Provide the explanation for the Display, LED and UI behavior when user hasn't enter ppp setting and he can access the Internet.
    - ✅ Get PHY ID failed (0x0000) after the PDL is executed

- Sometimes iptables rules are missing
    - 🟢 Study the solutions from git.netfilter.org

- ✅ Disable OpenWrt failsafe mode

- ✅ Don't install the dropbear binary in the firmware

### Formal release

- [6/13] 2.6.000.0
    - ✅ New WiFi driver 21.2P1
    - Final power table for 6715x samples
        - 🟡 The final power table is available after the certification is finished.

- [7/04] 3.0.000.0
    - 📌 New UI simulation 2.19.198
    - ✅ CR 22-1275 Start the integrated iPerf3 server via Display V2
    - 📌 CR Smart Home changes in UI
    - 📌 New user manual
    - 🟢 20341 [BQFN] Unexpected reboot of HG in long term test setups
    - ✅ 20443 [IPPBX] Missing audion during incoming calls due to false transfer of sdp of internal SIP client in 18x
    - 🟢 20495 [IVA4][SIP] NIMS: Route Header / Service Route Smart 4
    - 📌 20510 [IPPBX] IPPBX CSeq handling in multi dialog call not correctly
    - ✅ 20554 [IPPBX] RTP of 1st dlg not transferred to IPPBX extension after switch back from 2nd dlg-LAN
    - 📌 20557 [IPPBX] Internal call transfer to or from IPPBX extension does not work (BT-029)
    - ✅ 20576 [GUI] Incorrect WAN port status in mini UI while using xDSL modem mode
    - ✅ 20595 [BQFN] IPv6 prefix change impact LAN to WAN traffic
    - ✅ 20596 [BQFN] RTT impact and throughput drops on LAN port 2
    - 🟢 20582 Smart 4 (type A and B): No outgoing telephony when 1st number is deactivated (BT-030/NIMIC-0018112362)
    - 🟢 20302 [Multicast Forwarding] Multicast packets are not forwarded if the router uses GPON for WAN access
    - 🟢 20457 [HDSM][ARC][SMART4 PLUS] Agent on connected MESH repeater is killed during backhaul changes
    - IPTV benchmark:
        - Optimization/implementation changes to be defined
        - Optional: TACKM activation for all customers (to be discussed)

- [8/01] 3.0.001.0
    - Scope to be defined

## VRV9517WAX44 1-B-23 (Smart 4 Typ A)

- Reboot issue
    - 🟡 The HW reboot happened when performing the ADSL link up/down test every 2 minutes.

## VRV9517WAX44-1-B-23: Typ B (Smart4 TypeB)

- 🟡 [BUGFIX/JIRA/SGCM-126] DUT didn’t send the PADI to server after DUT restarted. (WAN type: Ethernet)
    - Eth0.7 interface didn’t up, moreover, if I un-plug and plugin WAN line, DUT didn’t detect this event. Try to wait more 20ms for PHY hardware reset. (Fail)


## VRV9517ZWAX34-A-SP (Spark)

- [JIRA 24398-22][Moderate] Existed IPv4 traffic didn't stop when connected client entered blocked time of MAC filter.
    - ✅ Instead of using arc-middle-mod-common-net API, call CLI command to get LAN/WLAN client list to avoid compile error.

## Smart 5

- wanManager

# Terry

## Smart 4 A/B

- Develop DHCP Client API - write standalone API

  - ✅ Study packet sniffer for DHCP packet detection.

  - ✅ Implement a packet sniffer program.

  - ✅ Implement a UDP packet sniffer program.

  - ✅ Implement a DHCP payload parser program.
  - ✅ <span style="background-color : rgb(204, 255, 204)">(05/25 Wed.) Broadcast a DHCP Discovery frame.</span>
    - ✅ <span style="background-color : rgb(204, 255, 204)"> (05/24 Tue.) Create a DHCP Discovery frame. </span>
    - ✅ <span style="background-color : rgb(204, 255, 204)"> (05/25 Wed.) Broadcast DHCP Discovery frame. </span>

- ✅<span style="background-color : rgb(204, 255, 204)">(05/26 Thu.) Receive a DHCP Offer frame.</span>
    - ✅<span style="background-color : rgb(204, 255, 204)"> (05/24 Tue.) Adopt a polling mechanism to receive packets.</span>

    - ✅<span style="background-color : rgb(204, 255, 204)"> (05/24 Tue.) Confirm whether it is the DHCP Offer packet.</span>

    - ✅<span style="background-color : rgb(204, 255, 204)">(05/26 Thu.) Get the specific Option value.</span> 

- Develop DHCP Client API - trim busybox udhcpc program

  - ✅ Add a new applet into the busybox.

  - ✅ <span style="background-color : rgb(204, 255, 204)"> (05/23 Mon.) Add a trimmed udhcpc program into the busybox.</span>

    - ✅ Fix all dependence issues.

    - ✅ Display the specific DHCP option content.

    - ✅ <span style="background-color : rgb(204, 255, 204)">(05/24 Tue.)Trim the unused part. </span>
      - ✅ <span style="background-color : rgb(204, 255, 204)">(05/24 Tue.)Trace busybox udhcpc code and Write an explanation document.</span>
      - ✅<span style="background-color : rgb(204, 255, 204)">(05/23 Mon.)Trim the redundancy features. </span>

# Goat

## Smart 5

## Common

### Docker builder maintain and enhance

## Archived
### 20222H
#### Jared

#### Sophia

#### Terry

#### Goat
