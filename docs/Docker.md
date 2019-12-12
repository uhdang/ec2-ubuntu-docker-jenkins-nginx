# Docker

## Command-line Interface

```
docker search ubuntu            # Search docker image
```


## Execute docker command without sudo

By default managing, Docker requires administrator privileges. To run Docker commands as a non-root user without 
prepending `sudo` you need to add your user to `docker` group. This group is created during
the installation of the Docker CE package. `$USER` is an environment variable that holds your username
```
sudo usermod -aG docker $USER       # Add the user to docker group
whoami                              # check username
echo "$USER"                        # echo out $USER env variable
groups                              # list groups members
groups $USER                        # get a list of groups a user belongs to
```

Log out and log back in to refresh the group membership.


## Install Docker

### Enabling Docker repository

01. Start by updating the packages list and installing the dependencies necessary to add a new repository over HTTPS:
```
sudo apt update         # Update existing packages
sudo apt install apt-transport-https ca-certificates curl gnupg-agent software-properties-common
```

02. Import the repository's GPG key using the following `curl` command:
```
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
```

03. Add the Docker APT repository to your system:
```
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
```

### Installing Docker CE

```
# Install the latest version
sudo apt update
sudo apt install docker-ce

# Install a specific version
apt list -a docker-ce                                       # List the available versions in the Docker repository
sudo apt install docker-ce=5:18.09.6±3-0-ubuntu-bionic      # Example
```

### Others
```
sudo apt-mark hold docker-ce                                # Mark it as held back to prevent automatic update
sudo systemctl start docker                                 # Start docker service
sudo systemctl enable docker                                # Enable docker on start
sudo systemctl status docker                                # verify Docker service
```

### Remove Images
```
docker systme prune -a --volumes
```


## Uninstall Docker
```
sudo apt purge docker-ce
sudo apt autoremove
```

## Upgrade Docker
```
sudo apt update
sudo apt upgrade
```


# Docker-Compose

## Build partial service
```
docker-compose build [SERVICENAME]
i.e. docker-compose biuild elasticsearch

```

## Install Docker-compose
```
# 1. Download the Docker Compose binary into the `/usr/local/bin` directory with curl command:
# - 1.23.2 has reverted container name + slug feature
sudo curl -L "https://github.com/docker/compose/releases/download/1.23.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose             # Apply executable permissions to the Compose binary:
docker-compose --version                                # Verify installation
```

## Uninstall Docker-Compose

To uninstall Docker Compose if you installed using `curl`:
```
sudo rm /usr/local/bin/docker-compose
```
ref: https://docs.docker.com/compose/install/#uninstallation






# Reference

- https://linuxize.com/post/how-to-install-and-use-docker-on-ubuntu-18-04/

