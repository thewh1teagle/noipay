#!/usr/bin/bash


function start_install() {
    echo "Installing noipay"
    sudo apt-get install -y firefox-geckodriver firefox python3 python3-pip
    /usr/bin/pip3 install -r requirements.txt
    chmod +x noipay
    sudo cp noipay /usr/local/bin


    read -p "Noip2 username: " username
    read -p "Noip2 password: " password
    
    crontab -l | { cat; echo "@daily /usr/local/bin/noipay --user $username --password $password --headless"; } | crontab -
    echo "Installed noipay successfuly and added to crontab"
}


function uninstaller() {
    echo "Uninstalling noipay"
    sudo rm -rf /usr/local/bin/noipay ~/.config/last_noipay_running.date
    crontab -l | grep -v *noipay* | crontab -
}



echo "Starting noipay installer..."
if test -f "/usr/local/bin/noipay"; then
    read -p "noipay already installed, do you want to uninstall it? (y/n)? " CONT
    if [ "$CONT" = "y" ]; then
        uninstaller
    else
        echo "Ok, exiting..."
    fi
else
    start_install
fi

