# Notebook Bootstrap

My Personal SETUP

## Preview:

![demo](demo.png)

## List of applications

[View application list](https://github.com/brenopolanski/notebook-bootstrap/blob/master/APPLICATIONS.md)

## Installation

1. Clone this repository:

    ```sh
    git clone git@github.com:brenopolanski/notebook-bootstrap.git
    ```

2. Access the directory and add the execute permission through the command below:

    ```sh
    sudo chmod +x install.sh
    ```

3. Run the file:

    ```sh
    ./install.sh
    ```

## After Install

### Configure Git

- Copy `.ssh` folder to computer (path: ~/.ssh/)
  * Add permission in file: `chmod 400 ~/.ssh/id_rsa`
  * Test the connection: `ssh -T git@github.com`
  * Setting your username in Git [[Link](https://help.github.com/articles/setting-your-username-in-git/)]
  * Setting your email in Git [[Link](https://help.github.com/articles/setting-your-email-in-git/)]

### Configure Sublime Text 3

- Install package control [[Download](https://sublime.wbond.net/installation#st3)]

### Configure OH My ZSH

- Theme Bullet Train [[Download](https://github.com/caiogondim/bullet-train-oh-my-zsh-theme)]
- Powerline fonts [[Download](https://github.com/powerline/fonts)]
  - Create a folder `powerline` on `/usr/share/fonts/opentype` and copy the `Inconsolata for Powerline.otf` in this folder

### Install Java

- How To Install Java with `apt` on Ubuntu 18.04 [[Link](https://www.digitalocean.com/community/tutorials/how-to-install-java-with-apt-on-ubuntu-18-04)]
- How to change the default Java version on Ubuntu [[Link](https://attacomsian.com/blog/change-default-java-version-ubuntu)]

### Install Balsamiq Mockups 3

```
# 1. Install wine
sudo apt install wine-stable winetricks

# 2. Download the 'With Adobe Air bundled (for offline installation)'
#   from the baslamiq website. Currently it is Balsamiq_Mockups_3.5.17_bundled.zip
#   and install it in /opt

pushd /opt
sudo unzip ~/Downloads/Balsamiq_Mockups_3.5.17_bundled.zip
sudo ln -s Balsamiq_Mockups_3 balsamiq_3_5_17
sudo ln -s Balsamiq_Mockups_3 balsamiq
pushd /opt/balsamiq
sudo ln -s 'Balsamiq Mockups 3.exe' balsamiq.exe
popd && popd

# 3. Run balsamiq

wine /opt/balsamiq/balsamiq.exe

# 4. Create desktop file so the app may be access from K-menu
echo '[Desktop Entry]
Encoding=UTF-8
Name=Balsamiq Mockups
Icon=/opt/balsamiq/icons/mockups_ico_48.png
Exec=wine ""/opt/balsamiq/Balsamiq Mockups 3.exe""
Type=Application
Categories=Graphics;
MimeType=application/x-xdg-protocol-tg;x-scheme-handler/tg;g;' \
  | sudo tee /usr/share/applications/balsamiq.desktop
```

## Other Applications

### Sublime Packages and Snippets

#### Packages

- Color Highlighter [[Download](https://github.com/Monnoroch/ColorHighlighter)]
- CSS comments [[Download](https://github.com/brenopolanski/css-comments-sublime-snippets)]
- JavaScript and CoffeeScript Console snippets [[Download](https://github.com/caiogondim/js-console-sublime-snippets)]
- CSScomb for Sublime Text [[Download](https://github.com/csscomb/sublime-csscomb)]
- GitGutter [[Download](https://github.com/jisaacks/GitGutter)]
- FileDiffs [[Download](https://github.com/colinta/SublimeFileDiffs)]
- Underscore.js Snippets for Sublime Text 2/3 [[Download](https://github.com/AntouanK/sublime-underscorejs-snippets)]
- Stylus Clean Completions [[Download](https://github.com/lnikell/stylus-clean-completions)]
- Stylus Package for Sublime Text 2/3 [[Download](https://github.com/billymoon/Stylus)]
- Emmet [[Download](https://github.com/sergeche/emmet-sublime)]
- Theme Cobalt 2 [[Download](https://github.com/wesbos/cobalt2)]
- Babel Sublime [[Download](https://github.com/babel/babel-sublime)]
- Babel Snippets [[Download](https://github.com/babel/babel-sublime-snippets)]
- SublimeLinter3 [[Download](https://github.com/SublimeLinter/SublimeLinter3)]
- SublimeLinter-pep8 [[Download](https://github.com/SublimeLinter/SublimeLinter-pep8)]

### Chrome application and extension

#### Application

- Edge: The Web Ruler [[Download](https://chrome.google.com/webstore/detail/edge-the-web-ruler/njlkegdphefeellhaongiopcfgcinikh?utm_source=chrome-ntp-icon)]
- Postman - REST Client [[Download](https://chrome.google.com/webstore/detail/postman-rest-client/fdmmgilgnpjigdojojpjoooidkmcomcm?utm_source=chrome-ntp-icon)]

#### Extension

- ColorZilla [[Download](https://chrome.google.com/webstore/detail/colorzilla/bhlhnicpbhignbdhedgjhgdocnmhomnp?utm_source=chrome-ntp-icon)]
- Strict Workflow [[Download](https://chrome.google.com/webstore/detail/strict-workflow/cgmnfnmlficgeijcalkgnnkigkefkbhd?utm_source=chrome-ntp-icon)]
- AdBlock [[Download](https://chrome.google.com/webstore/detail/adblock/gighmmpiobklfepjocnamgkkbiglidom?utm_source=chrome-ntp-icon)]
- GitHub Linker [[Download](https://chrome.google.com/webstore/detail/github-linker/jlmafbaeoofdegohdhinkhilhclaklkp)]
- React Developer Tools [[Download](https://chrome.google.com/webstore/detail/react-developer-tools/fmkadmapgofadopljbjfkapdkoienihi)]
- Redux DevTools [[Download](https://chrome.google.com/webstore/detail/redux-devtools/lmhkpmbekcpmknklioeibfkpmmfibljd/related?hl=en-US)]
- Form Save And Restore [[Download](https://chrome.google.com/webstore/detail/form-save-and-restore/jknhanfpdjpnkfjjkpofcpegcbhpigcd)]
- Translate selection [[Download](https://chrome.google.com/webstore/detail/translate-selection/enljpjkjokokeigijfbogchbcfnkleak?utm_source=chrome-ntp-icon)]
- OneTab [[Download](https://chrome.google.com/webstore/detail/onetab/chphlpgkkbolifaimnlloiipkdnihall)]
- JSON Viewer [[Download](https://chrome.google.com/webstore/search/json%20viewer?utm_source=chrome-ntp-icon)]
- Wappalyzer [[Download](https://chrome.google.com/webstore/detail/wappalyzer/gppongmhjkpfnbhagpmjfkannfbllamg?utm_source=chrome-ntp-icon)]

### Google Sheets add-on

- ProjectSheet planning [[Download](https://chrome.google.com/webstore/detail/projectsheet-planning/ejljeigigmpdnoohkmbpbgdgmgffjahc)]

## Drivers

- Epson EcoTank L3150 [[Download](http://download.ebz.epson.net/dsc/du/02/DriverDownloadInfo.do?LG2=EN&CN2=&DSCMI=104918&DSCCHK=f4af1a8de19da08e2e1da28e9fbddefc949c9eed)]
