#
# install
#
install:
	@bash ./scripts/install.sh

#
# initialize
#
initialize: files/.git.d/contrib/completion/git-prompt.sh files/.git.d/contrib/completion/git-completion.bash

git_version: FORCE
	@bash ./scripts/update-git-version.sh

files/.git.d/contrib/completion/git-prompt.sh: git_version
	@echo 'download completion/git-prompt.sh'
	@bash ./scripts/download-git-contrib.sh 'completion/git-prompt.sh'

files/.git.d/contrib/completion/git-completion.bash: git_version
	@echo 'download completion/git-completion.bash'
	@bash ./scripts/download-git-contrib.sh 'completion/git-completion.bash'

test:
	@bash ./tests/initialize-test.sh
	@bash ./tests/install-test.sh

FORCE:

.PHONY: FORCE install initialize test
