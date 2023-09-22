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

echo
echo
echo "Make sure to run this in the directory that you get from personally Risszzxx"
echo
echo "Do you want to update RisszxxLeakTools? [y/n]"
read -r answer
if [ "$answer" = "y" ]; then
    git fetch
    git pull
fi
echo "Run setup.sh to apply changes. Do it now? [y/n]"
read -r answer
if [ "$answer" = "y" ]; then
    bash setup.sh
fi
