all:
	@echo ""
	@echo "Please use one of the following targets:"
	@echo "    install"
	@echo ""


install: 
	test -d $(PWD)/.vim/autoload || mkdir $(PWD)/.vim/autoload
	test -d $(PWD)/.vim/colors || mkdir -p $(PWD)/.vim/colors
	test -d $(PWD)/.vim/ftdetect || mkdir -p $(PWD)/.vim/ftdetect
	test -d $(PWD)/.vim/ftplugin || mkdir -p $(PWD)/.vim/ftplugin
	test -d $(PWD)/.vim/indent || mkdir -p $(PWD)/.vim/indent
	test -d $(PWD)/.vim/syntax || mkdir -p $(PWD)/.vim/syntax
	test -L ~/.vim || ln -s $(PWD)/.vim ~/.vim
	test -L ~/.vimrc || ln -s $(PWD)/.vimrc ~/.vimrc
	test -L ~/.gvimrc || ln -s $(PWD)/.gvimrc ~/.gvimrc
	test -L $(PWD)/.vim/autoload/togglebg.vim || ln -s $(PWD)/deps/vim-colors-solarized/autoload/togglebg.vim ~/.vim/autoload/togglebg.vim
	test -L $(PWD)/.vim/autoload/pathogen.vim || ln -s $(PWD)/vim-pathogen/autoload/pathogen.vim ~/.vim/autoload/pathogen.vim
	test -L $(PWD)/.vim/colors/solarized.vim || ln -s $(PWD)/deps/vim-colors-solarized/colors/solarized.vim ~/.vim/colors/solarized.vim
	test -L $(PWD)/.vim/ftdetect/sas.vim || ln -s $(PWD)/deps/vimfiles/ftdetect/sas.vim ~/.vim/ftdetect/sas.vim
	test -L $(PWD)/.vim/ftplugin/sas.vim || ln -s $(PWD)/deps/vimfiles/ftplugin/sas.vim ~/.vim/ftplugin/sas.vim
	test -L $(PWD)/.vim/indent/sas.vim || ln -s $(PWD)/deps/vimfiles/indent/sas.vim ~/.vim/indent/sas.vim
	test -L $(PWD)/.vim/syntax/sas.vim || ln -s $(PWD)/deps/vimfiles/syntax/sas.vim ~/.vim/syntax/sas.vim

clean:
	rm -f $(PWD)/.vim/autoload/togglebg.vim
	rm -f $(PWD)/.vim/autoload/pathogen.vim
	rm -f $(PWD)/.vim/colors/solarized.vim
	rm -f $(PWD)/.vim/ftdetect/sas.vim
	rm -f $(PWD)/.vim/ftplugin/sas.vim
	rm -f $(PWD)/.vim/indent/sas.vim
	rm -f $(PWD)/.vim/syntax/sas.vim
