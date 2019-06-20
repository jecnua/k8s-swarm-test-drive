default: test

up: update
	vagrant up
	@echo Boxes created and running

down:
	vagrant destroy -f
	@echo Boxes destroyed

update:
	# vagrant box update
	@echo Boxe update

test:
	rubocop Vagrantfile
	shellcheck *.sh
