# ec2-ubuntu-docker-jenkins-nginx

## Run ubuntu ec2 instance

### To Remember
- Open port 80 from 'Security Group'
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
