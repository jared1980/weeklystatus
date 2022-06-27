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
