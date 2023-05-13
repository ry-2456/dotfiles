rem make symbolic links for vim settings
rem run "rm -rf symbliclink" when removing symbliclink (do not add "\" to the end of the folder)
mklink %HOMEPATH%\_vimrc %HOMEPATH%\dotfiles\.vimrc
mklink /D %HOMEPATH%\vimfiles\colors %HOMEPATH%\dotfiles\colors

rem install Vundle.vim if not installed
if exist "%HOMEPATH%\bundle\Vundle.vim" (
  git clone https://github.com/VundleVim/Vundle.vim %HOMEPATH%\bundle\Vundle.vim 
)
