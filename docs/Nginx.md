# Enable subdomain usage

- Create Record Set of Type A with subdomain of your wish and register value with a public IP
- Create a separate config file or add server field to nginx.conf
- Configure server_name field i.e. server_name blog.jeong.eu
- Using proxy_pass, pipe traffic to a running service i.e. docker host of http://jenkins_master_1:8080

ref: https://www.koryporter.com/2019/07/21/using-aws-docker-nginx-and-subdomain-routing-to-host-all-of-your-node-apps-for-free.html



# Install to Ubuntu

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





# Uninstall in Ubuntu

```
sudo apt-get remove nginx nginx-common      # Removes all but config files
sudo apt-get purge nginx nginx-common       # Removes everything

sudo apt-get autoremove                     # After above commands, use this to remove dependencies used by nginx which are no longer required.
```



# Reference
- Install to Ubuntu: https://www.digitalocean.com/community/tutorials/how-to-install-nginx-on-ubuntu-18-04-quickstart
- Jenkins, Docker, Proxies and Compose: https://technology.riotgames.com/news/jenkins-docker-proxies-and-compose
