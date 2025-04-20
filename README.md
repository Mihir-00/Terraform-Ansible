# 🚀 DevOps Project: Terraform + Ansible + Docker on AWS EC2

This project demonstrates infrastructure automation using **Terraform** and **Ansible** to provision an AWS EC2 instance, install Docker and Docker Compose, and deploy a containerized application using `docker-compose`.

---

## 🛠️ Tools & Technologies

- **Terraform** – Infrastructure as Code (IaC)
- **Ansible** – Configuration Management
- **AWS EC2** – Cloud Compute
- **Docker** – Containerization
- **Docker Compose** – Multi-container Deployment
- **Ubuntu** – EC2 OS

---

## ⚙️ How to Run This Project

### 1. ✅ Prerequisites

Make sure the following tools are installed on your local machine:
- [Terraform](https://developer.hashicorp.com/terraform/downloads)
- [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html)
- [Git](https://git-scm.com/)
- [Ansible (optional if provisioned remotely)](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html)
- AWS credentials configured (`aws configure`)
- A valid `.pem` SSH key pair for EC2 access

---

### 2. 🔐 Update SSH Key in Terraform
Ensure your private key is accessible and referenced properly in `main.tf`:

### 3. Run the following commands:
- terraform init
- terraform plan
- terraform apply

### 🙌 Wrap-Up
- This project is a simple but powerful demonstration of combining Terraform and Ansible to automate the setup of a Docker-ready cloud server from scratch.

Feel free to fork, modify, and build upon it!
