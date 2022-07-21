## Terry

> The naming rule of the archive shows below: 
> **\[\<Action\>\]\[\<Category\>\]\[\<Module\>\]** 


###  Smart 4 plus

>GRV9519ZWAX44-B-23

\[Add\]\[Feature\]\[DHCP\]

- (W25) Catch DHCP option 43 content. 
  - (W25) Method A: standalone application way
    - (W23) New a OpenWrt package, named `arc_dhcp_option_catcher`.
    - (W23) Fix interface issue. ( add interface option to communicate with DHCP server )
    - (W25) Push git commit 
      `94cc671a16 [Smart4Common][DHCP] Add new application "arc_dhcp_catcher" to catch DHCP option 43 content`
  - (W25) Method B: busybox way
    - (W22) New a busybox patch, named `600-add-udhcpc-trimmed-applet.patch`, to new applet `trimmed_dhcpc`.
    - (W23) Fix interface issue. ( add interface option to communicate with DHCP server )
    - (W25) Push git commit 
      `8beaeb70b0 [Smart4Common][busybox/udhcpc] Add busybox applet to catch DHCP option 43 content`



\[Maintain\]\[Mechanism\]\[Busybox\]

[Confluence Link](https://arc-conf.arcadyan.com.tw/pages/viewpage.action?pageId=144015859&preview=/144015859/145490210/study_busybox_applet.pdf)

- (W23) Replace the overwrite way with the patch way in the busybox package.
  <sub>overwrite way is copying all files from `package/busybox/src.dt` folder to `build-dir/target*/busybox-*/`</sub>
  - (W23) New a busybox patch, named `601-replace-src.dt.patch`



\[Learn\]\[Development\]\[Utils\]

- (W24) Study new OpenWrt packet by Autotools, a kind of build system.
  <!-- [build system overview] https://julienjorge.medium.com/an-overview-of-build-systems-mostly-for-c-projects-ac9931494444 -->
- (W24) Study GDB core dump file.
- (W24) Install the GDB program in the Smart4 device via TFTP.
- (W25) Study Git manipulation. (e.g. push, pull, rebase, merge, format-patch, ...)



\[Learn\]\[firewall\]\[background\]

[Confluence Link](https://arc-conf.arcadyan.com.tw/pages/viewpage.action?pageId=144015859&preview=/144015859/145490201/smart4_firewall_mechanism.pdf)

- (W26) Study the firewall background knowledge.
  - (W26) Study the iptables suite of Netfilter framework through Smart4 codebase.

-  (W28) Trace firewall mechanism of Smart4. 

  - (W27) OpenWrt-based mechanism ( `etc/firewall.usr` and  `etc/config/firewall` )

  - (W28) Arcadyan mechanism ( `httpd` )



\[Learn\]\[Yocto\]\[background\]

[Confluence link](https://arc-conf.arcadyan.com.tw/pages/viewpage.action?pageId=144015859&preview=%2F144015859%2F145490987%2Fstudy_yocto.pdf)

- (W26) Study Yocto project background.
- (W28) Setup Yocto build environment by docker. 
  github: https://github.com/crops/poky-container 
  docker hub: https://hub.docker.com/r/crops/poky
- (W28) Build Yocto project image by `bitbake core-image-minimal`
- (W28) Run Yocto project in emulator by `runqemu qemux86-64 nographic`



\[Learn\]\[WSL2\]\[background\]

[Confluence link](https://arc-conf.arcadyan.com.tw/pages/viewpage.action?pageId=144015859&preview=/144015859/145490981/study_wsl2.pdf)

- (W26) Study WSL2 (Windows Subsystem for Linux version 2)
- (W28) Display wsl2 UI application on host. ( via X server )
