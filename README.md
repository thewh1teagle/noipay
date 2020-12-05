# Noipay

## Renew no-ip ddns hosts automatically


### Setup (Tested on ubuntu 20.04)
Install necessary tools
```
sudo apt-get install -y firefox-geckodriver firefox python3 python3-pip
```
Install python requirements
```
pip3 install -r requirements.txt
```

### Basic usage
```
$ ./noipay --help
usage: noipay [-h] -u USER -p PASSWORD [-d {chrome,firefox}] [--headless] [-l]

Renew noip2 hosts

optional arguments:
  -h, --help            show this help message and exit
  -d {chrome,firefox}, --driver {chrome,firefox}
                        Choose which browser to use as selenium driver [chrome / firefox]
  --headless            Start browser in headless mode
  -l, --last_confirm    Display last hosts confirm date of noipay

required arguments:
  -u USER, --user USER  Noip2 user name
  -p PASSWORD, --password PASSWORD
                        Noip2 password
```
### Install
The installer will install everything you need

and it will run as a crontab daily service.

Use the installer for uninstall as well.
```
chmod +x installer.sh
./installer.sh
```
