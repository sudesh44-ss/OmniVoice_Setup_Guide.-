# 🎙️ OmniVoice Offline Installation Guide (Windows)

> Complete step-by-step guide for installing and running OmniVoice locally on Windows.

---

# 🖥️ System Requirements

| Component | Specification                          |
| --------- | -------------------------------------- |
| CPU       | Intel Core i3-9100 or better           |
| RAM       | 12 GB+                                 |
| Storage   | SSD Recommended                        |
| OS        | Windows 10/11                          |
| Internet  | Required for first-time model download |

---

# 📥 Step 1: Clone the Repository

Open **Command Prompt** and run:

```cmd
cd C:\Windows\System32
git clone https://github.com/k2-fsa/OmniVoice.git
cd OmniVoice
```

✅ This downloads the OmniVoice source code to your PC.

---

# 🐍 Step 2: Create a Python Virtual Environment

Create a virtual environment:

```cmd
python -m venv venv
```

Activate it:

```cmd
venv\Scripts\activate
```

You should see:

```text
(venv) C:\Windows\System32\OmniVoice>
```

✅ Virtual environment activated successfully.

---

# 📦 Step 3: Install OmniVoice

⚠️ Do NOT run:

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

instead of a traditional requirements.txt file.

Install OmniVoice using:

```cmd
pip install -e .
```

⏳ Installation time may vary between **15–45 minutes** depending on your internet speed.

---

# 🎵 Step 4: Install FFmpeg

FFmpeg is required for audio processing.

Install:

```cmd
winget install Gyan.FFmpeg
```

Accept the agreement:

```text
Y
```

Verify installation:

```cmd
ffmpeg -version
```

If version information appears, FFmpeg is installed correctly.

✅ Audio processing support enabled.

---

# 🚀 Step 5: Launch OmniVoice

Activate the environment:

```cmd
cd C:\Windows\System32\OmniVoice
venv\Scripts\activate
```

Start OmniVoice:

```cmd
python -m omnivoice.cli.demo
```

---

# 📥 Step 6: First-Time Model Download

When launched for the first time, OmniVoice downloads the model automatically.

Approximate size:

```text
3.27 GB
```

Example:

```text
Loading model from k2-fsa/OmniVoice, device=cpu
```

✅ Download happens only once.

Future launches will use the cached model.

---

# 🌐 Step 7: Open the Web Interface

After startup completes, you should see:

```text
Running on local URL:
http://0.0.0.0:7860
```

Open your browser and visit:

```text
http://localhost:7860
```

or

```text
http://127.0.0.1:7860
```

🎉 OmniVoice is now ready to use.

---

# 🔄 Daily Usage

Every time you want to use OmniVoice:

### Activate Environment

```cmd
cd C:\Windows\System32\OmniVoice
venv\Scripts\activate
```

### Start Server

```cmd
python -m omnivoice.cli.demo
```

### Open Browser

```text
http://localhost:7860
```

---

# ⚡ One-Click Start

Create:

```text
Start_OmniVoice.bat
```

Paste:

```bat
@echo off
cd /d C:\Windows\System32\OmniVoice
call venv\Scripts\activate
start http://localhost:7860
python -m omnivoice.cli.demo
```

🖱️ Double-click to launch OmniVoice instantly.

---

# 🛑 One-Click Stop

Create:

```text
Stop_OmniVoice.bat
```

Paste:

```bat
@echo off
taskkill /F /IM python.exe
```

🖱️ Double-click to stop OmniVoice.

---

# 📋 Important Notes

✅ First launch downloads the model.

✅ Future launches use the cached model.

✅ No need to download the model again.

✅ FFmpeg should be installed for best audio compatibility.

✅ Works locally after setup.

⚠️ Keep the terminal window open while OmniVoice is running.

⚠️ CPU inference is slower than GPU inference.

---

# 🛠️ Troubleshooting Commands

### Check FFmpeg

```cmd
ffmpeg -version
```

### Check Current Folder

```cmd
echo %cd%
```

### Check Running Python Processes

```cmd
tasklist | findstr python
```

### Check OmniVoice Port

```cmd
netstat -ano | findstr 7860
```

### Verify Git Installation

```cmd
git --version
```

### Verify Python Installation

```cmd
python --version
```

---

# 🎯 Quick Start Summary

```cmd
cd C:\Windows\System32\OmniVoice
venv\Scripts\activate
python -m omnivoice.cli.demo
```

Then open:

```text
http://localhost:7860
```

🎙️ Enjoy local voice cloning with OmniVoice!
