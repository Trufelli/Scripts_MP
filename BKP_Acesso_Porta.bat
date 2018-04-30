:: Script para fazer BKP do sistema de porta e salvar no Gdrive (Infra@meuspedidos.com.br)

set targetdir=D:\MeusPedidos\Programas\Automatiza\SoapAdminCA\Files\
set targetfile=att2000.mdb
set temp_bkp=C:\temp\bkp_acesso\
set bkp_dir=G:\Meu Drive\RH\Bkp_Acesso
set bkp_log=G:\Meu Drive\RH\Logs\Backup_Acesso.log
set scripts_dir=D:\MeusPedidos\Scripts

xcopy "%targetdir%%targetfile%" "%temp_bkp%" /s /i
%scripts_dir%\7za.exe a "%temp_bkp%%date:~6,4%-%date:~3,2%-%date:~0,2%-att200.zip" "%temp_bkp%"
move "%temp_bkp%\%date:~6,4%-%date:~3,2%-%date:~0,2%-att200.zip" "%bkp_dir%"
echo %date% - Backup %date:~6,4%-%date:~3,2%-%date:~0,2%-att200.zip criado! >> "G:\Meu Drive\RH\Logs\Backup_Acesso.log"
rd /s /q "%temp_bkp%"