@echo off
title MkDocs Local Server - VSCI Garden
echo ===================================================
echo [VSCI] Запуск локального сервера цифрового сада...
echo ===================================================
cd /d "%~dp0"
python -m mkdocs serve
pause
