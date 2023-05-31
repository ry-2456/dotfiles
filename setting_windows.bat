@rem make symbolic links for vim settings
@rem run "rm -rf symbliclink" when removing symbliclink (do not add "\" to the end of the folder)
mklink %HOMEPATH%\_vimrc %HOMEPATH%\dotfiles\vimrc
mklink /D %HOMEPATH%\vimfiles\colors %HOMEPATH%\dotfiles\colors

@rem make .vimsessions dir to save vim sessions
if not exist %HOMEPATH%\.vimsessions (
  mkdir %HOMEPATH%\.vimsessions
)

@rem install Vundle.vim if not installed
@rem set VUNDLE_INSTALL_PATH = %HOMEPATH%\vimfiles\bundle\Vundle.vim
@rem echo %VUNDLE_INSTALL_PATH%
if exist %HOMEPATH%\vimfiles\bundle\Vundle.vim (
  rmdir /s /q %HOMEPATH%\vimfiles\bundle\Vundle.vim
)
git clone https://github.com/VundleVim/Vundle.vim.git %HOMEPATH%\vimfiles\bundle\Vundle.vim 

