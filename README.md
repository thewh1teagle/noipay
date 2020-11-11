# Noipay

## Renew no-ip ddns hosts automatically


#### Setup (Tested on ubuntu 20.04)
```
sudo apt-get install -y firefox-geckodriver firefox python3 python3-pip
```
Create virtual environment and install requirements
```
pip install requirements.txt
```
Start the script
```
./noipay --user <noip-username> --password <noip-password>
```
If you want the script to be running in headless mode just add ```--headless```

#### Install ( / Uninstall ) as crontab daily service
just run the installer.
```
chmod +x installer.sh
./installer.sh
```
