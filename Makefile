.PHONY: all clean

currentUser = $(shell whoami)

all: 
	$(info )
	$(info ********** Authenticating to sudo...)
	$(info )

	sudo rm /var/run/sudo/ts/${currentUser}
	sudo true

	make -C ansible
