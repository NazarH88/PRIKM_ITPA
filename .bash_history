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
