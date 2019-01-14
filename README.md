# install-docker
Script to install Docker on a Debian server on Ligthsail

It runs on Debian Jessie Linux.

Suggestion: create the smallest AWS Lightsail instance and run the following commands:

```
sudo apt-get update
sudo apt-get install git
git clone https://github.com/remintz/install-docker
cd install-docker
sudo bash init.sh
```

This will install docker and reboot the machine.

After restarting it will automatically run a "run-docker-server" script where you can pull and run the containers.

For more info send a message

You are more than welcome to submit pull requests.
