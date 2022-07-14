# Jared

## VRV9510KWAC23-B-23 (W724)

## SC411MAC11-OG (Djingo)
### CVE

## VRV9519XWAC44 3-B-23 (Smart 3)

### Misc
  - busybox upgrade issues
    - ✅ `ls` doesn't support -e anymore.
    - ✅ [7/06] Fix `awk` syntax issue (busybox upgrade side effect?)
      > - echo ${IF_ADDR} | awk '{FS="."} {print $2}'
	  > + echo ${IF_ADDR} | awk 'BEGIN {FS="."}; {print $2}'
    - ✅ [7/08] Query if smarthome bootstrap should also update due to `awk ORS...`
      > [7/11] new bootstrap 2.3.20 released

	  > [7/12] provided 5.0.001.1 RC7
### Tethering
### Firmware release
#### 5.0.001.1 (scheduled on 18/July)
 - Release milestones
   - ✅ [7/12] RC7 prepare (new bootstrap/awk syntax error)
   - ✅ [7/14] formal firmware prepare

## GRV9519ZWAX44-B-23 (Smart 4 plus)

### Security
 - 🟡 Busybox upgrade to 1.35.0
   - ✅ build S4 Plus engineer firmware requested by CL (done)
   - ✅ [06/01] Activated SIP in Router mode, then switch to DSL modem mode, there are lots of "waitting for arc-sip ready" and could not reset to default. The upgradion should not be a factor to cause this problem.
   - ✅ [06/06] Smart 4 Plus: finished. all looking good.
   - 🟢 [06/06] Smart 4 MS: conducting
### HPQC
 - 🟢 19414 [Security] Open Port 3702 LAN IPv4/IPv6
      > Could not reprocuce with found firmware 1.0.010.0 and latest 3.0.000.0
	  
	  > grep code tree, wsdd2 open 3702 port, with which the samba service accompanied by.
	  > Means wsdd2 stop when samba service is stoped.

## VRV9517WAX44 1-B-23 (Smart 4 MS)

### Hybrid
 - 🟢 EtherWAN refused to up
   - [7/06] Case 1: doesn't return TRUE during hybrid condition checking in AWD_CheckIsPermitUp(). (JC reported)
     > Add more debug message to check while AWD_CheckIsPermitUp doesn't return TRUE.

   - [7/07] Case 2: refused due to the previous link down event was ignored. (Morgan reported)
     > DSL down event was conducting, therefore Ethnet down event was ignored.
     > Do usleep and retry.

   - [7/07] Case 3: mng_action doesn't take action.
     > AWD_DBG("link_up %s\n", wan_linktype_num_str[WAN_UPLINK_TYPE_ETHERNET]);
     > mng_action("link_up", wan_linktype_num_str[WAN_UPLINK_TYPE_ETHERNET]);

     > debug mng_action ??

   - [7/12] debug AWD_TID invalided

     > Add more debug message in midcore.

     > [7/14] Log with 10M(30M) file size has 6550(106417) times cfg get return MID_FAIL. It could be a generic issue in Midcore function mapi_opt_trans().

 ```
	if(header.act_rsp_code == 0)
		return MID_SUCCESS;
	
	printf("[MIDCORE-DEBUG]: %s action:[%d], item [%s] return MID_FAIL\n", __FUNCTION__, action, (data)?data:"");
	return MID_FAIL;
 ```

### HPQC
 - [HPQC 20290/20291/20292][BBTC][Data] In case the VoIP functionality is deactivated the "Active Services"-list is not updated immediately (reboot necessary)
   - 🟢 [06/16] arc-sip closed udp socket, but netstat still listed it. possible way to speed up the reclaiming of closed port ? Answer: no way to speed up
   - 🚫 [6/21] could not reproduce anymore
### Tethering
### Active Service
  - ✅ [7/13] Fix active service lists for WAN/LAN are blanked when WAN interface is down
### VPN
 - 📌 [6/22] create more than one tunnels on the same smartphone. After connected and disconnected to server. The connection status on HG could be wrong.
### Smarthome
 - ✅ [7/13] update bootstrap to 2.3.20 (due to awk command syntax)
      > Currently, v1.x.x still used.
	  > When upgrade busybox to 1.35.0, shuld switch to bootstrap v2.x.x by enabling`CONFIG_QIVICON_BOOTSTRAP_2=y` in .config
 - 📌 [7/14] prepare test image and provide to Todor.
## VRV9517WAX44 2-B-H2-23 (Smart 5/RDK)

### Tethering
#### 🟢 Build Tethering software stacks
 - 🔴 [7/05] Build usbmuxd recipe for iPhone
     > skip due to GPL-3.0

#### Implementation
 - 🟡 study how to fit in the LTE dongle status pulling/notifying
   - HAL client/Server to detect tethering link state
     > use inotify to watch /sys/class/net, if new interface, e.g., usb0 created, new folder /sys/class/net/usb0 was created, too.
	 
	 > ✅ [7/14] inotify PoC failed, it doesn't support sysfs pseudo fs.

     > 🟢 [7/14] try to use libudev.

     > get Class/SubClass/Protocol via file /sys/class/net/usb0/device/bInterfaceClass, bInterfaceSubClass, bInterfaceProtocol.

   - tethering ccsp component and data model
   - wanmanager policy modification

#### Questions
   - 📌 [7/05] Try to turn on usbmuxd for iPhone
        > usbmuxd was skipped: it has incompatible license(s): GPL-3.0		

        > How to enable GPL-3.0 recipes?

   - ✅ [6/28] wanmanager policy
		> Currently, wan manager enforces AUTOWAN_MODE policy	
        > s_xsun: actually we are defining the new DM of WanManager... I guess there will be new Policies to be supported. But to be honest I have no idea about the usb tethering now... because it is not yet supported by RDK-F at all.
