## Terry

> The naming rule of the archive shows below: 
> **\[\<category\>\]\[\<module\>\]** 


###  Smart 4 plus

>GRV9519ZWAX44-B-23

\[Feature\]\[DHCP\]

- Catch DHCP option 43 content. 
  - Method A: standalone application way
    - (W23) New a OpenWrt package, named `arc_dhcp_option_catcher`.
    - (W23) Fix interface issue. ( add interface option to communicate with DHCP server )
    - (W25) Push git commit 
      `94cc671a16 [Smart4Common][DHCP] Add new application "arc_dhcp_catcher" to catch DHCP option 43 content`
  - Method B: busybox way
    - (W22) New a busybox patch, named `600-add-udhcpc-trimmed-applet.patch`, to new applet `trimmed_dhcpc`.
    - (W23) Fix interface issue. ( add interface option to communicate with DHCP server )
    - (W25) Push git commit 
      `8beaeb70b0 [Smart4Common][busybox/udhcpc] Add busybox applet to catch DHCP option 43 content`

\[Mechanism\]\[Busybox\]

- (W23) Replace the overwrite way with the patch way in the busybox package.
  <sub>overwrite way is copying all files from `package/busybox/src.dt` folder to `build-dir/target*/busybox-*/`</sub>
  - (W23) New a busybox patch, named `601-replace-src.dt.patch`
