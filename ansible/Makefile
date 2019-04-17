.PHONY: all clean

platform = $(shell /usr/bin/lsb_release -is)

ifeq (${platform}, Ubuntu)
	installCommand = sudo apt-get update >/dev/null 2>&1 && sudo apt-get install -y ansible ansible-lint >/dev/null 2>&1
else 
	installCommand = sudo yum install -y ansible ansible-lint >/dev/null 2>&1
endif

all:
	$(info )
	$(info ********** Setting up ansible...)
	$(info )
	$(installCommand) || (echo "Ansible installation failed."; exit 1)
	mkdir -p ${HOME}/.ansible
	cp hosts ${HOME}/.ansible/hosts
	cp ansiblecfg ${HOME}/.ansible.cfg
