# GCP VM Setup Script

This repository contains a Bash script (`setup.sh`) to automate the setup of a Virtual Machine (VM) instance in **Google Cloud Platform (GCP)**. The script installs necessary packages, configures a web server, and enables monitoring tools.

## Features
- Updates system packages
- Installs **Apache** web server
- Enables & starts **Apache**
- Installs **monitoring tools** (`htop`, `curl`, `net-tools`)
- Creates a basic web page (`index.html`)
- Configures firewall to allow HTTP traffic (port 80)

## Prerequisites
- A **Google Cloud Platform (GCP) VM instance** running **Ubuntu**
- SSH access to the VM

## Installation & Usage

### **1. Clone the Repository**
```sh
git clone https://github.com/YOUR_GITHUB_USERNAME/gcp-vm-setup.git
cd gcp-vm-setup
```
### **2. Upload the Script to Your GCP VM**
```sh
scp setup.sh [USERNAME]@[VM_EXTERNAL_IP]:~/
```
### **3. Connect to the VM**
```sh
ssh [USERNAME]@[VM_EXTERNAL_IP]
```
### **4. Run the script**
```sh
chmod +x setup.sh
./setup.sh
```

## Testing
Once the script completes, open a web browser and go to:
```css
http://[VM_EXTERNAL_IP]
```
You should see:

```css
Welcome to My GCP VM
```
## Contributions
This repository is open to contribute. Feel free to do so! 

