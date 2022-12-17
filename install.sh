#!/bin/bash

DIR_PATH=$(cd $(dirname '${BASH_SOURCE:-$0}') && pwd)
TRALE_PATH="$DIR_PATH/src/standalone-trale"

echo "Getting update"
sudo apt-get update

echo "Installing openjdk"
sudo apt-get install openjdk-17-jre -y

echo "Installing graphviz"
sudo apt-get install graphviz -y

echo "Installing gv"
sudo apt-get install gv -y

echo "Installing TRALE"
chmod +x "$TRALE_PATH/gralej/gralej"
chmod +x "$TRALE_PATH/trale"
chmod +x "$TRALE_PATH/standalone-trale.Linux"
chmod +x "$TRALE_PATH/standalone-trale-tsdb.Linux"

sudo ln -s "$TRALE_PATH/trale" /usr/bin/
sudo ln -s "$TRALE_PATH/gralej/gralej" /usr/bin/grisu

cp src/.trale_startup.pl $HOME
