📌 : ToDo
🔴 : critical
🟢 : ongoing
🟡 : pending
✅ : finished

# Jared

## W724

- Busybox upgrade to 1.35.0

	- 🔴 [2022/05/19] uClibc upgrade to 0.9.33.2 due to st_atim, tons of packages need ot upgrade
	    * host tools
	    * binutils
	    * compile gcc(4.6.2) with configure "--with-gmp=staging/host", "--with-mpc=staging/host", "--with-mpfr=staging/host", but library still not found...
    - 🟡 [2022/05/20] pending task
   
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

- email notification failure with port 465 with commit 2f43cb5

	- 📌 [05/19] reported by CL
	- ✅ [05/24] Fixed by adding more signature algorithms for TLS 1.3.
	
- Busybox upgrade to 1.35.0

    - ✅ build S4 Plus engineer firmware requested by CL (done)
    - 🟢 [2022/05/16] Under testing by CL

## Smart 5 (RDK)

- wanManager

	- 🟡 study how to fit in the LTE dongle status pulling/notifying


## Archived
### 20222H
#### Smart 4


# Sophia

## SPARK

## Smart 4 Plus

## Archived

# Terry

## Smart 4 A/B

### DHCP Service Sniffer

## Archived

# Goat

## Smart 5

## Common

### Docker builder maintain and enhance

## Archived
