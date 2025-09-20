@echo off
chcp 65001 >nul
setlocal enabledelayedexpansion

:: Rainbow colors for Windows batch (using ANSI escape sequences)
set "RED=[91m"
set "ORANGE=[93m"
set "YELLOW=[93m"
set "GREEN=[92m"
set "BLUE=[94m"
set "INDIGO=[95m"
set "VIOLET=[96m"
set "RESET=[0m"

cls
echo.
echo %RED%   ___  **    **______  ___       ___          ___       ___  ________   ___  ___     ___    ___      ___       **   **_  ________      %RESET%
echo %ORANGE%|\  \|\  \ |\   **  \|\  \     |\  \        |\  \     |\  \|\   **_  \|\  \|\  \   |\  \  /  /^|    |\  \     |\  \|\  \|\   ___  \    %RESET%
echo %YELLOW%\ \  \/  /^|\ \  \^|\  \ \  \    \ \  \       \ \  \    \ \  \ \  \\ \  \ \  \\\  \  \ \  \/  / /    \ \  \    \ \  \ \  \ \  \\ \  \   %RESET%
echo %GREEN% \ \   ___  \ \   **  \ \  \    \ \  \       \ \  \    \ \  \ \  \\ \  \ \  \\\  \  \ \    / /      \ \  \  **\ \  \ \  \ \  \\ \  \  %RESET%
echo %BLUE%  \ \  \\ \  \ \  \ \  \ \  \____\ \  \       \ \  \____\ \  \ \  \\ \  \ \  \\\  \  /     \/        \ \  \^|__\_\  \ \  \ \  \\ \  \ %RESET%
echo %INDIGO%   \ \__\\ \__\ \__\ \__\ \_______\ \__\       \ \_______\ \__\ \__\\ \__\ \_______\/  /\   \         \ \____________\ \__\ \__\\ \__\%RESET%
echo %VIOLET%    \^|__^| \^|__^|\^|__^|\^|__^|\^|_______^|\^|__^|        \^|_______^|\^|__^|\^|__^| \^|__^|\^|_______/__/ /\ **\         \^|**__________^|\^|__^|\^|__^| \^|__^|%RESET%
echo %RED%                                                                                   ^|__^| / \^|__^|%RESET%
echo.
echo %GREEN%=============================================================================%RESET%
echo %YELLOW%                    WINDOWS TO KALI LINUX COMMAND CONVERTER%RESET%
echo %GREEN%=============================================================================%RESET%
echo.

:menu
echo %CYAN%Select a category:%RESET%
echo %RED%1.%RESET% %YELLOW%File Operations%RESET%
echo %RED%2.%RESET% %YELLOW%Directory Operations%RESET%
echo %RED%3.%RESET% %YELLOW%Network Commands%RESET%
echo %RED%4.%RESET% %YELLOW%System Information%RESET%
echo %RED%5.%RESET% %YELLOW%Process Management%RESET%
echo %RED%6.%RESET% %YELLOW%Text Processing%RESET%
echo %RED%7.%RESET% %YELLOW%Permission Commands%RESET%
echo %RED%8.%RESET% %YELLOW%Search Commands%RESET%
echo %RED%9.%RESET% %YELLOW%Archive Commands%RESET%
echo %RED%0.%RESET% %RED%Exit%RESET%
echo.
set /p choice=%BLUE%Enter your choice (0-9): %RESET%

if "%choice%"=="1" goto file_ops
if "%choice%"=="2" goto dir_ops
if "%choice%"=="3" goto network
if "%choice%"=="4" goto system_info
if "%choice%"=="5" goto process
if "%choice%"=="6" goto text_proc
if "%choice%"=="7" goto permissions
if "%choice%"=="8" goto search
if "%choice%"=="9" goto archive
if "%choice%"=="0" goto exit
goto menu

:file_ops
cls
echo %GREEN%=============================================================================%RESET%
echo %YELLOW%                           FILE OPERATIONS%RESET%
echo %GREEN%=============================================================================%RESET%
echo.
echo %RED%WINDOWS COMMAND%RESET%                    %BLUE%KALI LINUX EQUIVALENT%RESET%
echo %GREEN%---------------------------------------------------------------------------------%RESET%
echo %ORANGE%copy file1.txt file2.txt%RESET%        %VIOLET%cp file1.txt file2.txt%RESET%
echo %ORANGE%move file1.txt newloc\%RESET%          %VIOLET%mv file1.txt newloc/%RESET%
echo %ORANGE%del file.txt%RESET%                    %VIOLET%rm file.txt%RESET%
echo %ORANGE%ren oldname.txt newname.txt%RESET%     %VIOLET%mv oldname.txt newname.txt%RESET%
echo %ORANGE%type file.txt%RESET%                   %VIOLET%cat file.txt%RESET%
echo %ORANGE%more file.txt%RESET%                   %VIOLET%less file.txt%RESET%
echo %ORANGE%fc file1.txt file2.txt%RESET%          %VIOLET%diff file1.txt file2.txt%RESET%
echo %ORANGE%attrib file.txt%RESET%                 %VIOLET%ls -la file.txt%RESET%
echo %ORANGE%edit file.txt%RESET%                   %VIOLET%nano file.txt ^| vim file.txt%RESET%
echo %ORANGE%xcopy /s source dest%RESET%            %VIOLET%cp -r source dest%RESET%
echo.
pause
goto menu

:dir_ops
cls
echo %GREEN%=============================================================================%RESET%
echo %YELLOW%                         DIRECTORY OPERATIONS%RESET%
echo %GREEN%=============================================================================%RESET%
echo.
echo %RED%WINDOWS COMMAND%RESET%                    %BLUE%KALI LINUX EQUIVALENT%RESET%
echo %GREEN%---------------------------------------------------------------------------------%RESET%
echo %ORANGE%dir%RESET%                             %VIOLET%ls%RESET%
echo %ORANGE%dir /a%RESET%                          %VIOLET%ls -la%RESET%
echo %ORANGE%cd directory%RESET%                    %VIOLET%cd directory%RESET%
echo %ORANGE%cd ..%RESET%                           %VIOLET%cd ..%RESET%
echo %ORANGE%cd\%RESET%                             %VIOLET%cd /%RESET%
echo %ORANGE%mkdir newfolder%RESET%                 %VIOLET%mkdir newfolder%RESET%
echo %ORANGE%rmdir folder%RESET%                    %VIOLET%rmdir folder%RESET%
echo %ORANGE%rmdir /s folder%RESET%                 %VIOLET%rm -rf folder%RESET%
echo %ORANGE%tree%RESET%                            %VIOLET%tree%RESET%
echo %ORANGE%chdir%RESET%                           %VIOLET%pwd%RESET%
echo %ORANGE%pushd^/popd%RESET%                      %VIOLET%pushd^/popd%RESET%
echo.
pause
goto menu

:network
cls
echo %GREEN%=============================================================================%RESET%
echo %YELLOW%                           NETWORK COMMANDS%RESET%
echo %GREEN%=============================================================================%RESET%
echo.
echo %RED%WINDOWS COMMAND%RESET%                    %BLUE%KALI LINUX EQUIVALENT%RESET%
echo %GREEN%---------------------------------------------------------------------------------%RESET%
echo %ORANGE%ping hostname%RESET%                   %VIOLET%ping hostname%RESET%
echo %ORANGE%tracert hostname%RESET%                %VIOLET%traceroute hostname%RESET%
echo %ORANGE%nslookup hostname%RESET%               %VIOLET%nslookup hostname ^| dig hostname%RESET%
echo %ORANGE%ipconfig%RESET%                        %VIOLET%ip addr show ^| ifconfig%RESET%
echo %ORANGE%ipconfig /all%RESET%                   %VIOLET%ip addr show%RESET%
echo %ORANGE%netstat -an%RESET%                     %VIOLET%netstat -an ^| ss -tuln%RESET%
echo %ORANGE%arp -a%RESET%                          %VIOLET%arp -a%RESET%
echo %ORANGE%telnet host port%RESET%                %VIOLET%telnet host port%RESET%
echo %ORANGE%ftp hostname%RESET%                    %VIOLET%ftp hostname%RESET%
echo %ORANGE%net view%RESET%                        %VIOLET%smbclient -L hostname%RESET%
echo %ORANGE%route print%RESET%                     %VIOLET%route -n ^| ip route%RESET%
echo.
pause
goto menu

:system_info
cls
echo %GREEN%=============================================================================%RESET%
echo %YELLOW%                         SYSTEM INFORMATION%RESET%
echo %GREEN%=============================================================================%RESET%
echo.
echo %RED%WINDOWS COMMAND%RESET%                    %BLUE%KALI LINUX EQUIVALENT%RESET%
echo %GREEN%---------------------------------------------------------------------------------%RESET%
echo %ORANGE%systeminfo%RESET%                      %VIOLET%uname -a ^| hostnamectl%RESET%
echo %ORANGE%ver%RESET%                             %VIOLET%lsb_release -a%RESET%
echo %ORANGE%hostname%RESET%                        %VIOLET%hostname%RESET%
echo %ORANGE%whoami%RESET%                          %VIOLET%whoami%RESET%
echo %ORANGE%date%RESET%                            %VIOLET%date%RESET%
echo %ORANGE%time%RESET%                            %VIOLET%date +%%T%RESET%
echo %ORANGE%vol%RESET%                             %VIOLET%df -h%RESET%
echo %ORANGE%mem%RESET%                             %VIOLET%free -h%RESET%
echo %ORANGE%driverquery%RESET%                     %VIOLET%lsmod%RESET%
echo %ORANGE%wmic cpu get name%RESET%               %VIOLET%lscpu%RESET%
echo %ORANGE%echo %%PATH%%%RESET%                    %VIOLET%echo $PATH%RESET%
echo.
pause
goto menu

:process
cls
echo %GREEN%=============================================================================%RESET%
echo %YELLOW%                         PROCESS MANAGEMENT%RESET%
echo %GREEN%=============================================================================%RESET%
echo.
echo %RED%WINDOWS COMMAND%RESET%                    %BLUE%KALI LINUX EQUIVALENT%RESET%
echo %GREEN%---------------------------------------------------------------------------------%RESET%
echo %ORANGE%tasklist%RESET%                        %VIOLET%ps aux%RESET%
echo %ORANGE%taskkill /PID 1234%RESET%              %VIOLET%kill 1234%RESET%
echo %ORANGE%taskkill /F /PID 1234%RESET%           %VIOLET%kill -9 1234%RESET%
echo %ORANGE%taskkill /IM process.exe%RESET%        %VIOLET%killall process%RESET%
echo %ORANGE%start program.exe%RESET%               %VIOLET%./program ^&%RESET%
echo %ORANGE%wmic process list%RESET%               %VIOLET%ps -ef%RESET%
echo %ORANGE%schtasks%RESET%                        %VIOLET%crontab -l%RESET%
echo %ORANGE%at 14:30 command%RESET%                %VIOLET%at 14:30 command%RESET%
echo %ORANGE%runas /user:admin cmd%RESET%           %VIOLET%sudo command%RESET%
echo %ORANGE%services.msc%RESET%                    %VIOLET%systemctl list-units%RESET%
echo.
pause
goto menu

:text_proc
cls
echo %GREEN%=============================================================================%RESET%
echo %YELLOW%                          TEXT PROCESSING%RESET%
echo %GREEN%=============================================================================%RESET%
echo.
echo %RED%WINDOWS COMMAND%RESET%                    %BLUE%KALI LINUX EQUIVALENT%RESET%
echo %GREEN%---------------------------------------------------------------------------------%RESET%
echo %ORANGE%find "text" file.txt%RESET%            %VIOLET%grep "text" file.txt%RESET%
echo %ORANGE%findstr "pattern" file.txt%RESET%      %VIOLET%grep "pattern" file.txt%RESET%
echo %ORANGE%sort file.txt%RESET%                   %VIOLET%sort file.txt%RESET%
echo %ORANGE%echo "text"%RESET%                     %VIOLET%echo "text"%RESET%
echo %ORANGE%echo text ^> file.txt%RESET%            %VIOLET%echo text ^> file.txt%RESET%
echo %ORANGE%echo text ^>^> file.txt%RESET%           %VIOLET%echo text ^>^> file.txt%RESET%
echo %ORANGE%wc file.txt (Word Count)%RESET%        %VIOLET%wc file.txt%RESET%
echo %ORANGE%powershell Select-String%RESET%        %VIOLET%grep -n "pattern" file%RESET%
echo %ORANGE%clip ^< file.txt%RESET%                 %VIOLET%xclip ^< file.txt%RESET%
echo %ORANGE%command ^| more%RESET%                  %VIOLET%command ^| less%RESET%
echo.
pause
goto menu

:permissions
cls
echo %GREEN%=============================================================================%RESET%
echo %YELLOW%                         PERMISSION COMMANDS%RESET%
echo %GREEN%=============================================================================%RESET%
echo.
echo %RED%WINDOWS COMMAND%RESET%                    %BLUE%KALI LINUX EQUIVALENT%RESET%
echo %GREEN%---------------------------------------------------------------------------------%RESET%
echo %ORANGE%icacls file.txt%RESET%                 %VIOLET%ls -la file.txt%RESET%
echo %ORANGE%icacls file /grant user:F%RESET%       %VIOLET%chmod 777 file%RESET%
echo %ORANGE%takeown /f file.txt%RESET%             %VIOLET%sudo chown user file.txt%RESET%
echo %ORANGE%cacls file.txt%RESET%                  %VIOLET%ls -la file.txt%RESET%
echo %ORANGE%net user%RESET%                        %VIOLET%cat /etc/passwd%RESET%
echo %ORANGE%net localgroup%RESET%                  %VIOLET%cat /etc/group%RESET%
echo %ORANGE%whoami /groups%RESET%                  %VIOLET%groups%RESET%
echo %ORANGE%runas /user:admin%RESET%               %VIOLET%sudo -u admin%RESET%
echo %ORANGE%net user username password%RESET%     %VIOLET%passwd username%RESET%
echo %ORANGE%attrib +h file.txt%RESET%              %VIOLET%chmod 600 file.txt%RESET%
echo.
pause
goto menu

:search
cls
echo %GREEN%=============================================================================%RESET%
echo %YELLOW%                           SEARCH COMMANDS%RESET%
echo %GREEN%---------------------------------------------------------------------------------%RESET%
echo.
echo %RED%WINDOWS COMMAND%RESET%                    %BLUE%KALI LINUX EQUIVALENT%RESET%
echo %GREEN%---------------------------------------------------------------------------------%RESET%
echo %ORANGE%dir /s filename%RESET%                 %VIOLET%find . -name filename%RESET%
echo %ORANGE%where filename%RESET%                  %VIOLET%which filename%RESET%
echo %ORANGE%findstr /s "text" *.*%RESET%           %VIOLET%grep -r "text" .%RESET%
echo %ORANGE%dir *.txt%RESET%                       %VIOLET%find . -name "*.txt"%RESET%
echo %ORANGE%forfiles /m *.log%RESET%               %VIOLET%find . -name "*.log"%RESET%
echo %ORANGE%dir /b%RESET%                          %VIOLET%ls -1%RESET%
echo %ORANGE%dir /od%RESET%                         %VIOLET%ls -lt%RESET%
echo %ORANGE%dir /os%RESET%                         %VIOLET%ls -lS%RESET%
echo %ORANGE%locate filename (if available)%RESET% %VIOLET%locate filename%RESET%
echo %ORANGE%reg query HKLM%RESET%                  %VIOLET%No direct equivalent%RESET%
echo.
pause
goto menu

:archive
cls
echo %GREEN%=============================================================================%RESET%
echo %YELLOW%                          ARCHIVE COMMANDS%RESET%
echo %GREEN%=============================================================================%RESET%
echo.
echo %RED%WINDOWS COMMAND%RESET%                    %BLUE%KALI LINUX EQUIVALENT%RESET%
echo %GREEN%---------------------------------------------------------------------------------%RESET%
echo %ORANGE%tar (Windows 10+)%RESET%               %VIOLET%tar -czf archive.tar.gz files%RESET%
echo %ORANGE%powershell Compress-Archive%RESET%     %VIOLET%zip -r archive.zip folder%RESET%
echo %ORANGE%powershell Expand-Archive%RESET%       %VIOLET%unzip archive.zip%RESET%
echo %ORANGE%7z a archive.7z files%RESET%           %VIOLET%7z a archive.7z files%RESET%
echo %ORANGE%7z x archive.7z%RESET%                 %VIOLET%7z x archive.7z%RESET%
echo %ORANGE%winrar commands%RESET%                 %VIOLET%rar a archive.rar files%RESET%
echo %ORANGE%compact /c folder%RESET%               %VIOLET%gzip file%RESET%
echo %ORANGE%expand archive.cab%RESET%              %VIOLET%cabextract archive.cab%RESET%
echo %ORANGE%makecab file.txt%RESET%                %VIOLET%No direct equivalent%RESET%
echo %ORANGE%bitsadmin (download)%RESET%            %VIOLET%wget URL ^| curl -O URL%RESET%
echo.
pause
goto menu

:exit
echo.
echo %GREEN%=============================================================================%RESET%
echo %YELLOW%              Thank you for using Windows to Kali Converter!%RESET%
echo %VIOLET%                         Happy Hacking! 🐧%RESET%
echo %GREEN%=============================================================================%RESET%
echo.
pause
exit /b
