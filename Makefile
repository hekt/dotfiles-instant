install: install-shrc install-symlink install-git-contrib

install-shrc:
	@bash ./scripts/install-shrc.sh

install-symlink:
	@bash ./scripts/install-symlink.sh

install-git-contrib:
	@bash ./scripts/install-git-contrib.sh

test:
	@bash ./tests/install-test.sh
