# OmniVoice Offline Installation Guide (Windows)

## System

* CPU: Intel Core i3-9100
* RAM: 12 GB
* Storage: SSD
* OS: Windows 11

---

# Step 1: Clone Repository

Open Command Prompt:

```cmd
cd C:\Windows\System32
git clone https://github.com/k2-fsa/OmniVoice.git
cd OmniVoice
```

---

# Step 2: Create Virtual Environment

```cmd
python -m venv venv
```

Activate:

```cmd
venv\Scripts\activate
```

You should see:

```text
(venv) C:\Windows\System32\OmniVoice>
```

---

# Step 3: Install OmniVoice

IMPORTANT:

Do NOT run:

```cmd
pip install -r requirements.txt
```

Reason:

```text
ERROR: Could not open requirements file
```

This repository uses:

```text
pyproject.toml
```

instead of requirements.txt.

Install using:

```cmd
pip install -e .
```

Installation may take 15–45 minutes depending on internet speed.

---

# Step 4: Install FFmpeg

Required for audio processing.

Run:

```cmd
winget install Gyan.FFmpeg
```

Accept agreement:

```text
Y
```

Verify installation:

```cmd
ffmpeg -version
```

If version information appears, FFmpeg is installed correctly.

---

# Step 5: Start OmniVoice

Activate venv:

```cmd
cd C:\Windows\System32\OmniVoice
venv\Scripts\activate
```

Launch:

```cmd
python -m omnivoice.cli.demo
```

---

# Step 6: First Launch

First launch downloads model files.

Approximate download:

```text
3.27 GB
```

CPU detected:

```text
device=cpu
```

Download happens only once.

---

# Step 7: Open Web UI

When startup completes:

```text
Running on local URL:
http://0.0.0.0:7860
```

Open browser:

```text
http://localhost:7860
```

or

```text
http://127.0.0.1:7860
```

---

# Daily Usage

Activate:

```cmd
cd C:\Windows\System32\OmniVoice
venv\Scripts\activate
```

Start:

```cmd
python -m omnivoice.cli.demo
```

Open:

```text
http://localhost:7860
```

---

# One-Click Start

Create file:

```text
Start_OmniVoice.bat
```

Content:

```bat
@echo off
cd /d C:\Windows\System32\OmniVoice
call venv\Scripts\activate
start http://localhost:7860
python -m omnivoice.cli.demo
```

Double-click to start OmniVoice.

---

# One-Click Stop

Create:

```text
Stop_OmniVoice.bat
```

Content:

```bat
@echo off
taskkill /F /IM python.exe
```

Double-click to stop OmniVoice.

---

# Notes

* First startup downloads model.
* Later startups use cached model.
* No need to re-download.
* Terminal window must remain open while OmniVoice is running.
* Performance on i3-9100 CPU is slower than GPU.
* Voice generation works locally after model download.

---

# Useful Commands

Check FFmpeg:

```cmd
ffmpeg -version
```

Check current folder:

```cmd
echo %cd%
```

Check running Python:

```cmd
tasklist | findstr python
```

Check port:

```cmd
netstat -ano | findstr 7860
```
