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
