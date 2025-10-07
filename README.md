
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
    https://docs.docker.com/engine/install/ubuntu/

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



