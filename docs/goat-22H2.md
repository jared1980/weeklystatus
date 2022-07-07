## Goat

### WN9722OAX22-DM (AIOS7.0)

 - [06/14] Create project "DENON AIOS7.0" and new "AIOS7.0 info" on confluence.
 - [06/20] Discuss whole test plan with Edison.
 - [06/14] Test all script by commands of AIOS6.5.
 - [06/28] Update jira issues
     - How and where should we write broad data.
         - New partition will be provided by SU.
     - What type of dual image will be implemented.
         - SU will provide CPE like dual image machanism. 

### Common

#### Docker builder maintain and enhance

 - [06/06] Review git commit log.
 - [06/06] Delete duplicate path in commands.
 - [06/06] Merge two create container action cases to one.
     -  Use "add-host" replace host mode network.
 - [06/06] Add new platform to builder.
     - MTK
     - AIOS7.0
 - [06/07] Detect if toolchains are installed when create container.
 - [06/14] Fix smart4 platform "zlib" multi-version problem.
     - New version of pip will check if there existed muti-version package, disable it.
 - [06/14] Let builder can be executed anywhere not only in builder folder.
