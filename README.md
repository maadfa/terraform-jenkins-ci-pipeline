<<<<<<< HEAD
# DevOps Portfolio Project 🚀

An end-to-end CI/CD pipeline using:

- **Terraform** for AWS Infrastructure
- **Jenkins** for CI/CD Automation
- **Docker + ECR** for containerization
- **ECS Fargate** for container orchestration
- **CloudWatch** for monitoring and logs

## 🔧 Project Structure
- `terraform/` – Infrastructure as Code
- `app/` – Simple Flask app
- `jenkins/` – CI/CD pipeline with Jenkinsfile

## Prerequisites:

AWS account

GitHub

Jenkins installed (locally or on an EC2 instance)

Terraform CLI installed

Docker installed

## Step by Step guide :

Step 1: Set Up Your Project Structure

mkdir devops-portfolio

cd devops-portfolio

mkdir terraform app jenkins

Step 2: Write Terraform Code to use AWS Resources

Create various files inside the terraform using "touch" command to write necessory code in them.

Create VPC, subnets, Internet Gateway

Create ECS cluster, ECS task definition, ECS service

Create IAM roles/policies for ECS + Jenkins

Create ECR repository for Docker images

Configure security groups and CloudWatch log groups

Then ,run the command of 

Terraform init 

Terraform apply 

In this way ,all AWS  cloud resources are conncted togather via terraform.

Step 3: Build Your Flask App and Dockerfile

Inside app folder ,create app.py to create your flask app .Also create doker file inside app folder.

This defines how to containerize your app.
Step 4 :Configure Jenkinsfile

Inside the jenkins/ folder:

Write a Jenkinsfile to automate:

Pulling code from GitHub

Building Docker image

Logging in to AWS ECR

Pushing Docker image to ECR

Updating ECS service


Jenkins acts as the automation engine. It builds and pushes Docker images to ECR and tells ECS to deploy the updated version.

Step 5: Push Docker Image to AWS ECR

ECR (Elastic Container Registry) is Amazon Web Services' fully managed Docker container registry.

Dockerized application (a Flask app)  is pushed to ECR so that it can be later deployed to ECS Fargate, which runs containers in the cloud.

Jenkins builds and pushes Docker images to ECR, which ECS later pulls to run containers.

Step 6: Update ECS Service

Use AWS CLI or Terraform to update the ECS service
When the Docker image (with new app code) is pushed to ECR, the ECS service doesn’t automatically redeploy the new version.So, it has to be pushed  by using the following command 

--force-new-deployment

It forces ECS to pull the newest version of the image from ECR and redeploy the task.

Without this command, your ECS service will keep running the old container (with old code).

This step refreshes the running service to ensure it uses your latest build.














## 📸 Architecture

![Architecture](architecture.png)

## 🛠️ How to Run

1. Deploy infrastructure:

cd terraform
terraform init
terraform apply
## 🔍 Project Overview

This project automates the deployment of a containerized application to AWS ECS using Jenkins as the CI/CD tool and Terraform for infrastructure provisioning. It’s designed to show how to  to build scalable, cloud-native pipelines using industry-standard DevOps practices.

## 🔄 How the Tools Work Together

following are the steps that show  how the entire pipeline flows from **code to deployment**:

1. ✅ **Code Commit (app + infra):**
   - You push your app code and Terraform configurations to GitHub.

2. ⚙️ **Terraform Setup:**
   - Terraform provisions AWS resources like ECR (for container images), ECS Cluster, VPC, subnets, task definitions, security groups, etc.

3. 🚀 **Docker Build & Push:**
   - Jenkins builds the Docker image from your app.
   - The image is pushed to AWS ECR.

4. 🏗️ **Deploy to ECS:**
   - Jenkins then updates the ECS Service with the new image version.
   - ECS pulls the image from ECR and spins up a new container in the cluster.

5. 📊 **CloudWatch Logs:**
   - Logs from the ECS tasks are streamed into Amazon CloudWatch for observability and monitoring.
=======
# terraform-jenkins-ci-pipeline
