# install-docker
Script to install Docker and Docker Compose on a Debian 9 server on Ligthsail

Suggestion: create the smallest AWS Lightsail instance and run the following commands:

```
sudo apt-get update
sudo apt-get install git
git clone https://github.com/remintz/install-docker
cd install-docker
sudo bash init.sh
```

This will install docker, docker composer and reboot the machine.

After restarting it will automatically run a "run-docker-server" script where you can pull and run the containers.

For more info send me a message through Github

You are more than welcome to submit pull requests.
