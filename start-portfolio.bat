@echo off
REM Starts a local web server and opens the portfolio so the contact form can send email.
cd /d "%~dp0"
start "Portfolio Server" /min python -m http.server 5500 --bind 127.0.0.1
timeout /t 2 /nobreak >nul
start "" "http://127.0.0.1:5500/monika_developer_portfolio.html#contact"
