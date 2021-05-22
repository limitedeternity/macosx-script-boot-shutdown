# macosx-script-boot-shutdown

This configuration is useful when you need to execute a shell script at Mac OS X boot or shutdown.

There are two files:

- boot-shutdown.plist
- boot-shutdown.sh

## Install

1. Copy the file `boot-shutdown.sh` into `/Library/Scripts/`

2. Copy the file `boot-shutdown.plist` into `/Library/LaunchDaemons/`

3. Load the service:

    sudo launchctl load -w /Library/LaunchDaemons/boot-shutdown.plist

4. Start the service:

    sudo launchctl start BOOT.SHUTDOWN.SERVICE

## Uninstall

1. Stop the service:

    sudo launchctl stop BOOT.SHUTDOWN.SERVICE

2. Unload the service:

    sudo launchctl unload -w /Library/LaunchDaemons/boot-shutdown.plist

3. Remove `/Library/LaunchDaemons/boot-shutdown.plist`

4. Remove `/Library/Scripts/boot-shutdown.sh`


## Useful links

- [Daemons and Services Programming Guide][1]
- [What is Launchd][2]


  [1]: https://developer.apple.com/library/archive/documentation/MacOSX/Conceptual/BPSystemStartup/Chapters/Introduction.html
  [2]: http://www.launchd.info/ 

