#!/bin/bash

# My Personal SETUP
# Created by: Breno Polanski <breno.polanski@gmail.com>

zenity --info --title "My Personal SETUP" --text "This is a simple script for installing useful tools for Web Development and the Ubuntu environment. \n\nCreated by: Breno Polanski <breno.polanski@gmail.com>"

answer=$(zenity  --list  --text "Choose the packages you want to install." --checklist  --column "Install" --column "Id" --column "Package" --column "Description"\
  FALSE "1" "Restricted-Extras" "Audio and video codecs, flash plugin, java and more"\
  FALSE "2" "Gimp" "Image editor"\
  FALSE "3" "Inkscape" "Vector editor"\
  FALSE "4" "Sublime Text 3" ""\
  FALSE "5" "Google Chromium" ""\
  FALSE "6" "Google Chrome" ""\
  FALSE "7" "Git" ""\
  FALSE "8" "Gitk" ""\
  FALSE "9" "NodeJS 6.x" "Includes npm 3.x"\
  FALSE "10" "Yo" "Required NodeJS"\
  FALSE "11" "GruntJS" "Required NodeJS"\
  FALSE "12" "Gulp" "Required NodeJS"\
  FALSE "13" "Bower" "Required NodeJS"\
  FALSE "14" "Pip" ""\
  FALSE "15" "Oracle Java JDK" ""\
  FALSE "16" "FileZilla" ""\
  FALSE "17" "Skype" ""\
  FALSE "18" "Yarn" "Required NodeJS"\
  FALSE "19" "Vim" ""\
  FALSE "20" "Maven" ""\
  FALSE "21" "Zsh" ""\
  FALSE "22" "Tree" "Print the directory tree"\
  FALSE "23" "Shutter" "Screenshot program"\
  FALSE "24" "Simple Screen Recorder" "Screen recorder"\
  FALSE "25" "Fuck You" "A rage-y way of killing yo processes (Required NodeJS)"\
  FALSE "26" "Unity Tweak Tool" ""\
  FALSE "27" "Heroku Toolbelt" ""\
  FALSE "28" "Dropbox" ""\
  FALSE "29" "Franz" "Free messaging app"\
  FALSE "30" "npm-check-updates" ""\
  FALSE "31" "Spotify" ""\
  FALSE "32" "FFmpeg" ""\
  --separator=":" --width=750 --height=700)

if [[ $answer =~ "1" ]]; then
  sudo apt-get -y install ubuntu-restricted-extras
fi

if [[ $answer =~ "2" ]]; then
  sudo apt-get -y install gimp
fi

if [[ $answer =~ "3" ]]; then
  sudo apt-get -y install inkscape
fi

if [[ $answer =~ "4" ]]; then
	# add repository
  sudo add-apt-repository -y ppa:webupd8team/sublime-text-3
  sudo apt-get update
  sudo apt-get -y install sublime-text-installer
fi

if [[ $answer =~ "5" ]]; then
  sudo apt-get -y install chromium-browser
fi

if [[ $answer =~ "6" ]]; then
  wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
  sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
  sudo apt-get update
  sudo apt-get install -y google-chrome-stable
fi

if [[ $answer =~ "7" ]]; then
  sudo apt-get install -y git
fi

if [[ $answer =~ "8" ]]; then
  sudo apt-get install -y gitk
fi

if [[ $answer =~ "9" ]]; then
  # installing dependencies
  sudo apt-get install -y python-software-properties python g++ make
  # add repository
  sudo curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
  sudo apt-get update
  sudo apt-get install -y nodejs
  # fix to not need to run sudo
  echo prefix = ~/.node >> ~/.npmrc
  echo 'export PATH=$HOME/.node/bin:$PATH' >> ~/.bashrc
  echo 'export PATH=$HOME/.node/bin:$PATH' >> ~/.zshrc
fi

if [[ $answer =~ "10" ]]; then
	sudo npm install -g yo
fi

if [[ $answer =~ "11" ]]; then
	sudo npm install -g grunt-cli
fi

if [[ $answer =~ "12" ]]; then
	sudo npm install -g gulp-cli
fi

if [[ $answer =~ "13" ]]; then
	sudo npm install -g bower
fi

if [[ $answer =~ "14" ]]; then
  sudo apt-get install -y python-pip
fi

if [[ $answer =~ "15" ]]; then
	# add repository
  sudo add-apt-repository -y ppa:webupd8team/java
  sudo apt-get update
  # install oracle java 7
  sudo apt-get -y install oracle-java7-installer
  sudo update-java-alternatives -s java-7-oracle
  sudo apt-get -y install oracle-java7-set-default
  # install oracle java 8
  sudo apt-get -y install oracle-java8-installer
  sudo update-java-alternatives -s java-8-oracle
  sudo apt-get -y install oracle-java8-set-default
  # remove openjdk
  sudo apt-get -y purge openjdk-7-jre openjdk-7-jre-lib openjdk-7-jre-headless openjdk-8-jre openjdk-8-jre-lib openjdk-8-jre-headless
fi

if [[ $answer =~ "16" ]]; then
	sudo apt-get install -y filezilla
fi

if [[ $answer =~ "17" ]]; then
	sudo sh -c 'echo "deb http://archive.canonical.com/ubuntu trusty partner" >> /etc/apt/sources.list.d/canonical_partner.list'
	sudo apt-get update
	sudo apt-get install -y skype
fi

if [[ $answer =~ "18" ]]; then
  curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
  echo "deb http://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
  sudo apt-get update
  sudo apt-get install -y yarn
fi

if [[ $answer =~ "19" ]]; then
	sudo apt-get install vim
fi

if [[ $answer =~ "20" ]]; then
	sudo apt-get install maven
fi

if [[ $answer =~ "21" ]]; then
	sudo apt-get install zsh
	# install OH My ZSH
	sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

if [[ $answer =~ "22" ]]; then
	sudo apt-get install tree
fi

if [[ $answer =~ "23" ]]; then
	sudo apt-get install shutter
fi

if [[ $answer =~ "24" ]]; then
	# add repository
  sudo add-apt-repository ppa:maarten-baert/simplescreenrecorder -y
  sudo apt-get update
  sudo apt-get install simplescreenrecorder -y
  # if you want to record 32-bit OpenGL applications on a 64-bit system:
  sudo apt-get install simplescreenrecorder-lib:i386 -y
fi

if [[ $answer =~ "25" ]]; then
	sudo npm install -g fuck-you
fi

if [[ $answer =~ "26" ]]; then
	sudo apt-get install unity-tweak-tool
fi

if [[ $answer =~ "27" ]]; then
	wget -O- https://toolbelt.heroku.com/install-ubuntu.sh | sh
fi

if [[ $answer =~ "28" ]]; then
	sudo apt-get install -y nautilus-dropbox
fi

if [[ $answer =~ "29" ]]; then
  wget https://github.com/meetfranz/franz-app/releases/download/4.0.4/Franz-linux-x64-4.0.4.tgz -O franz.tgz
  sudo mkdir /opt/franz
  sudo tar -vzxf franz.tgz -C /opt/franz/
  sudo ln -sf /opt/franz/Franz /usr/bin/franz
  echo -e '[Desktop Entry]\n Version=1.0\n Name=franz\n Exec=/opt/franz/Franz\n Icon=/opt/franz/resources/app.asar.unpacked/assets/franz.png\n Type=Application\n Categories=Application' | sudo tee /usr/share/applications/franz.desktop
  sudo rm -R franz.tgz
fi

if [[ $answer =~ "30" ]]; then
  sudo npm install -g npm-check-updates
fi

if [[ $answer =~ "31" ]]; then
  # add repository
  sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2C19886
  echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
  sudo apt-get update
  sudo apt-get install -y spotify-client
fi

if [[ $answer =~ "32" ]]; then
  # add repository
  sudo add-apt-repository ppa:kirillshkrogalev/ffmpeg-next
  sudo apt-get update
  sudo apt-get install -y ffmpeg
fi

# Clean up
sudo apt-get -y autoclean

# Removing unnecessary packages
sudo apt-get -y autoremove

zenity --info --title "Installation finished" --text "Installation finished successfully!"
