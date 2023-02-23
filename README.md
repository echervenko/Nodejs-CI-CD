
# Nodejs Project on Terraform


This repository contains Terraform code for deploying a Node.js application.

### Prerequisites:

* An active Google Cloud account
* Pre-Configured GKE Cluster



### Step1
#

Login to your GCP account
```
https://console.cloud.google.com
```

### Step2
#
#### Search for "Create a Project" Tab
#### Create new project :

```
terraform-project-WHATEVER_YOU_WANT
```

#### Navigate to Cloud Storage, and create a bucket: 
```
terraform-project-WHATEVER_YOU_WANT 
```

### Step3
#
#### Create a new file `tfvars` file under `0.account_setup` folder:
```
0.account_setup/configurations.tfvars
```

### Step4
#### Add the following code:
#
```
# Please get your AWS Domain
google_domain_name = "AWS_DOMAIN"

# Use GCP account email
email              = "EMAIL"

# Add bucketname you created above
BUCKET_NAME        = "terraform-project-WHATEVER_YOU_WANT"

# Add project name you created above
PROJECT_ID         = "terraform-project-WHATEVER_YOU_WANT" 




nodejs-config = {
    repository_id = The ID of the repository where the Node.js app will be stored.

    namespace_name = The name of the Kubernetes namespace where the Node.js deployment will be created

    tag = The version of the Node.js application to deploy.

    deployment_name = The name of the Kubernetes deployment that will be created.

    image-repository =  GCP artifact repository ex: "us-central1-docker.pkg.dev/terraform-project-alpkocer/team2-nodejs/nodejs"  

    host =  ingress host URL for the accessing the application.
}

```

### Step4
#
### under `0.account_setup` folder:

```
bash login.sh 
```
#### follow the instructions. Command line will ask to authenticate 2 times.



## Initializing Terraform
#

Terraform resources will be created using a simple script and makefile.

* Run `build.sh` under same directory where makefile is located.

### To build:

```
bash build.sh
```

### To destroy:

```
bash destroy.sh
```






