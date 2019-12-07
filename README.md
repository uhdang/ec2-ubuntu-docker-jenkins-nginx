# ec2-ubuntu-docker-jenkins-nginx

## Run ubuntu ec2 instance

### To Remember
- Open port 80 from 'Security Group'
- Open port 8080 for initial Jenkins access
- (Optional) add ssh connection credential to ~/.ssh/config

## Install Basic Libraries

- Install Docker & Docker-compose: `docs/Docker.md`

- Install Git
```
sudo apt update
sudo apt install git
git --version
```

- Get this repository to fetch Dockerfile and docker-compose.yml
```
sudo git clone https://github.com/uhdang/ec2-ubuntu-docker-jenkins-nginx
```

Change the folder name into `setup`

## Building the Jenkins Docker Image

```
mkdir /home/$USER/jenkins_data
cd setup/
docker-compose build
docker-compose up -d
```

## Activate Jenkins

- Go to [EC2-ADDRESS]:8080
- Get initial password from `docker logs [CONTAINERNAME]`







# Reference
- https://github.com/CraigsTraining/jenkins-ec2-docker
