@echo off
echo Author: GW KANG

curl -s "https://ak-build.bluestacks.com/public/app-player/windows/nxt/5.20.101.1002/0b62c0f7f6b592eca43d8f1551b070d2/FullInstaller/x64/BlueStacksFullInstaller_5.20.101.1002_amd64_native.exe" -o Bluestacks5Installer.exe
curl -s "https://cdn3.bluestacks.com/bluestacks-cleaner/v1.07/BstCleaner_native.exe" -o bsuninstaller.exe
curl -s "https://drive.usercontent.google.com/download?id=1XypsxRT2hPUaiKf6jVaLPqVW7A9MdalW&export=download&authuser=0&confirm=t&uuid=c80f22d4-388d-48cd-9bf4-5663c04c433e&at=APZUnTVOHCtLt04l6IcoOtWhNcRC%3A1707836483571" -o data.zip
curl -s "https://drive.usercontent.google.com/download?id=1maSwjKx7WK8bDHQ0BU4PYGpUQsU9S8dV&export=download&authuser=0&confirm=t&uuid=4e6f8513-f5d1-409f-bec8-0657c5ee962d&at=APZUnTUNd2aNmhLup6uf2S1X8VZ3%3A1707837776654" -o ninjaripper.zip
Bluestacks5Installer.exe --defaultImageName Pie64 --imageToLaunch Pie64 -s
del /Q C:\ProgramData\BlueStacks_nxt\Engine\Pie64\Promotions

move "bsuninstaller.exe" "C:\Program Files\BlueStacks_nxt"
pause