sudo apt update
sudo apt install ubuntu-desktop
sudo reboot now
sudo apt install spice-vdagent spice-webdavd
git add .
git commit -m "first commit"
git branch -M Lab_1
git remote add origin https://github.com/NazarH88/PRIKM_ITPA.git
git push -u origin Lab_1
git fetch origin
git merge origin/Lab_1
git rebase origin/Lab_1
git push -u origin Lab_1
git push -u origin Lab_1 --force
git add .
git commit -m "Save changes"
git stash
sudo usermod -aG docker jenkins
sudo systemctl restart docker
sudo systemctl restart jenkins
groups jenkins
docker ps -a
docker stop b3b998b80aab
docker stop b21c3399a076
docker stop 4ec3b9978081
docker stop 1ddbcf2c0594
docker stop 9524fda7f708
docker run -d -p 80:80 nginx/custom:latest
docker rm -f my-nginx
docker run -d --name my-nginx -p 80:80 nginx/custom:latest
git status
Started by user studynazar
Obtained Jenkinsfile from git https://github.com/NazarH88/PRIKM_ITPA.git
[Pipeline] Start of Pipeline
[Pipeline] node
Running on Jenkins in /var/lib/jenkins/workspace/Lab_1
[Pipeline] {
[Pipeline] stage
[Pipeline] { (Declarative: Checkout SCM)
[Pipeline] checkout
The recommended git tool is: git
No credentials specified
Fetching changes from the remote Git repository
Fetching upstream changes from https://github.com/NazarH88/PRIKM_ITPA.git
Checking out Revision 47acf3468a3e2ddf5b73d1a59ce8cc1ce0a35738 (refs/remotes/origin/main)
Commit message: "Update index.html"
First time build. Skipping changelog.
[Pipeline] }
[Pipeline] // stage
[Pipeline] withEnv
[Pipeline] {
[Pipeline] stage
[Pipeline] { (Start)
[Pipeline] echo
Lab_1: nginx/custom
[Pipeline] }
[Pipeline] // stage
[Pipeline] stage
[Pipeline] { (Build nginx/custom)
[Pipeline] sh
+ docker build -t nginx/custom:latest .
#0 building with "default" instance using docker driver
#1 [internal] load build definition from Dockerfile
#1 transferring dockerfile: 106B done
#1 DONE 0.0s
#2 [internal] load metadata for docker.io/library/nginx:latest
#2 DONE 0.8s
#3 [internal] load .dockerignore
#3 transferring context: 2B done
#3 DONE 0.0s
#4 [1/2] FROM docker.io/library/nginx:latest@sha256:7150b3a39203cb5bee612ff4a9d18774f8c7caf6399d6e8985e97e28eb751c18
#4 DONE 0.0s
#5 [internal] load build context
#5 transferring context: 32B done
#5 DONE 0.0s
#6 [2/2] COPY ./index.html /usr/share/nginx/html/index.html
#6 CACHED
#7 exporting to image
#7 exporting layers done
#7 writing image sha256:c6e37e8c22bf32d5e4eb4d209db5b3dc9954abdedfeb6e944d92b6e371b25f5a done
#7 naming to docker.io/nginx/custom:latest done
#7 DONE 0.0s
[Pipeline] }
[Pipeline] // stage
[Pipeline] stage
[Pipeline] { (Test nginx/custom)
[Pipeline] echo
Tests passed successfully
[Pipeline] }
[Pipeline] // stage
[Pipeline] stage
[Pipeline] { (Deploy nginx/custom)
[Pipeline] sh
+ docker run -d -p 80:80 nginx/custom:latest
17aea8877fb0fb238acc3a05f6145e0e5a3d451a2d8fd044f12b039a147d3b45
docker: Error response from daemon: failed to set up container networking: driver failed programming external connectivity on endpoint crazy_leakey (072a680a7886ddb46654c265725cac8dc408bf2ac83004ea1af5bc93966c8f9b): Bind for 0.0.0.0:80 failed: port is already allocated
Run 'docker run --help' for more information
[Pipeline] }
[Pipeline] // stage
[Pipeline] }
[Pipeline] // withEnv
[Pipeline] }
[Pipeline] // node
[Pipeline] End of Pipeline
ERROR: script returned exit code 125
Finished: FAILURE
git status
cd ~/Lab_1
ls -la
git clone https://github.com/NazarH88/PRIKM_ITPA.git Lab_1
cd Lab_1
git add index.html Jenkinsfile
git commit -m "Update Jenkinsfile and index.html for lab 1"
git push origin main
docker ps
docker stop f66b0aa3410a
docker rm f66b0aa3410a
docker run -d --name my-nginx -p 80:80 nginx/custom:latest
docker ps -a
docker stop my-nginx
docker rm my-nginx
docker run -d --name my-nginx -p 8081:80 nginx/custom:latest
sudo lsof -i :8080
sudo kill -9 851
docker ps
sudo lsof -i :8080
cd ~/Lab_1
git status
git add Jenkinsfile
git commit -m "Update Jenkinsfile with new port"
git push origin main
git add Jenkinsfile
git commit -m "Updated Jenkinsfile with new stages"
git push origin main
git pull origin main --rebase
git push origin main
git pull origin main --rebase
git push origin main
git pull origin main --rebase
git push origin main
docker ds
docker -ds
docker --help
git pull origin main --rebase
git push origin main
git branch
git checkout -b Lab_2
git push origin Lab_2
giy branch
git branch
git checkout -b Lab_2
git add .
git commit -m "Add Lab_1 code to Lab_2 branch"
git push origin Lab_2
git checkout Lab_2
cat Jenkinsfile
cat index.html
git push origin Lab_2
git fetch origin Lab_2
git merge origin/Lab_2
git push origin Lab_2
docker login -u nazarh88
git checkout Lab_2
git status
git pull origin Lab_2 --rebase
git push origin Lab_2
sudo lsof -i :80
docker ps
docker stop 882ef7f0c336
docker rm 882ef7f0c336
docker run -d -p 80:80 nazarh88/prikm:latest
sudo lsof -i :80
docker ps
docker stop 3e5278001214
docker rm 3e5278001214
git checkout lab3
git checkout Lab_3
git merge Lab_2
git push origin Lab_3
git add .
git commit -m "Copied files from lab2"
git push origin lab3
git push origin Lab_3
git checkout -b Lab_3
git push -u origin Lab_3
git fetch
git checkout Lab_3
git push origin Lab_3
cd PRIKM_ITPA
git status
cd ~/PRIKM_ITPA
ls
git status
cd ~/Lab_1
git branch
git checkout -b Lab_3
git checkout Lab_3
git  checkout Lab_2 -- .
git add .
git commit -m "copied files from Lab_2"
git push -u origin lab3
git push -u origin Lab_3
git checkout Lab_3
git pull origin Lab_3 --rebase
git push -u origin Lab_3
docker ds
docker -ds
docker ds
docker
docker ps
docker stop f7193014082d
docker rm f7193014082d
git add Jenkinsfile
git commit -m "Added Jenkinsfile with parm. build and webhook notif"
git push origin Lab_3
git pull origin Lab_3 --rebase
git push origin Lab_3
docker ps
git checkout -b Lab_4
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
git branch
ls
mkdir -p data/prometheus/config data/grafana data/jenkins
git add docker-compose.yml data/prometheus/config/prometheus.yml
git add .
git commit -m "Lab4: Added Docker-compose stack, Prometheus and Grafana configs"
git pull origin Lab_4 --rebase
git push origin Lab_4
git branch
ls
docker-compose up -d
ls -l /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo docker-compose up -d
docker compose up -d
git checkout Lab_4
git pull origin Lab_4
docker-compose up -d
ls -l /usr/local/bin/docker-compose
sudo docker-compose up -d
sudo rm /usr/local/bin/docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version
docker compose version
docker compose up -d
docker ps
echo "Hello from Lab4 Jenkins job"
docker stop automation_jenkins monitoring_node_exporter
docker rm automation_jenkins monitoring_node_exporter
docker network prune
docker compose up -d
docker compose down
docker network ls
docker ps -a
docker ps
docker compose up -d
git push origin Lab_4
git push origin Lab_4 --rebase
git pull origin Lab_4 --rebase
git push origin Lab_4
docker compose down
docker compose up -d
docker ps
git pull origin Lab_4 --rebase
docker compose down
docker compose pull      # щоб підтягнути новий образ
docker compose up -d
docker ps
docker compose down
git pull origin Lab_4 --rebase
docker compose down
docker compose pull      # щоб підтягнути новий образ
docker compose up -d
docker ps
git pull origin Lab_4 --rebase
docker compose down
docker compose pull      # щоб підтягнути новий образ
docker compose up -d
docker ps
docker exec -it automation_jenkins cat /var/jenkins_home/secrets/initialAdminPassword
docker ps
ls -l ./data/grafana ./data/prometheus/config ./data/prometheus/data
mkdir -p ./data/grafana ./data/prometheus/config ./data/prometheus/data
sudo chown -R $(whoami):$(whoami) ./data
docker logs monitoring_grafana --tail 50
docker logs monitoring_prometheus --tail 50
docker compose down
docker compose up -d
docker ps
mkdir -p ./data/grafana
sudo chown -R 472:472 ./data/grafana
docker compose down
docker compose up -d
mkdir -p ./data/prometheus/config ./data/prometheus/data
sudo chown -R $(whoami):$(whoami) ./data/prometheus
docker compose down
docker compose up -d
docker ps
mkdir -p ./data/prometheus/config ./data/prometheus/data
sudo chown -R $(whoami):$(whoami) ./data/prometheus
mkdir -p ./data/prometheus/config ./data/prometheus/data
sudo chown -R $(whoami):$(whoami) ./data/prometheus
docker compose down
docker compose up -d
docker ps
git pull origin Lab_4 --rebase
docker compose down
git pull origin Lab_4 --rebase
docker compose down
docker compose up -d
docker ps
docker pull origin Lab_4 --rebase
git pull origin Lab_4 --rebase
docker compose down
docker compose up -d
docker ps
mkdir -p ./data/prometheus/config ./data/prometheus/data
sudo chown -R $USER:$USER ./data/prometheus
sudo chmod -R 755 ./data/prometheus
docker compose down
docker compose up -d
docker ps
docker logs monitoring_prometheus --tail 50
mkdir -p ./data/prometheus/config
nano ./data/prometheus/config/prometheus.yml
sudo chown -R $USER:$USER ./data/prometheus
sudo chmod -R 755 ./data/prometheus
docker compose down
docker compose up -d
docker logs monitoring_prometheus --tail 50
ls -ld ./data/prometheus/data
sudo chown -R $USER:$USER ./data/prometheus/data
sudo chmod -R 755 ./data/prometheus/data
docker compose down
docker compose up -d
docker logs monitoring_prometheus --tail 50
git pull origin Lab_4 --rebase
docker compose down
docker compose up -d
docker logs monitoring_prometheus --tail 50
docker ps
git pull origin Lab_4 --rebase
docker compose restart monitoring_prometheus
docker compose ps
docker compose restart monitoring_prometheus
docker compose restart prometheus
docker compose ps
wget https://repo.zabbix.com/zabbix/6.0/ubuntu/pool/main/z/zabbix-release/zabbix-release_6.0-4+ubuntu22.04_all.deb
sudo dpkg -i zabbix-release_6.0-4+ubuntu22.04_all.deb
sudo -u postgres psql -c "CREATE USER zabbix WITH PASSWORD 'password';"
sudo -u postgres psql -c "CREATE DATABASE zabbix OWNER zabbix;"
sudo apt update && sudo apt install postgresql -y
sudo -u postgres psql -c "CREATE USER zabbix WITH PASSWORD 'password';"
sudo -u postgres psql -c "CREATE DATABASE zabbix OWNER zabbix;"
zcat /usr/share/zabbix-sql-scripts/postgresql/server.sql.gz | sudo -u zabbix psql zabbix
sudo apt install zabbix-server-pgsql zabbix-frontend-php php8.1-pgsql zabbix-apache-conf zabbix-sql-scripts zabbix-agent -y
sudo apt install zabbix-server-pgsql zabbix-frontend-php php-pgsql zabbix-apache-conf zabbix-sql-scripts zabbix-agent -y
zcat /usr/share/zabbix-sql-scripts/postgresql/server.sql.gz | sudo -u zabbix psql zabbix
sudo sed -i 's/# DBPassword=/DBPassword=password/g' /etc/zabbix/zabbix_server.conf
sudo systemctl restart zabbix-server zabbix-agent apache2
sudo systemctl enable zabbix-server zabbix-agent apache2
netstat -tulnp | grep 10050
ps ax | grep zabbix_agentd
sudo systemctl restart zabbix-server
sudo systemctl enable zabbix-server
sudo systemctl status zabbix-server
sudo nano /etc/zabbix/zabbix_server.conf
sudo -u postgres psql -c "ALTER USER zabbix WITH PASSWORD 'password';"
sudo systemctl restart zabbix-server
sudo tail -n 20 /var/log/zabbix/zabbix_server.log
sudo sed -i 's/ident/md5/g' /etc/postgresql/*/main/pg_hba.conf
sudo sed -i 's/peer/md5/g' /etc/postgresql/*/main/pg_hba.conf
sudo systemctl restart postgresql
sudo grep -E "^DBUser=|^DBPassword=" /etc/zabbix/zabbix_server.conf
sudo -u zabbix /usr/sbin/zabbix_server -f
sudo mkdir -p /var/log/zabbix
sudo chown -R zabbix:zabbix /var/log/zabbix
sudo chmod -R 775 /var/log/zabbix
sudo systemctl restart zabbix-server
sudo systemctl status zabbix-server
sudo -u postgres psql -c "DROP DATABASE IF EXISTS zabbix;"
zcat /usr/share/doc/zabbix-server-pgsql/create.sql.gz | sudo -u zabbix psql zabbix
sudo systemctl restart zabbix-server
sudo -u postgres psql -c "DROP DATABASE IF EXISTS zabbix;"
sudo sed -i 's/md5/trust/g' /etc/postgresql/*/main/pg_hba.conf
sudo sed -i 's/peer/trust/g' /etc/postgresql/*/main/pg_hba.conf
sudo systemctl restart postgresql
sudo -u postgres psql -c "DROP DATABASE IF EXISTS zabbix;"
sudo -u postgres psql -c "CREATE DATABASE zabbix OWNER zabbix;"
find /usr/share -name "create.sql.gz" 2>/dev/null
zcat /usr/share/doc/zabbix-sql-scripts/postgresql/create.sql.gz | sudo -u zabbix psql zabbix
dpkg -L zabbix-server-pgsql | grep .sql.gz
zcat /usr/share/zabbix-server-pgsql/schema.sql.gz | sudo -u zabbix psql zabbix
zcat /usr/share/zabbix-server-pgsql/images.sql.gz | sudo -u zabbix psql zabbix
zcat /usr/share/zabbix-server-pgsql/data.sql.gz | sudo -u zabbix psql zabbix
sudo systemctl restart zabbix-server
sudo systemctl status zabbix-server
sudo apt remove zabbix-server-pgsql zabbix-agent -y
sudo apt autoremove -y
sudo apt install zabbix-server-pgsql zabbix-agent zabbix-sql-scripts -y
sudo sed -i 's/# DBPassword=/DBPassword=password/g' /etc/zabbix/zabbix_server.conf
sudo systemctl restart zabbix-server zabbix-agent
sudo systemctl enable zabbix-server zabbix-agent
sudo apt update
apt cache policy zabbix-server-pgsql
sudo rm /etc/apt/sources.list.d/zabbix.list
sudo apt update
wget https://repo.zabbix.com/zabbix/6.0/ubuntu-arm64/pool/main/z/zabbix-release/zabbix-release_6.0-4+ubuntu20.04_all.deb
sudo dpkg -i zabbix-release_6.0-4+ubuntu20.04_all.deb
sudo apt install --only-upgrade zabbix-server-pgsql zabbix-agent zabbix-frontend-php -y
sudo systemctl restart zabbix-server
sudo tail -n 50 /var/log/zabbix/zabbix_server.log
echo "deb http://repo.zabbix.com/zabbix/6.0/ubuntu-arm64 focal main" | sudo tee /etc/apt/sources.list.d/zabbix.list
sudo apt update
sudo apt install zabbix-server-pgsql=1:6.0.34-1+ubuntu20.04 zabbix-agent=1:6.0.34-1+ubuntu20.04 zabbix-sql-scripts -y
sudo sed -i 's/# DBPassword=/DBPassword=password/g' /etc/zabbix/zabbix_server.conf
sudo systemctl restart zabbix-server zabbix-agent
sudo tail -n 20 /var/log/zabbix/zabbix_server.log
sudo sed -i 's/# AllowUnsupportedDBVersions=/AllowUnsupportedDBVersions=1/g' /etc/zabbix/zabbix_server.conf
v
sudo sed -i 's/# DBPassword=/DBPassword=password/g' /etc/zabbix/zabbix_server.conf
sudo systemctl restart zabbix-server zabbix-agent
sudo tail -n 20 /var/log/zabbix/zabbix_server.log
sudo nano /etc/zabbix/zabbix_server.conf
grep -E "^AllowUnsupportedDBVersions|^DBPassword" /etc/zabbix/zabbix_server.conf
sudo systemctl restart zabbix-server
sudo systemctl status zabbix-server
cd ~/Lab_1
ls
git branch
git checkout -b Lab_5
git branch
git add .
git commit -m "Lab 5 completed"
git push origin Lab_5
docker compose build --pull --no-cache jenkins
docker compose up -d
docker ps
git branch
mkdir -p jenkins
sudo
sudo systemctl start postgresql
sudo systemctl start apache2
sudo systemctl start zabbix-server zabbix-agent
sudo systemctl status zabbix-server zabbix-agent postgresql apache2 | grep -E "Active:|service"
cd ~/Lab_1
git checkout main
git pull
git checkout -b Lab_6
terraform -version
ansible --version
# Для Terraform
sudo apt-get update && sudo apt-get install -y gnupg software-properties-common curl
sudo apt update
sudo apt install ansible -y
# Заходимо в папку (якщо ти ще не в ній)
cd ~/Lab_6
# Встановлюємо unzip та завантажуємо Terraform
sudo apt update && sudo apt install -y unzip curl
curl -fsSL https://releases.hashicorp.com/terraform/1.9.8/terraform_1.9.8_linux_arm64.zip -o /tmp/terraform.zip
sudo unzip -o /tmp/terraform.zip -d /usr/local/bin/
terraform --version
sudo apt-get install -y ansible
ansible-galaxy collection install community.docker
main.tf
nano main.tf
terraform init
terraform apply -auto-approve
terraform init
terraform apply -auto-approve
main.tf
nano main.tf
terraform init
terraform apply -auto-approve
terraform output -raw ansible_inventory > inventory_auto.ini
nano playbook.yml
ansible-playbook -i inventory_auto.ini playbook.yml
sudo apt update
sudo apt install -y python3-pip
ansible-galaxy collection install community.docker --force
ansible-playbook -i inventory_auto.ini playbook.yml
nano playbook.yml
ansible-playbook -i inventory_auto.ini playbook.yml
docker ps --format "table {{.Names}}\t{{.Ports}}\t{{.Status}}"
curl -I http://localhost:8091
curl -I http://localhost:8093
cd ~/Lab_1  # або де твій main.tf
terraform destroy -auto-approve
docker rm -f my-app my-custom-app
# зайди в папку з моніторингом
docker-compose stop
docker stop automation_jenkins monitoring_grafana monitoring_prometheus monitoring_cadvisor monitoring_node_exporter
v
docker ps
# Повертаємось у головну папку проекту
cd ~
# Створюємо нову гілку
git checkout -b lab7-jenkins-pipeline
# Створюємо нову папку для 7-ї лаби
mkdir Lab_7
# Копіюємо файли з 6-ї лаби (main.tf та playbook.yml)
cp Lab_1/main.tf Lab_7/
cp Lab_1/playbook.yml Lab_7/
# Переходимо в нову папку
cd Lab_7
nano Jenkinsfile
git add .
git commit -m "Add files for Lab 7: Jenkins Pipeline"
# Якщо у тебе підключений GitHub/GitLab, зроби push:
# git push origin lab7-jenkins-pipeline
git push origin lab7-jenkins-pipeline
sudo usermod -aG docker jenkins
sudo systemctl restart jenkins
docker start automation_jenkins
sudo usermod -aG docker jenkins
sudo systemctl restart jenkins
git push
git push --set-upstream origin lab7-jenkins-pipeline
git add Jenkinsfile
git commit -m "Add Jenkinsfile for Lab 7"
git push origin lab7-jenkins-pipeline
git add Jenkinsfile
git commit -m "Add Jenkinsfile for Lab 7"
docker exec -u 0 -it automation_jenkins bash
nano Jenkinsfile
git add Lab_7/Jenkinsfile
# Зроби коміт
git commit -m "Fix: add dir('Lab_7') to Jenkinsfile stages"
# Відправ у GitHub
git push origin lab7-jenkins-pipeline
studynazar@studynazar:~/Lab_7$ git push origin lab7-jenkins-pipeline
Username for 'https://github.com': NazarH88
Password for 'https://NazarH88@github.com': 
To https://github.com/NazarH88/PRIKM_ITPA.git
error: failed to push some refs to 'https://github.com/NazarH88/PRIKM_ITPA.git'
hint: Updates were rejected because the remote contains work that you do
hint: not have locally. This is usually caused by another repository pushing
hint: to the same ref. You may want to first integrate the remote changes
hint: (e.g., 'git pull ...') before pushing again.
hint: See the 'Note about fast-forwards' in 'git push --help' for details.
studynazar@studynazar:~/Lab_7$ 
git pull origin lab7-jenkins-pipeline
v
git push origin lab7-jenkins-pipeline
# ОБЕРЕЖНО: це затре те, що ти міняв на сайті, твоїм локальним файлом
git push origin lab7-jenkins-pipeline --force
docker rm -f automation_jenkins
docker run -d --name automation_jenkins   -p 8081:8080 -p 50000:50000   -v /var/run/docker.sock:/var/run/docker.sock   -v jenkins_home:/var/jenkins_home   jenkins/jenkins:lts
sudo chmod 666 /var/run/docker.sock
docker exec -u 0 -it automation_jenkins bash
docker exec automation_jenkins cat /var/jenkins_home/secrets/initialAdminPassword
docker exec -u 0 -it automation_jenkins bash
docker exec -u 0 -it automation_jenkins apt-get install -y sudo
nano playbook.yml
sudo visudo
sudo usermod -aG docker jenkins
sudo systemctl restart jenkins
# Переходимо в гілку, де ти працюєш
git checkout lab7-jenkins-pipeline
# Додаємо зміни
git add Lab_7/playbook.yml
# Створюємо коміт з описом виправлення
git commit -m "Fix: remove sudo requirement from ansible playbook"
# Пушимо в GitHub
git push origin lab7-jenkins-pipeline
git add playbook.yml
git commit -m "Fix: removed become from playbook"
git push origin lab7-jenkins-pipeline
git add playbook.yml
git commit -m "Fix: remove docker shell commands from ansible"
git push origin lab7-jenkins-pipeline
git pull origin lab7-jenkins-pipeline --rebase
git add playbook.yml
git commit -m "Clean up: sync with remote and fix playbook logic"
git push origin lab7-jenkins-pipeline
git push origin lab7-jenkins-pipeline --force
nano playbook.yml
git add playbook.yml
git commit -m "Final fix: remove docker commands from ansible"
git push origin lab7-jenkins-pipeline
terraform destroy -auto-approve
terraform init
terraform destroy -auto-approve
docker ps -a
docker container prune -f
docker image prune -a -f
docker stop web-app-1 web-app-2
docker rm web-app-1 web-app-2
docker ps -a
cd ~
mkdir -p ~/Lab_8/terraform ~/Lab_8/ansible/templates
cd ~/Lab_8
cat <<EOF > terraform/main.tf
terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

provider "docker" {}

resource "docker_network" "lab8_net" {
  name = "lab8-network"
}

resource "docker_container" "app" {
  name  = "lab8-app"
  image = "nazarh88/prikm:latest"
  networks_advanced {
    name = docker_network.lab8_net.name
  }
  ports {
    internal = 80
    external = 8097
  }
}

resource "docker_container" "node_exporter" {
  name  = "lab8-node-exporter"
  image = "prom/node-exporter:latest"
  networks_advanced {
    name = docker_network.lab8_net.name
  }
  ports {
    internal = 9100
    external = 9101
  }
}
EOF

cat <<EOF > terraform/outputs.tf
output "node_exporter_target" {
  value = "lab8-node-exporter:9100"
}

output "app_url" {
  value = "http://localhost:8097"
}

output "ansible_inventory" {
  value = "[local]\nlocalhost ansible_connection=local\n"
}
EOF

cat <<EOF > ansible/templates/prometheus.yml.j2
global:
  scrape_interval: 10s

scrape_configs:
  - job_name: 'prometheus'
    static_configs:
      - targets: ['localhost:9090']

  - job_name: 'node-exporter'
    static_configs:
      - targets: ['{{ node_exporter_target }}']
EOF

cat <<EOF > ansible/playbook.yml
- name: Deploy Monitoring
  hosts: all
  tasks:
    - name: Config from template
      template:
        src: templates/prometheus.yml.j2
        dest: /tmp/prometheus.yml

    - name: Run Prometheus
      community.docker.docker_container:
        name: lab8-prometheus
        image: prom/prometheus:latest
        networks:
          - name: lab8-network
        ports:
          - "9092:9090"
        volumes:
          - /tmp/prometheus.yml:/etc/prometheus/prometheus.yml:ro

    - name: Run Grafana
      community.docker.docker_container:
        name: lab8-grafana
        image: grafana/grafana:latest
        networks:
          - name: lab8-network
        ports:
          - "3001:3000"
        env:
          GF_SECURITY_ADMIN_PASSWORD: "admin"
EOF

cat <<EOF > Jenkinsfile
pipeline {
    agent any
    stages {
        stage('Prepare') {
            steps {
                dir('terraform') {
                    sh 'terraform init'
                }
            }
        }
        stage('Infrastructure') {
            steps {
                dir('terraform') {
                    sh 'terraform apply -auto-approve'
                    script {
                        env.NODE_TARGET = sh(script: 'terraform output -raw node_exporter_target', returnStdout: true).trim()
                        env.APP_URL = sh(script: 'terraform output -raw app_url', returnStdout: true).trim()
                        sh 'terraform output -raw ansible_inventory > ../ansible/inventory.ini'
                    }
                }
            }
        }
        stage('Deploy Monitoring') {
            steps {
                dir('ansible') {
                    sh "ansible-playbook playbook.yml -i inventory.ini -e 'node_exporter_target=\${env.NODE_TARGET}'"
                }
            }
        }
        stage('Smoke Test') {
            steps {
                sh "curl -f \${env.APP_URL}"
                sh "curl -f http://localhost:9092/-/ready"
            }
        }
    }
}
EOF

git add .
git commit -m "Add Lab 8 infrastructure and monitoring"
git push origin Lab_8
git push origin lab7-jenkins-pipeline
git -c http.sslVerify=false push origin lab7-jenkins-pipeline
docker exec -u root automation_jenkins git config --global http.sslVerify false
cd ~
rm -rf Lab_8
mkdir -p Lab_8/terraform Lab_8/ansible/templates
cd Lab_8
# 1. Terraform Main
cat <<EOF > terraform/main.tf
terraform {
  required_providers { docker = { source = "kreuzwerker/docker"; version = "~> 3.0" } }
}
provider "docker" {}
resource "docker_network" "lab8_net" { name = "lab8-network" }
resource "docker_container" "app" {
  name  = "lab8-app"
  image = "nazarh88/prikm:latest"
  networks_advanced { name = docker_network.lab8_net.name }
  ports { internal = 80; external = 8097 }
}
resource "docker_container" "node_exporter" {
  name  = "lab8-node-exporter"
  image = "prom/node-exporter:latest"
  networks_advanced { name = docker_network.lab8_net.name }
  ports { internal = 9100; external = 9101 }
}
EOF

# 2. Terraform Outputs
cat <<EOF > terraform/outputs.tf
output "node_exporter_target" { value = "lab8-node-exporter:9100" }
output "app_url" { value = "http://localhost:8097" }
output "ansible_inventory" { value = "[local]\nlocalhost ansible_connection=local\n" }
EOF

# 3. Ansible Template
cat <<EOF > ansible/templates/prometheus.yml.j2
global:
  scrape_interval: 10s
scrape_configs:
  - job_name: 'node-exporter'
    static_configs:
      - targets: ['{{ node_exporter_target }}']
EOF

# 4. Ansible Playbook
cat <<EOF > ansible/playbook.yml
- name: Deploy Monitoring
  hosts: all
  tasks:
    - name: Config from template
      template:
        src: templates/prometheus.yml.j2
        dest: /tmp/prometheus.yml
    - name: Run Prometheus
      community.docker.docker_container:
        name: lab8-prometheus
        image: prom/prometheus:latest
        networks: [{name: "lab8-network"}]
        ports: ["9092:9090"]
        volumes: ["/tmp/prometheus.yml:/etc/prometheus/prometheus.yml:ro"]
    - name: Run Grafana
      community.docker.docker_container:
        name: lab8-grafana
        image: grafana/grafana:latest
        networks: [{name: "lab8-network"}]
        ports: ["3001:3000"]
        env: { GF_SECURITY_ADMIN_PASSWORD: "admin" }
EOF

sudo chmod -R 777 /home/studynazar/Lab_8
# Знаходимо шлях до воркспейсу (зазвичай він прокинутий у Docker)
# Копіюємо папку Lab_8 туди, де Jenkins її точно побачить
sudo cp -r ~/Lab_8 /var/lib/docker/volumes/jenkins_home/_data/workspace/Lab_7_Pipeline/
# Даємо права, щоб Jenkins міг ними керувати
sudo chmod -R 777 /var/lib/docker/volumes/jenkins_home/_data/workspace/Lab_7_Pipeline/Lab_8
sudo timedatectl set-ntp on
sudo date -s "$(curl -s --head http://google.com | grep ^Date: | sed 's/Date: //g')"
docker exec automation_jenkins cat /var/jenkins_home/secrets/initialAdminPassword
mkdir -p lab8/terraform lab8/ansible/templates
cd lab8
cd ~
cd Lab_8
nano terraform/main.tf
nano terraform/outputs.tf
nano ansible/templates/prometheus.yml.j2
- name: Deploy Monitoring
nano ansible/playbook.yml
docker rm -f lab8-app lab8-node-exporter lab8-prometheus lab8-grafana || true
docker network rm lab8-network || true
docker rm -f lab8-prometheus-final lab8-grafana-final || true
docker network rm lab8-network || true
docker ps -a
cd terraform
terraform apply -auto-approve
terraform init
terraform apply -auto-approve
docker rm -f lab8-prometheus-final-v4 || true
cd ~/Lab_8/terraform
terraform init
terraform apply -auto-approve
cd ../ansible
ansible-playbook playbook.yml -i inventory.ini -e node_exporter_target=lab8-node-exporter:9100
ls -la
cat inventory.ini
~/Lab_8/ansible
echo -e "[local]\nlocalhost ansible_connection=local" > inventory.ini
cat inventory.ini
ansible-playbook playbook.yml -i inventory.ini -e node_exporter_target=lab8-node-exporter:9100
ansible-galaxy collection install community.docker --force
ansible-playbook playbook.yml -i inventory.ini -e node_exporter_target=lab8-node-exporter:9100
pip3 install docker
ansible-galaxy collection install community.docker --force
ansible-playbook playbook.yml -i inventory.ini -e node_exporter_target=lab8-node-exporter:9100
nano playbook.yml
ansible-playbook playbook.yml -i inventory.ini -e node_exporter_target=lab8-node-exporter:9100
cd ~/Lab_8
docker rm -f $(docker ps -aq) || true
docker network prune -f
rm -rf ~/Lab_8
mkdir -p ~/Lab_8/{terraform,ansible/templates}
cd ~/Lab_8
nano terraform/main.tf
nano terraform/outputs.tf
nano ansible/playbook.yml
nano ansible/inventory.ini
cd ~/Lab_8/terraform
terraform init
terraform apply -auto-approve
ansible-playbook playbook.yml -i inventory.ini -e node_exporter_target=lab8-node-exporter:9100
cd ~/Lab_8/ansible
ansible-playbook playbook.yml -i inventory.ini -e node_exporter_target=lab8-node-exporter:9100
nano playbook.yml
cd ~/Lab_8/ansible
ansible-playbook playbook.yml -i inventory.ini -e node_exporter_target=lab8-node-exporter:9100
rm -rf /tmp/prometheus.yml
ls -la /tmp | grep prometheus
sudo rm -rf /tmp/prometheus.yml
ls -la /tmp | grep prometheus
cd ~/Lab_8/ansible
ansible-playbook playbook.yml -i inventory.ini -e node_exporter_target=lab8-node-exporter:9100
docker ps
curl -s http://localhost:9101/metrics | head
nano Jenkinsfile
docker run automation_jenkins
cd Lab_8
docker ps -a | grep jenkins
docker start automation_jenkins
docker ps -a
docker volume create jenkins_home
docker run -d   --name automation_jenkins   -p 8081:8080   -p 50000:50000   -v jenkins_home:/var/jenkins_home   -v /var/run/docker.sock:/var/run/docker.sock   jenkins/jenkins:lts
docker exec automation_jenkins cat /var/jenkins_home/secrets/initialAdminPassword
cd ~/Lab_8
git branch
git checkout -b Lab_8
git add .
git commit -m "Lab 8 CI/CD setup"
git push origin Lab_8
cd ~/Lab_8
ls -la
nano Jenkinsfile
git add Jenkinsfile
git commit -m "Add Jenkinsfile"
git push origin Lab_8
cd ~/Lab_8
git branch
git status
ls -la
git add Jenkinsfile
git commit -m "Add Jenkinsfile for Lab 8"
git push origin Lab_8
cd ~/Lab_8
find . -name Jenkinsfile
rm -f ansible/Jenkinsfile
ls -la
git add .
git commit -m "Fix Jenkinsfile location (root only)"
git push origin Lab_8
docker exec jenkins cat /var/jenkins_home/secrets/initialAdminPassword
docker exec automation_jenkins cat /var/jenkins_home/secrets/initialAdminPassword
docker ps | grep jenkins
docker exec -it automation_jenkins cat /var/jenkins_home/secrets/initialAdminPassword
docker exec -it jenkins cat /var/jenkins_home/secrets/initialAdminPassword
docker exec -it jenkins_home cat /var/jenkins_home/secrets/initialAdminPassword
docker exec -it automation_jenkins cat /var/automation_jenkins/secrets/initialAdminPassword
docker rm -f automation_jenkins
docker ps | grep jenkins
docker ps -a
_8$ docker ps -a
CONTAINER ID   IMAGE                       COMMAND                  CREATED          STATUS          PORTS                                         NAMES
43de0a50fcef   grafana/grafana:latest      "/run.sh"                24 minutes ago   Up 24 minutes   0.0.0.0:3001->3000/tcp, [::]:3001->3000/tcp   lab8-grafana
b810e18f9dcd   prom/prometheus:latest      "/bin/prometheus --c…"   24 minutes ago   Up 24 minutes   0.0.0.0:9092->9090/tcp, [::]:9092->9090/tcp   lab8-prometheus
b479cc2b3dfe   nazarh88/prikm:latest       "/docker-entrypoint.…"   27 minutes ago   Up 27 minutes   0.0.0.0:8097->80/tcp                          lab8-app
ae31cd054892   prom/node-exporter:latest   "/bin/node_exporter"     27 minutes ago   Up 27 minutes   0.0.0.0:9101->9100/tcp                        lab8-node-exporter
studynazar@studynazar:~/Lab_8$ 
docker run -d   --name automation_jenkins   -p 8081:8080   -p 50000:50000   -v jenkins_home:/var/jenkins_home   jenkins/jenkins:lts
docker exec -it automation_jenkins cat /var/jenkins_home/secrets/initialAdminPassword
docker ps
docker rm -f automation_jenkins
docker run -d   --name automation_jenkins   -p 8081:8080   -p 50000:50000   -v jenkins_home:/var/jenkins_home   -v /var/run/docker.sock:/var/run/docker.sock   jenkins/jenkins:lts
docker exec -it automation_jenkins bash
docker rm -f automation_jenkins
docker run -d   --name automation_jenkins   -p 8081:8080   -p 50000:50000   -v jenkins_home:/var/jenkins_home   -v /var/run/docker.sock:/var/run/docker.sock   jenkins/jenkins:lts
docker exec -it automation_jenkins bash
docker rm -f automation_jenkins
docker run -d   --name automation_jenkins   -p 8081:8080   -p 50000:50000   -v jenkins_home:/var/jenkins_home   -v /var/run/docker.sock:/var/run/docker.sock   -v $(which docker):/usr/bin/docker   jenkins/jenkins:lts
docker exec -it automation_jenkins bash
cd ~/Lab_8
git add .
git commit -m "fix lab8"
git push origin Lab_8
cd ~/Lab_8
git status
git reset
nano .gitignore
git add Lab_8
git add .gitignore
git commit -m "clean lab8 structure"
git push origin Lab_8
git pull origin Lab_8 --rebase
git push origin Lab_8 --force
git pull origin Lab_8 --rebase
git push origin Lab_8
cd ~
cd ~/Lab_1
sudo apt update
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
docker ps
docker exec -it automation_jenkins bash
docker start automation_jenkins
docker exec -it automation_jenkins bash
sudo systemctl enable docker
sudo usermod -aG docker ${USER}
su - ${USER}
# Перевіряємо статус та запускаємо сервер Zabbix
sudo systemctl start zabbix-server
# Перевіряємо статус та запускаємо сервер Zabbix
sudo systemctl start zabbix-server
sudo systemctl enable zabbix-server
# Запускаємо Zabbix Agent (щоб сервер міг моніторити сам себе)
sudo systemctl start zabbix-agent
sudo systemctl enable zabbix-agent
# Запускаємо веб-сервер Apache та базу даних MySQL
sudo systemctl start apache2
sudo systemctl start mysql
# На всяк випадок перевіряємо, чи все працює (має бути статус "active (running)")
sudo systemctl status zabbix-server apache2
# 1. Завантажуємо репозиторій Zabbix (версія 6.0 LTS або 6.4)
wget https://repo.zabbix.com/zabbix/6.0/ubuntu/pool/main/z/zabbix-release/zabbix-release_6.0-4+ubuntu22.04_all.deb
sudo dpkg -i zabbix-release_6.0-4+ubuntu22.04_all.deb
# 1. Завантажуємо репозиторій Zabbix (версія 6.0 LTS або 6.4)
wget https://repo.zabbix.com/zabbix/6.0/ubuntu/pool/main/z/zabbix-release/zabbix-release_6.0-4+ubuntu22.04_all.deb
sudo dpkg -i zabbix-release_6.0-4+ubuntu22.04_all.deb
sudo apt update
# 2. Встановлюємо сервер, веб-інтерфейс та агент
sudo apt install zabbix-server-mysql zabbix-frontend-php zabbix-apache-conf zabbix-sql-scripts zabbix-agent
# 1. Завантажуємо репозиторій Zabbix (версія 6.0 LTS або 6.4)
wget https://repo.zabbix.com/zabbix/6.0/ubuntu/pool/main/z/zabbix-release/zabbix-release_6.0-4+ubuntu22.04_all.deb
sudo dpkg -i zabbix-release_6.0-4+ubuntu22.04_all.deb
sudo apt update
# 2. Встановлюємо сервер, веб-інтерфейс та агент
sudo apt install zabbix-server-mysql zabbix-frontend-php zabbix-apache-conf zabbix-sql-scripts zabbix-agent
sudo docker stop $(sudo docker ps -aq)
sudo docker rm $(sudo docker ps -aq)
# Додаємо репозиторій Zabbix
wget https://repo.zabbix.com/zabbix/6.0/ubuntu/pool/main/z/zabbix-release/zabbix-release_6.0-4+ubuntu22.04_all.deb
sudo dpkg -i zabbix-release_6.0-4+ubuntu22.04_all.deb
sudo apt update
# Встановлюємо сервер, веб-інтерфейс та агент
sudo apt install zabbix-server-mysql zabbix-frontend-php zabbix-apache-conf zabbix-sql-scripts zabbix-agent -y
sudo mysql -uroot -p
sudo systemctl status mysql
sudo apt install mysql-server -y
sudo mysql -u root
df -h
sudo systemctl start mysql
zcat /usr/share/zabbix-sql-scripts/mysql/server.sql.gz | mysql --default-character-set=utf8mb4 -uzabbix -p zabbix
sudo mysql -u root
zcat /usr/share/zabbix-sql-scripts/mysql/server.sql.gz | mysql --default-character-set=utf8mb4 -uzabbix -p zabbix
sudo nano /etc/zabbix/zabbix_server.conf
sudo systemctl restart zabbix-server zabbix-agent apache2
sudo systemctl enable zabbix-server zabbix-agent apache2
sudo systemctl restart jenkins
hostname -I | awk '{print $1}'
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
cd ~/Lab_1
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
cd ~
sudo journalctl -u jenkins | grep -A 5 "Jenkins initial setup is required"
sudo nano /var/lib/jenkins/config.xml
sudo systemctl restart jenkins
sudo nano /var/lib/jenkins/config.xml
sudo systemctl restart jenkins
sudo systemctl status docker
docker ps -a
docker rm 3d3f933191ff
sudo docker stop $(sudo docker ps -q)
sudo docker rm $(sudo docker ps -a -q)
sudo lsof -i :80
sudo systemctl stop apache2
sudo systemctl disable apache2
sudo docker rm -f $(sudo docker ps -aq)
sudo docker stop #(sudo docker ps -q)
sudo docker stop $(sudo docker ps -q)
sudo docker rm $(sudo docker ps -a -q)
cd ~/Lab_2
cd ~/Lab_1
cd ~/Lab_2
git checkout -b Lab_2
git checkout Lab_2
git add .
echo "data/" >> .gitignore
git add Jenkinsfile Dockerfile index.html .gitignore
git commit -m "Update Lab 2 files"
git push origin Lab_2
sudo docker rm -f $(sudo docker ps -aq) || true
docker ps -a
sudo docker ps
docker stop 0ea471dd846c
docker ps -a
docker stop 0ea471dd846c
docker rm 0ea471dd846c
git checkout Lab_3
git puch origin Lab_3
git push origin Lab_3
git add .
git checkout -b Lab_3
git checkout Lab_3
git add .
git commit -m "upd 09/05"
git push origin Lab_3
# Створюємо файл ігнорування
echo "data/" >> .gitignore
echo ".terraform/" >> .gitignore
echo "*.tfstate*" >> .gitignore
echo ".terraform.lock.hcl" >> .gitignore
# Стягуємо зміни, поєднуючи їх (навіть якщо історії різні)
git pull origin Lab_3 --rebase
# Додаємо конкретні файли
git add Jenkinsfile index.html Dockerfile .gitignore
git commit -m "Lab 3: fixed conflicts and added automation"
git push origin Lab_3
docker ps -a
sudo systemctl status docker
sudo systemctl status jenkins
cd ~/Lab_1
it checkout Lab_4
git checkout Lab_4
git pull origin Lab_4
sudo docker-compose up -d
# Видаляємо пошкоджений файл
sudo rm /usr/local/bin/docker-compose
# Завантажуємо актуальну версію (1.29.2, як у методичці)
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
# Надаємо права на запуск
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version
# Оновлюємо список пакетів
sudo apt-get update
# Встановлюємо docker-compose з офіційних репозиторіїв
sudo apt-get install docker-compose -y
docker-compose --version
# Видаляємо пошкоджений файл назавжди
sudo rm /usr/local/bin/docker-compose
# Перевіряємо версію знову
docker-compose --version
cd ~/Lab_1
sudo docker-compose up -d
cd ~/Lab_4
nano ~/Lab_1/docker-compose.yml
sudo docker-compose up -d
nano ~/Lab_1/docker-compose.yml
docker ps -a
docker stop f4502446ac24
docker stop d3b2474adad6
docker stop b88156270a8b
docker stop 3ff9a58d966e
docker stop 1a67ecc1dffc
docker ps -a
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           cd 
help
cd list
cd -list
cd ~/Lab_6
git checkout Lab_6
cd ~/Lab_1
git checkout -b Lab_6
git checkout Lab_6
git stash
git checkout Lab_6
terraform -version
ansible --version
mkdir -p ~/Lab_6_infra
cd ~/Lab_6_infra
nano main.tf
terraform init
terraform apply
nano main.tf
terraform apply
nano maint.tf
terraform apply
rm maint.tf
nano main.tf
terraform apply
nano inventary.ini
ansible-playbook -i inventory.ini playbook.yml
rm inventary.ini
nano inventory.ini
nano playbook.yml
ansible-playbook -i inventory.ini playbook.yml
docker ps
docker stop bdcce808f3e0
docker rm bdcce808f3e0
cd ~/Lab_1
git add .
git commit -m "Complete Lab 6"
git checkout -b Lab_7
nano Jenkinsfile
docker run -d -p 8080:8080 -p 50000:50000 --name jenkins-server jenkins/jenkins:lts
git push origin Lab_7
docker ps
git push Lab_7
git commit Lab_7
git checkout lab7-jenkins-pipeline
nano Lab_7/Jenkinsfile
git checkout lab7-jenkins-pipeline
git commit -m "Update Jenkinsfile for Lab 7"
git push origin lab7-jenkins-pipeline
git add .
git commit -m "Add Lab 7 infrastructure and pipeline"
git push origin Lab_7:lab7-jenkins-pipeline
docker ps
docker stop e0956424f4b0
docker rm e0956424f4b0
git add Lab_7/main.tf
git commit -m "Add main.tf for Lab 7"
git push origin Lab_7:lab7-jenkins-pipeline
# Спочатку обов'язково задодай і збережи свої зміни локально (якщо ще не зробив)
git add .
git commit -m "Update everything for Lab 7"
# Тепер примусово відправ код (Force Push)
git push origin Lab_7:lab7-jenkins-pipeline --force
cd ~/Lab_1
mkdir -p Lab_7
mv main.tf playbook.yml Lab_7/ 2>/dev/null || true
git add .
git commit -m "Fix: add terraform and ansible files to Lab_7 folder"
git add Lab_7/
git commit -m "Fix: definitely adding Lab_7 folder with config"
git push origin Lab_7:lab7-jenkins-pipeline --force
git push
git push --set-upstream origin Lab_7
Started by user unknown or anonymous
Obtained Jenkinsfile from git https://github.com/NazarH88/PRIKM_ITPA.git
[Pipeline] Start of Pipeline (hide)
[Pipeline] node
Running on Jenkins in /var/lib/jenkins/workspace/Lab_7
[Pipeline] {
[Pipeline] stage
[Pipeline] { (Declarative: Checkout SCM)
[Pipeline] checkout
The recommended git tool is: git
No credentials specified
Fetching changes from the remote Git repository
Fetching upstream changes from https://github.com/NazarH88/PRIKM_ITPA.git
Checking out Revision 565e5dde947a4bd9080eadd950be1349c59bf87f (refs/remotes/origin/Lab_7)
Commit message: "Update Jenkinsfile"
[Pipeline] }
[Pipeline] // stage
[Pipeline] withEnv
[Pipeline] {
[Pipeline] withEnv
[Pipeline] {
[Pipeline] stage
[Pipeline] { (Start)
[Pipeline] echo
Lab_7: CI/CD Pipeline with Terraform & Ansible
[Pipeline] }
[Pipeline] // stage
[Pipeline] stage
[Pipeline] { (Infrastructure Provisioning (Terraform))
[Pipeline] dir
Running in /var/lib/jenkins/workspace/Lab_7/Lab_7
[Pipeline] {
[Pipeline] sh
+ terraform init
The directory has no Terraform configuration files. You may begin working
with Terraform immediately by creating Terraform configuration files.[0m
[Pipeline] sh
+ terraform apply -auto-approve
[31m╷[0m[0m
[31m│[0m [0m[1m[31mError: [0m[0m[1mNo configuration files[0m
[31m│[0m [0m
[31m│[0m [0m[0mApply requires configuration to be present. Applying without a
[31m│[0m [0mconfiguration would mark everything for destruction, which is normally not
[31m│[0m [0mwhat is desired. If you would like to destroy everything, run 'terraform
[31m│[0m [0mdestroy' instead.
[31m╵[0m[0m
[Pipeline] }
[Pipeline] // dir
[Pipeline] }
[Pipeline] // stage
[Pipeline] stage
[Pipeline] { (Image Build & Push)
Stage "Image Build & Push" skipped due to earlier failure(s)
[Pipeline] getContext
[Pipeline] }
[Pipeline] // stage
[Pipeline] stage
[Pipeline] { (Configuration & Deploy (Ansible))
Stage "Configuration & Deploy (Ansible)" skipped due to earlier failure(s)
[Pipeline] getContext
[Pipeline] }
[Pipeline] // stage
[Pipeline] stage
[Pipeline] { (Declarative: Post Actions)
[Pipeline] echo
Пайплайн впав. Видаляємо тимчасову інфраструктуру...
[Pipeline] dir
Running in /var/lib/jenkins/workspace/Lab_7/Lab_7
[Pipeline] {
[Pipeline] sh
+ terraform destroy -auto-approve
[0m[1m[32mNo changes.[0m[1m No objects need to be destroyed.[0m
[0mEither you have not created any objects yet or the existing objects were
already deleted outside of Terraform.
[0m[1m[32m
Destroy complete! Resources: 0 destroyed.
[0m
[Pipeline] }
[Pipeline] // dir
[Pipeline] }
[Pipeline] // stage
[Pipeline] }
[Pipeline] // withEnv
[Pipeline] }
[Pipeline] // withEnv
[Pipeline] }
[Pipeline] // node
[Pipeline] End of Pipeline
ERROR: script returned exit code 1
Finished: FAILURE
Checking out Revision 565e5dde947a4bd9080eadd950be1349c59bf87f
docker ps
docker stop 0b03d4466711
docker rm 0b03d4466711
docker stop
docker ps
docker stop 5a6cce5d36a5
docker rm 5a6cce5d36a5
