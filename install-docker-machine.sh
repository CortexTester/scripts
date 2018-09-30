curl -L https://github.com/docker/machine/releases/download/v0.14.0/docker-machine-$(uname -s)-$(uname -m) >/tmp/docker-machine 
sudo install /tmp/docker-machine /usr/local/bin/docker-machine

for i in docker-machine-prompt.bash docker-machine-wrapper.bash docker-machine.bash
do
  sudo wget "https://raw.githubusercontent.com/docker/machine/v0.14.0/contrib/completion/bash/${i}" -P /etc/bash_completion.d
done