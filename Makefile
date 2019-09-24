ROLE=gcoop-libre.test_users

DEBUG ?= -v
SUDO ?=

role:
	mkdir -p tests/roles
	rm -f tests/roles/$(ROLE)
	cd tests/roles && ln -s ../../. $(ROLE)
	cd ..
	ansible-playbook $(DEBUG) -i tests/inventory $(SUDO) tests/test.yml

lint:
	mkdir -p tests/roles
	rm -f tests/roles/$(ROLE)
	cd tests/roles && ln -s ../../. $(ROLE)
	cd ..
	ansible-lint $(DEBUG) tests/test.yml

plugins/lookup/pass/lookup_plugins/pass.py:
	mkdir -p plugins/lookup
	git clone https://github.com/gcoop-libre/ansible-lookup-plugin-pass.git plugins/lookup/pass

dependencies: plugins/lookup/pass/lookup_plugins/pass.py
