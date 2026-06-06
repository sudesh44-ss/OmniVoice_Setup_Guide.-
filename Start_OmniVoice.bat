@echo off
cd /d C:\Windows\System32\OmniVoice
call venv\Scripts\activate
start http://localhost:7860
python -m omnivoice.cli.demo