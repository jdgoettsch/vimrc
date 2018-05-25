all:
	@echo ""
	@echo "Please use one of the following targets:"
	@echo "    install"
	@echo ""


install: 
	test -L ~/.vim || ln -s $(PWD)/.vim ~/.vim
	test -L ~/.vimrc || ln -s $(PWD)/.vimrc ~/.vimrc
	test -L ~/.gvimrc || ln -s $(PWD)/.gvimrc ~/.gvimrc
	test -d $(PWD)/.vim/autoload || mkdir $(PWD)/.vim/autoload
	test -d ../vim-colors-solarized && rm -f $(PWD)/.vim/autoload/togglebg.vim
	test -d ../vim-colors-solarized && ln -s $(PWD)/../vim-colors-solarized/autoload/togglebg.vim $(PWD)/.vim/autoload/togglebg.vim
	test -d $(PWD)/.vim/colors || mkdir -p $(PWD)/.vim/colors
	test -d ../vim-colors-solarized && rm -f $(PWD)/.vim/colors/solarized.vim
	test -d ../vim-colors-solarized && ln -s $(PWD)/../vim-colors-solarized/colors/solarized.vim $(PWD)/.vim/colors/solarized.vim
	test -L $(PWD)/.vim/autoload/pathogen.vim || ln -s $(PWD)/vim-pathogen/autoload/pathogen.vim $(PWD)/.vim/autoload/pathogen.vim
