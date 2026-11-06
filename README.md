# Tmuxupdate
# 🚀 Sparrow Termux Auto-Setup

A fully automated Bash script designed for Termux to update packages and install essential developer tools, programming languages, and networking utilities without any manual prompts.

---

## 🛠️ Features
- **Zero Prompts:** Fully automated installation that skips all confirmation prompts (`-y` and non-interactive flags enabled).
- **Silent Mode:** Clean and organized execution logs.
- **Mega Package Suite:** Installs Git, Python (2 & 3), Java (OpenJDK), C/C++ compilers, PHP, Node.js, Ruby, Perl, network tools (Nmap, Net-tools), and compression tools (Zip, Unzip, Tar) all at once.

---

## 📥 Installation & Usage

Copy and paste the following commands into your Termux terminal to download and run the script:

```bash
pkg update && pkg install git -y
git clone https://github.com/sparrowforce143/Tmuxupdate.git
cd Tmuxupdate
chmod +x sparrowupdate.sh
./sparrow update.sh
