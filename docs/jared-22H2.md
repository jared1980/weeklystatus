## Jared

### GRV9519ZWAX44-B-23 (Smart 4 plus)
	- email notification failure with port 465 with commit 2f43cb5
		- 📌 [05/19] reported by CL
		- ✅ [05/24] Fixed by adding more signature algorithms for TLS 1.3.

#### HPQC
	- 20079 [BBTC][VPN][Internet-Access] When triggering IP address change by an connected VPN client (Wireguard) the Speedport does not come back online
	- 20122 The Router can be incapacitated via a VPN connection
   > When "Change IP address" pressed, browser send "disable" and "online" to CGI. But "online" never reach httpd due to Internet is disconnected.

### W724
	- Busybox CVE issues
   > The busybox has reported with 14 new vulnerabilities. W724 uses busybox 1.16.2 that was affected by 4. But the applet hash was not compiled and installed. Therefore, we need to fix 3 vulnerabilities which are CVE-2021-42378/42385/42386. They are all releated to awk. So porting 1.34.0 awk to busybox
