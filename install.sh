#!/bin/bash

zenity --info --title "Script for developers" --text "This is a simple script for installing useful tools for Web Development and the Ubuntu environment. \n\nCreated by: Breno Polanski <breno.polanski@gmail.com>"

resposta=$(zenity  --list  --text "Choose the packages you want to install." --checklist  --column "Install" --column "Id" --column "Package"\
    FALSE "1" "Restricted-Extras (Audio and video codecs, flash plugin, java and more)"\
    FALSE "2" "Gimp (Image editor)"\
    FALSE "3" "Inkscape (Vector editor)"\
    FALSE "4" "Sublime Text 3"\
	FALSE "5" "Google Chromium"\
    FALSE "6" "Google Chrome"\
    FALSE "7" "Git"\
    FALSE "8" "Gitk"\
    FALSE "9" "NodeJS"\
    FALSE "10" "Yo (Required NodeJS)"\
    FALSE "11" "GruntJs (Required NodeJS)"\
    FALSE "12" "Gulp (Required NodeJS)"\
    FALSE "13" "Bower (Required NodeJS)"\
    FALSE "14" "Pip"\
    FALSE "15" "Oracle Java JDK"\
    --separator=":" --width=750 --height=700)

if [[ $resposta =~ "1" ]]; then
    sudo apt-get -y install ubuntu-restricted-extras
fi

if [[ $resposta =~ "2" ]]; then
    sudo apt-get -y install gimp
fi

if [[ $resposta =~ "3" ]]; then
    sudo apt-get -y install inkscape
fi

if [[ $resposta =~ "4" ]]; then
  sudo add-apt-repository -y ppa:webupd8team/sublime-text-3
  sudo apt-get update
  sudo apt-get -y install sublime-text-installer
fi

if [[ $resposta =~ "5" ]]; then
   sudo apt-get -y install chromium-browser
fi

if [[ $resposta =~ "6" ]]; then
  wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
  sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
  sudo apt-get update
  sudo apt-get install -y google-chrome-stable
fi

if [[ $resposta =~ "7" ]]; then
  sudo apt-get install -y git
fi

if [[ $resposta =~ "8" ]]; then
  sudo apt-get install -y gitk
fi

if [[ $resposta =~ "14" ]]; then
  sudo apt-get install -y python-pip
fi

if [[ $resposta =~ "15" ]]; then
  sudo add-apt-repository -y ppa:webupd8team/java
  sudo apt-get update
  # Install oracle java 7
  sudo apt-get -y install oracle-java7-installer
  sudo update-java-alternatives -s java-7-oracle
  sudo apt-get -y install oracle-java7-set-default
  # Remove openjdk
  sudo apt-get -y purge openjdk-7-jre openjdk-7-jre-lib openjdk-7-jre-headless
fi

# Removing unnecessary packages
sudo apt-get autoremove

zenity --info --title "Installation finished" --text "Installation finished successfully!"
