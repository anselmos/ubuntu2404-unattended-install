update-upgrade:
	sudo apt update
	sudo apt upgrade -y
	sync
	reboot

release-upgrade:
	sudo do-release-upgrade -f DistUpgradeViewNonInteractive
	reboot

install-ansible:
	sudo apt install -y ansible
	reboot

ansible-playbook:
	ansible-playbook ./apps.yaml
