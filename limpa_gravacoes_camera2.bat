:: Mantem 100 Arquivos, caso tiver quantidade maior, será removido
@ECHO OFF
SETLOCAL
SET "targetdir=D:\MeusPedidos\Arquivos\Cameras\CAM02\MPCAM002"
SET /a retain=80

FOR /f "skip=%retain%delims=" %%a IN (
 'dir /b /o-d "%targetdir%\*" '
 ) DO echo %date% - Diretorio removido: "%targetdir%\%%a" >> D:\MeusPedidos\Arquivos\Cameras\Camera2_deletado.log && rd /s /q "%targetdir%\%%a"
GOTO :EOF