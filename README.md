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

Step 2: Write Terraform Code to Provision AWS Resources
Create various files inside the terraform using "touch" command to write necessory code in them.




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
