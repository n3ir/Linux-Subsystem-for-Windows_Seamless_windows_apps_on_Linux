#!/bin/bash

vboxmanage guestcontrol "win10" run --username admin --password "$WIN_PASS" \
--wait-stdout --exe "C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe" -- "net use /delete z:"
