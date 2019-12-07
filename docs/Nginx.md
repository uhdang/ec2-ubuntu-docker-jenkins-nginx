# Nginx

## Install to Ubuntu

01. Install

```
sudo apt update             # Update local package
sudo apt install nginx      # Install nginx
```

02. Adjust the Firewall

Check the available `ufw` application profiles with the following command:
```
sudo ufw app list
```

Let's enable the most restrictive profile that will still allow the traffic you've configured,
permitting traffic on port `80`:
```
sudo ufw allow 'Nginx HTTP'
```

Verify the change
```
sudo ufw status
```


03. Checking your Web Server

```
systemctl status nginx
```



## Run Docker


## Uninstall in Ubuntu

```
sudo apt-get remove nginx nginx-common      # Removes all but config files
sudo apt-get purge nginx nginx-common       # Removes everything

sudo apt-get autoremove                     # After above commands, use this to remove dependencies used by nginx which are no longer required.
```



# Reference
- Install to Ubuntu: https://www.digitalocean.com/community/tutorials/how-to-install-nginx-on-ubuntu-18-04-quickstart
- Jenkins, Docker, Proxies and Compose: https://technology.riotgames.com/news/jenkins-docker-proxies-and-compose
