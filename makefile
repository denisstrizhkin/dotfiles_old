all:
	stow --verbose --ignore makefile --restow ./ --target ~

delete:
	stow --verbose --ignore makefile --delete ./ --target ~

info:
	stow --verbose --ignore makefile --simulate --restow ./ --target ~
