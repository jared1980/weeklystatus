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
- [06/30] Prepare AIOS7.0 build code environment and try to build code.
- [06/14] Create git repo of AIOS seris on gitea server.
    - AIOS6.5 : Follow and update with codebase provided by Wind. (Including history)
    - AIOS7.0 : Trace codebase provided by MTK and our develop.
        - Create four repo. (meta-arcadyan, set_env, script, manifest)
        - Just trace our layer and script on gitea server not MTK's.
        - Modify manifest in xml to clone both MTK's and ARC's code via "repo init" command.
- [07/01] Add and update document on confluence.
    - Change name "Denon AIOS7.0" to "Denon AIOS series" and update info inside.
    - Seprate AIOS6.5 / AIOS7.0 to two pages.
    - Update "Denon AIOS6.5" document.
    - Add "Denon AIOS7.0" document.
    - [AIOS series](https://arc-conf.arcadyan.com.tw/pages/viewpage.action?pageId=141329089)
    - [AIOS6.5](https://arc-conf.arcadyan.com.tw/display/0911866010/AIOS6.5)
    - [AIOS7.0](https://arc-conf.arcadyan.com.tw/display/0911866010/AIOS7.0)
 - [07/07] Design and implement architecture of AIOS7.0.
    - Add Arcadyan's layer into image.
    - Add package group to store recipes from Arcadyan.

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

#### Utility
- [07/07] Fix cp_check bug.
    - Status will not be updated to latest automatically if source or target branch exist on local. Result will go wrong when either branch is not latest. Add warning message let user know status of branch and terminate compare process.
