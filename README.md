# Capstone-Project
1. create virtual environment
    `python3 -m venv ~/.devops-capstone`
2. activate the virtual environment 
`source ~/.devops-capstone/bin/activate`
3. run `make install`
4. run ` make lint`
5. build docker image using the command
   run  ` docker build -t capstone .`
6. run the docker image 
    ` docker run -dp 80:80 capstone`
7. login in to docker and then run the code 
    `docker tag capstone:latest newthingade/dockerhub:capstone-project`
    `docker push newthingade/dockerhub:capstone-project`
8. create a circleci config file
9. `kubectl create -f capstone.yml`
10. `kubectl get pods`
11. `kubectl get deployments`
