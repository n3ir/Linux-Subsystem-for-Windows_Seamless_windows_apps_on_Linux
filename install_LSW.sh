#!/bin/bash
# only root can run this script
if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi
# copying files + setting permissions
\cp ./windows.sh /usr/bin/
chmod +x /usr/bin/windows.sh
\cp ./Windows.desktop /usr/share/applications/
chmod +x /usr/share/applications/Windows.desktop
\cp ./savewindows.sh /usr/bin/
chmod +x /usr/bin/savewindows.sh
\cp ./SaveWindows.desktop /usr/share/applications/
chmod +x /usr/share/applications/SaveWindows.desktop
\cp ./umountRoot.sh /usr/bin/
chmod +x /usr/bin/umountRoot.sh
\cp ./UmountRoot.desktop /usr/share/applications/
chmod +x /usr/share/applications/UmountRoot.desktop

# Update Apps without logout
update-desktop-database /usr/share/applications/
