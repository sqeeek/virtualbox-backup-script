# virtualbox-backup-script
Automatic export of all virtualbox machines with minimal downtime and without restarting any hosts.


***
### Why
I use phpvirtualbox-controlled ubuntu headless servers as hypervisors in my home network, and even though each machine's content is usually backed up, my hardware is old and cheap and I'm therefore always afraid of losing a hard drive and with it half of my running VM's.

This script was a solution - Salt installs it on each of my hypervisors, and every Sunday each VM is exported as an OVA. Running VM's are put in save-state mode while they are being exported.

***
### Installation and Usage

1. Change 'bkpath' and 'vbuser' in vm-backup - 'bkpath' is the destination path of the backup, 'vbuser' is the user that controls the virtual machines
2. Copy vm-backup and vm-backup-bin to `/usr/bin/` or wherever you want.
3. Symlink vm-backup to `/etc/cron.<time-period>/vm-backup-cron` or copy the provided wrapper script
4. `sudo vm-backup`

Example salt state file included.

***
### Usage

`sudo vm-backup`

***
Thrown together in a single evening, messy and done wrong I'm sure, but it works. 

Note: commented out my zabbix_sender line - I just send a value to zabbix every time it runs, so I get an alert if it goes more than a week without getting a value
