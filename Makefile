.PHONY: install-hooks

# Respects core.hooksPath (beads points it at .beads/hooks).
install-hooks:
	cp -f scripts/commit-msg "$$(git rev-parse --git-path hooks)/commit-msg"
	chmod +x "$$(git rev-parse --git-path hooks)/commit-msg"
