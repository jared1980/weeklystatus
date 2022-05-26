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

## SPARK

## Smart 4 Plus

# Terry

## Smart 4 A/B

- Develop DHCP Client API - write standalone API

  - ✅ Study packet sniffer for DHCP packet detection.

  - ✅ Implement a packet sniffer program.

  - ✅ Implement a UDP packet sniffer program.

  - ✅ Implement a DHCP payload parser program.
  - ✅ <span style="background-color : rgb(204, 255, 204)">(05/25 Wed.) Broadcast a DHCP Discovery frame.</span>
    - ✅ <span style="background-color : rgb(204, 255, 204)"> (05/24 Tue.) Create a DHCP Discovery frame. </span>
    - ✅ <span style="background-color : rgb(204, 255, 204)"> (05/25 Wed.) Broadcast DHCP Discovery frame. </span>
  
- ✅<span style="background-color : rgb(204, 255, 204)">(05/26 Thu.) Receive a DHCP Offer frame.</span>
    - ✅<span style="background-color : rgb(204, 255, 204)"> (05/24 Tue.) Adopt a polling mechanism to receive packets.</span>

    - ✅<span style="background-color : rgb(204, 255, 204)"> (05/24 Tue.) Confirm whether it is the DHCP Offer packet.</span>

    - ✅<span style="background-color : rgb(204, 255, 204)">(05/26 Thu.) Get the specific Option value.</span> 

- Develop DHCP Client API - trim busybox udhcpc program

  - ✅ Add a new applet into the busybox.

  - ✅ <span style="background-color : rgb(204, 255, 204)"> (05/23 Mon.) Add a trimmed udhcpc program into the busybox.</span>

    - ✅ Fix all dependence issues.

    - ✅ Display the specific DHCP option content.

    - ✅ <span style="background-color : rgb(204, 255, 204)">(05/24 Tue.)Trim the unused part. </span>
      - ✅ <span style="background-color : rgb(204, 255, 204)">(05/24 Tue.)Trace busybox udhcpc code and Write an explanation document.</span>
      - ✅<span style="background-color : rgb(204, 255, 204)">(05/23 Mon.)Trim the redundancy features. </span>

### DHCP Service Sniffer

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
