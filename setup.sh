#!/usr/bin/env bash

# Copyright (c) 2023. Risszxx and contributors.

clear

cat << "EOF"
    //    / /        \\ / /      /__  ___/ //   ) ) //   ) ) / /        //   ) )
   //___ / //___/ /   \  /         / /    //   / / //   / / / /        ((
  / ___   /____  /    / /   ____  / /    //   / / //   / / / /           \\
 //    / /    / /    / /\\       / /    //   / / //   / / / /              ) )
//    / /    / /    / /  \\     / /    ((___/ / ((___/ / / /____/ / ((___ / /

~~by Risszxx (https://myth.rip)

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
echo "Building RisszxxLeak-Tools to a single executable in 3 seconds..."
sleep 3

chmod +x leaktrace.py

if command -v pyinstaller >/dev/null 2>&1; then
    pyinstaller leaktrace.py --onefile -F
    sleep 1
    chmod +x dist/leaktracetools
    sudo mv dist/leaktracetools /usr/local/bin/
    rm leaktracetools.spec
    rm -r build
    rm -r dist
    echo "Done! Type leaktracetools in your terminal to start! OR Do you want to start RisszxxLeakTools now? [y/n]"
    read -r answer
    if [ "$answer" = "y" ]; then
        leaktracetools
    fi
else
    echo "pyinstaller not installed or not in PATH!"
fi
