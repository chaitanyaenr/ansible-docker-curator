## Curator Ansible playbook for Elasticsearch

User needs to mount his file containing the details about the elasticsearch host, port, action, time-unit, days, prefix, timestring. You can refer to the file in the repo as an example.

## Systemd
Docker container will be launched in the elasticsearch host and curator will perform the actions on a timely basis set by configuring systemd. By default systemd is set to run the container 10 min after boot, every hour after that.

## Run

Running the below command will install docker, pulls the curator image and runs the container on the hosts mentioned in inventory file

$ ansible-playbook curator-playbook.yml

By default it assumes that the file containing the parameters is in /tmp/curator/file. You can override the variable like

$ ansible-playbook --extra-vars '{"FILES_DIR":"/tmp"}' curator-playbook.yml

