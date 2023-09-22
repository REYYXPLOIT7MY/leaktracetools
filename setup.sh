#!/usr/bin/env bash

# Copyright (c) 2023. Risszxx and contributors.

clear

cat << "EOF"
    //    / /        \\ / /      /__  ___/ //   ) ) //   ) ) / /        //   ) )
   //___ / //___/ /   \  /         / /    //   / / //   / / / /        ((
  / ___   /____  /    / /   ____  / /    //   / / //   / / / /           \\
 //    / /    / /    / /\\       / /    //   / / //   / / / /              ) )
//    / /    / /    / /  \\     / /    ((___/ / ((___/ / / /____/ / ((___ / /

~~by Riszzxx (https://myth.rip)

EOF

echo "Press CTRL+C to cancel."
echo
echo "Note that this script might ask for sudo password."
sleep 3

echo "Creating virtual environment..."
# Create and activate virtual environment
python3 -m venv venv
source venv/bin/activate

echo "Updating pip..."
sleep 1
pip3 install --upgrade pip

echo "Installing dependencies in 3 seconds..."
sleep 3

# Install dependencies
if command -v pip3 >/dev/null 2>&1; then
    pip3 install -r requirements.txt
else
    echo "python3-pip not installed, failed to install dependencies."
fi

sleep 1
echo "Building Leak-Tools to a single executable in 3 seconds..."
sleep 3

chmod +x leaktrace.py

if command -v pyinstaller >/dev/null 2>&1; then
    pyinstaller leaktrace.py --onefile -F
    sleep 1
    chmod +x dist/leaktrace
    sudo mv dist/leaktrace /usr/local/bin/
    rm leaktrace.spec
    rm -r build
    rm -r dist
    echo "Done! Type RisszTools in your terminal to start! OR Do you want to start RisszxTools now? [y/n]"
    read -r answer
    if [ "$answer" = "y" ]; then
        leaktrace
    fi
else
    echo "pyinstaller not installed or not in PATH!"
fi
