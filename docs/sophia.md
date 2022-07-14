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
	- ✅ arc-ipv6cp-up-firewall-cfg.sh calls ip6tables-restore command with --noflush option, so that RA rule is flushed. After that, RA rule isn't recovered anymore.

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

## DT-EU

- 📌 wanManager study
