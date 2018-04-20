default: test

test:
	rubocop k8s/local_mac/Vagrantfile
	shellcheck k8s/local_mac/*.sh

output:
	@echo Completed
