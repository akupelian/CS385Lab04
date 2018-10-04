sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
sudo apt-get install -y docker-ce=18.06.1~ce~3-0~ubuntu
sudo usermod -aG docker $USER
logout
docker run hello-world
docker ps
docker ps -a
clear
sudo snap install kubectl --classic
kubectl version
gcloud container clusters create lab04cluster --zone us-west1-c
gcloud container clusters list
gcloud compute instances list
kubectl version
kubectl | less
kubectl get nodes
kubectl run foobar --image=nginx
kubectl get deployments
kubectl get pods
kubectl -o json
kubectl delete deployment foobar
kubectl get pods
clear
curl -X POST -H 'Content-Type: application/json' http://<IP_ADDR>:8080/fibonacci -d '{"fibonacci_number": 27}'
curl -X POST -H 'Content-Type: application/json' http://<35.233.153.204>:8080/fibonacci -d '{"fibonacci_number": 27}'
curl -X POST -H 'Content-Type: application/json' http://35.233.153.204:8080/fibonacci -d '{"fibonacci_number": 27}'
ls
mkdir src
cd src
ls
vi fibonacci_number.go
cd ..
ls
vi Dockerfile
vi makefile
make
sudo apt install make
make
docker ps
clear
docker ps
docker inspect fibonacci_number | grep IP
curl http::/172.17.0.2
curl http://172.17.0.2
docker ps
curl http://172.17.0.2:8080
curl http://172.17.0.2
curl http://172.17.0.2:8080/status
clear
docker inspect fibonacci_number | grep IP
curl -X POST -H 'Content-Type: application/json' http://172.17.0.2:8080/fibonacci -d '{"fibonacci_number": 27}'
clear
ls
docker tag fibonacci_number:latest gcr.io/lab-02-216417/fibonacci:latest
docker ps
gcloud auth configure-docker
gcloud docker -- push gcr.io/lab-02-216417/fibonacci:latest
kubectl expose deployment fibonacci --port 8080 --type LoadBalancer
kubectl get pods
kubectl run fibonacci --image=gcr.io/lab-02-216417/fibonacci:latest
kubectl get pods
kubectl expose deployment fibonacci --port 8080 --type LoadBalancer
kubectl get services
sudo apt-get update
sudo apt-get install -y apache2-utils build-essential
ulimit -n 25000
vi payload.json
ls
echo '{"fibonacci_number": 20}' > payload.json
cat payload.json 
kubectl get services
ab -p payload.json -T application/json -m POST -n 100 -s 100 -r http://35.230.65.219:8080/fibonacci
vi table_generator.sh
touch data_table.txt
ls
rm data_table.txt 
./table_generator.sh
sudo apt install bash
./table_generator.sh
chmod u+x table_generator.sh 
./table_generator.sh
:
./table_generator.sh
ulimit -n 25000
./table_generator.sh
docker ps
clear
ls
vi data_table.txt 
ab -p payload.json -T application/json -m POST -n 100 -s 100 -r http://:8080/fibonacci
ab -p payload.json -T application/json -m POST -n 100 -s 100 -r http://35.230.65.219:8080/fibonacci
ab -p payload.json -T application/json -m POST -n 1000 -c 50 -s 100 -r http://35.230.65.219:8080/fibonacci
ab -p payload.json -T application/json -m POST -n 1000 -c 2000 -s 100 -r http://35.230.65.219:8080/fibonacci
ab -p payload.json -T application/json -m POST -n 10000 -c 2000 -s 100 -r http://35.230.65.219:8080/fibonacci
ab -p payload.json -T application/json -m POST -n 45000 -c 15000 -s 100 -r http://35.230.65.219:8080/fibonacci
ulimit -n 25000
ab -p payload.json -T application/json -m POST -n 45000 -c 15000 -s 100 -r http://35.230.65.219:8080/fibonacci
exit
tail-f data_table.txt 
tail -f data_table.txt 
ls
vi data_table.txt 
rm data_table.txt 
ls
vi table_generator.sh 
./table_generator.sh 
clear
rm data_table.txt 
docker ps
ls
vi table_generator.sh 
kubectl get services
ls
vi table_generator.sh 
ls
./table_generator.sh 
vi data_table.txt 
ls
ab -p payload.json -T application/json -m POST -n 45000 -c 15000 -s 100 -r http://35.230.65.219:8080/fibonacci
ls
docker ps
kubectl get services
ab -p payload.json -T application/json -m POST -n 45000 -c 15000 -s 100 -r http://35.230.65.219:8080/fibonacci
ls
ab -p payload.json -T application/json -m POST -n 45000 -c 15000 -s 100 -r http://35.230.65.219:8080/fibonacci
ulimit -n 25000
ab -p payload.json -T application/json -m POST -n 45000 -c 15000 -s 100 -r http://35.230.65.219:8080/fibonacci
tail -f data_table.txt 
ulimit -n 25000
ls
docker ps
make clean
clear
make spring_clean 
clear
ls
make
docker ps
vi data_table.txt 
ab -p payload.json -T application/json -m POST -n 45000 -c 15000 -s 100 -r http://<SERVICE_EXT_IP>:8080/fibonacci
kubectl get services
ab -p payload.json -T application/json -m POST -n 45000 -c 15000 -s 100 -r http://35.230.65.219:8080/fibonacci
ab -p payload.json -T application/json -m POST -n 44950 -c 15000 -s 100 -r http://35.230.65.219:8080/fibonacci
ls
vi data_table.txt 
kubectl scale deployment fibonacci --replicas 3
kubectl get replicaset
./table_generator.sh 
vi data_table.txt 
kubectl scale deployment fibonacci --replicas 6
kubectl get replicaset
./table_generator.sh 
vi data_table.txt 
kubectl scale deployment fibonacci --replicas 9
kubectl get replicaset
./table_generator.sh 
vi data_table.txt 
kubectl scale deployment fibonacci --replicas 12
kubectl get replicaset
./table_generator.sh 
kubectl scale deployment fibonacci --replicas 0
kubectl get replicaset
kubectl scale deployment fibonacci --replicas 1
kubectl get replicaset
ab -p payload.json -T application/json -m POST -n 45000 -c 15000 -s 100 -r http://35.230.65.219:8080/fibonacci
vi data_table.txt 
clear
ls
vi data_table.txt 
ab -p payload.json -T application/json -m POST -n 10000 -c 2000 -s 100 -r http://35.230.65.219:8080/fibonacci
vi data_table.txt 
kubectl scale deployment fibonacci --replicas 9
kubectl get replicaset
ab -p payload.json -T application/json -m POST -n 10000 -c 2000 -s 100 -r http://35.230.65.219:8080/fibonacci
ab -p payload.json -T application/json -m POST -n 20000 -c 2000 -s 100 -r http://35.230.65.219:8080/fibonacci
vi data_table.txt 
cp data_table.txt ~/Desktop
ls
vi Desktop 
rm Desktop 
ls
vi data_table.txt 
clear
ls
vi data_table.txt 
exit
gcloud container clusters delete lab04cluster --zone us-west1-c
make clean
ls
docker ps
docker images
docker rmi fibonacci_number:latest 
clear
ls
kubectl get replicaset
kubectl
exit
