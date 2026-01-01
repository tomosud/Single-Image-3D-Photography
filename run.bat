@echo off
chcp 65001 >nul
setlocal

pushd "%~dp0"

REM 仮想環境の存在確認
if not exist ".venv\Scripts\python.exe" (
    echo ERROR: 仮想環境が見つかりません。
    echo まず setup.bat を実行してセットアップを完了してください。
    echo.
    pause
    exit /b 1
)

REM Pythonスクリプトを実行
.venv\Scripts\python.exe main.py --config config.yaml

pause
