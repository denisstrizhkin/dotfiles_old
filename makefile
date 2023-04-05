all:
	stow --verbose --restow ./ --target ~

delete:
	stow --verbose --delete ./ --target ~

info:
	stow --verbose --simulate --restow ./ --target ~
