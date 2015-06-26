/usr/bin/vm-backup:
  file.managed:
    - source: salt://vm-backup/vm-backup
    - user: root
    - group: root
    - mode: 777

/etc/cron.weekly/vm-backup:
  file.managed:
    - source: salt://vm-backup/vm-backup-cron
    - user: root
    - group: root
    - mode: 777

/usr/bin/vm-backup-bin:
  file.managed:
    - source: salt://vm-backup/vm-backup-bin
    - user: root
    - group: root
    - mode: 777




