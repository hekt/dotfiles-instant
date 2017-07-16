.PHONY: install
install: install-shrc install-symlink install-git-contrib

.PHONY: install-shrc
install-shrc:
	@bash ./scripts/install-shrc.sh

.PHONY: install-symlink
install-symlink:
	@bash ./scripts/install-symlink.sh

.PHONY: install-git-contrib
install-git-contrib:
	@bash ./scripts/install-git-contrib.sh

.PHONY: test
test:
	@bash ./tests/install-test.sh
