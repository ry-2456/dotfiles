rem make symbolic links for vim settings
rem run "rm -rf symbliclink" when removing symbliclink (do not add "\" to the end of the folder)
mklink %HOMEPATH%\_vimrc %HOMEPATH%\dotfiles\.vimrc
mklink /D %HOMEPATH%\vimfiles\colors %HOMEPATH%\dotfiles\colors
