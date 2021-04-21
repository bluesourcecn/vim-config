@echo off
set nvimrc="%~dp0..\"

echo ============
echo 1.install
echo 2.uninstall
echo 3.end
echo ============
set /p input=please input your choice:

if "%input%"=="1" goto install
if "%input%"=="2" goto uninstall
if "%input%"=="3" goto end

:install
::mklink %userprofile%\AppData\Local\nvim %home%\.nvimrc
mklink %home%\vimfiles %home%\.nvimrc
::mklink /d %userprofile%\AppData\Local\nvim-data %nvimrc%
::mklink /d %userprofile%\AppData\Local\coc %nvimrc%\coc-data
attrib +h /l %home%\.nvimrc
attrib +h /l %home%\vimfiles
if not exist "%home%/.nvimrc/autoload/plug.vim" (
goto installPlugVim 
) else (
echo file exist! 
)
goto end

:uninstall
del /s /q /f %userprofile%\AppData\Local\nvim
rd /s /q %userprofile%\AppData\Local\nvim-data
rd /s /q %userprofile%\AppData\Local\coc
del /s /q /f %home%\vimfiles
goto end

:installPlugVim
curl -fLo %home%/.nvimrc/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

:end
@exit