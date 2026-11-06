#!/bin/bash

# Export non-interactive flag to skip all prompts
export DEBIAN_FRONTEND=noninteractive

# Color Variables
RED='\033[1;31m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
BLUE='\033[1;34m'
PURPLE='\033[1;35m'
CYAN='\033[1;36m'
WHITE='\033[1;37m'
NC='\033[0m' # No Color

# Clear Screen
clear

# Sparrow Banner
echo -e "${CYAN}"
echo "=================================================="
echo "   ____  ____   _    ____  ____   ______  _    --"
echo "  / ___||  _ \ / \  |  _ \|  _ \ / __ \ \/ /   --"
echo "  \___ \| |_) / _ \ | |_) | |_) | |  | \  /    --"
echo "   ___) |  __/ ___ \|  _ <|  _ <| |__| |  |    --"
echo "  |____/|_| /_/   \_\_| \_\_| \_\\\\____/|_|    --"
echo "=================================================="
echo -e "${YELLOW}     --- SPARROW FULL AUTOMATIC SETUP SCRIPT ---${NC}"
echo -e "${PURPLE}     --- Zero Prompts | Full Auto Install ---${NC}"
echo "=================================================="
echo ""

sleep 1

# Step 1: Silent Update & Upgrade
echo -e "${BLUE}[*] Updating & Upgrading All Packages...${NC}"
pkg update -y -o Dpkg::Options::="--force-confnew" > /dev/null 2>&1
pkg upgrade -y -o Dpkg::Options::="--force-confnew" > /dev/null 2>&1
echo -e "${GREEN}[+] Repository Updated Successfully!${NC}"
echo "--------------------------------------------------"

# Step 2: Full Package Installation
echo -e "${BLUE}[*] Installing All Developer Tools & Essential Packages...${NC}"
echo -e "${YELLOW}(Git, Python, Java, C/C++, PHP, Node.js, Ruby, Perl, Curl, Wget, etc.)${NC}"

pkg install -y -o Dpkg::Options::="--force-confnew" \
git curl wget openssl \
python python2 python3 \
openjdk-17 clang make cmake \
php nodejs ruby perl \
zip unzip tar unrar p7zip \
nano vim zsh bash-completion \
net-tools nmap tshark htop tree \
ffmpeg imagemagick libffi openssh > /dev/null 2>&1

echo -e "${GREEN}[+] All Tools & Packages Installed Completely!${NC}"
echo "--------------------------------------------------"

# Step 3: Python Pip Auto Upgrade
echo -e "${BLUE}[*] Upgrading Python Package Manager (pip)...${NC}"
python3 -m pip install --upgrade pip --quiet > /dev/null 2>&1
echo -e "${GREEN}[+] Pip Upgraded!${NC}"
echo "--------------------------------------------------"

# Completion Banner
echo -e "${GREEN}"
echo "=================================================="
echo "   [✔] FULL AUTO-SETUP COMPLETED BY SPARROW!   "
echo "   [✔] ALL PACKAGES INSTALLED WITHOUT ANY PROMPT! "
echo "=================================================="
echo -e "${NC}"

