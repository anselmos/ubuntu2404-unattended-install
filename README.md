# Xubuntu 24.04 unattended apps install
This repository focuses on :
- Upgrading 22.04 LTS to 24.04 LTS
- Installing external apps with ansible playbook

# 1st step:
Install minimal version of Xubuntu 22.04

# 2nd step (update all packages to latest in 22.04):
Run `bash update.sh`
and `reboot`

# 3rd step (upgrade to 24.04):
Run `bash upgrade-release.sh`

# 4th step install ansible
Run `bash install-ansible.sh`

# 5th step (install apps with ansible):
run `bash ansible.sh`
