:: Mantem 365 dias, caso tiver quantidade maior, será removido
::@ECHO OFF
SETLOCAL
SET targetdir=G:\Meu Drive\RH\Bkp_Acesso\
SET logdir=G:\Meu Drive\RH\Logs\Remove_BKP_Acesso.log
SET /a retain=364

FOR /f "skip=%retain%delims=" %%a IN (
 'dir /b /o-d "%targetdir%*" '
 ) DO echo %date% - Arquivo removido: "%targetdir%%%a" >> "%logdir%" && del /q "%targetdir%%%a"

Goto :eof