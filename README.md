
 # 🚀 Project: Next.js App with Docker, GHCR & GitHub Actions ,Kubernetes.


 ### This project is a simple Next.js web application that has been containerized using Docker, automated with GitHub Actions, and deployed on Kubernetes (Minikube).

 

## Project Overview

 1. Dockerize a Next.js application
 2. Push Docker image to GitHub Container    Registry (GHCR).
3. Automate CI/CD using GitHub Actions
4. deploy the containerized app on Kubernetes (Minikube)

## 🛠️ Tech Stack Used
 🐳 Docker- Containerize the application.

🧰 GitHub Actions- Automate build & push to GHCR.

🏗️ GHCR (GitHub Container Registry)- Store container images.

☸️ Kubernetes- Run & manage containers.

💻 Next.js- Frontend framework.



## 🐳 Docker Setup
### 1. Firstly you Install Docker:
    
   sudo apt install -y docker.io

  Start and enable Docker:
  
  sudo systemctl enable --now docker

  Add current user to the Docker group (to use Docker without root):
  
  sudo usermod -aG docker $USER && newgrp docker

### 2. Build Docker Image
    docker build -t archanasingh05nextjs-basic-app:multi .
##### Check Docker images
    docker images    

### 3. Run Container Locally
    docker run -p 3000:3000 archanasingh05/nextjs-basic-app:multi

##### Check Container
    docker ps

Open your browser and visit:
  http://your-server-ip:3000
  <img width="1366" height="768" alt="Screenshot from 2025-10-06 22-07-41" src="https://github.com/user-attachments/assets/aa93fa3b-cc22-4606-8c3e-fa50fbf97ffb" />
### 4. Image to Docker Hub
    docker push archanasingh05/nextjs-basic-app:multi
    
<img width="1366" height="768" alt="Screenshot from 2025-10-06 22-49-52" src="https://github.com/user-attachments/assets/659fb026-2ba5-46d2-af84-12b1aa5ad5af" /> Push

##  GitHub Actions (CI/CD)
#### Every time you push changes to the main branch:
  1. GitHub Actions workflow runs automatically.
  2. It builds your Docker image.

3. Then pushes it to GitHub Container Registry (GHCR).
### Tag your Docker image
GHCR uses this format:

    docker tag nextjs-basic-app ghcr.io/Archana-DevOps05/Nextjs-basic-app:latest

#### logged in with Docker:
    docker login ghcr.io -u Archana-DevOps05

### Push to GHCR
    docker push ghcr.io/Archana-DevOps05/Nextjs-basic-app:latest

###  Verify the push

Go to:
👉 https://github.com/archana-devops05?tab=packages

You’ll see your Docker image listed under Packages.
<img width="1366" height="768" alt="Screenshot from 2025-10-07 14-00-47" src="https://github.com/user-attachments/assets/4a31ea0c-4b3b-4570-b240-aa1e8a876dd5" />

# Deploying a Next.js Application on Kubernetes (Minikube)
## Steps to Deploy

### Step 1: Install Minikube and kubectl

1. **Install Minikube**:  
   Follow the instructions to install Minikube based on your operating system:  
   [Minikube Installation](https://minikube.sigs.k8s.io/docs/).

2. **Install kubectl**:  
   kubectl is the Kubernetes command-line tool. You can install it by following this guide:  
   [kubectl Installation](https://kubernetes.io/docs/tasks/tools/install-kubectl/).

4. **Start Minikube**:
   After installing Minikube, start it with the following command:
   ```bash
   minikube start --driver=docker --vm=true

This command will start a single-node Kubernetes cluster inside a Docker container.

Check the cluster status with:

minikube status


#  Create Kubernetes Pod
Create a pod YAML file deployment.yaml for your Next.js application. Replace <your-docker-image-name> with your Docker image name.

kubectl apply -f pod.yaml

# Verify Pods

Kubectl get pods

# Create Kubernetes Deployment
Create a deployment YAML file deployment.yaml for your Node.js application. Replace <your-docker-image-name> with your Docker image name.

Deploy the app using:

kubectl apply -f deployment.yaml

# Verify Deployment

kubectl get deployments

#  Create Kubernetes Service
Create a service YAML file service.yaml to expose your app.

kubectl apply -f service.yaml

# Accessing the Deployment
 Check the status of your pods and services:

kubectl get pods -n noejs

kubectl get svc -n nodejs

Forward the service port to access it locally:

kubectl port-forward --address=0.0.0.0 svc/nextjs-service 30080:3000


Open your browser and visit:
http://your-server-ip:30080
<img width="1366" height="768" alt="Screenshot from 2025-10-07 21-51-41" src="https://github.com/user-attachments/assets/8b56f15a-8e26-46c6-83c2-8a43cce3ee67" />



    




