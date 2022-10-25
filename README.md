# Infrastructure As A Service GCP

## Introduction
This project is a simple example of how to use Terraform to create a GCP project and a GCP instance.
I will use VSCode to write the code and run the Terraform commands on a Windows machine.

##### Image of Running Instance on GCP
![Running Instance](/terraform/screenshots/VMInstanceRunning.png)

## Prerequisites
- Install [Terraform](https://www.terraform.io/downloads.html)
- Install [Google Cloud SDK](https://cloud.google.com/sdk/docs/install)
- Install [VSCode](https://code.visualstudio.com/download)
- Install [Terraform extension](https://marketplace.visualstudio.com/items?itemName=mauve.terraform) on VSCode

## Create a GCP project
- Create a GCP project
- Create a new repository on GitHub and clone it to your local machine
- Open the project on VSCode and create a new folder called "terraform"
- Open a terminal on VSCode or other terminal window and change into the terraform folder directory
- Run the following command to initialize the terraform project
    **```terraform init```**
- Create a new file called "main.tf" and add the following code:
    ```
    provider "google" {
  # Path to GCP service account credentials
  credentials = file("Path to GCP service account credentials")
  # Your GCP project ID
  project = "your-project-id"
  # Any region of your choice
  region = "your preferred region"
  # Any zone of your choice
  zone = "your preferred zone"
    }
    ```
    ```
    resource "google_compute_instance" "vm" {
  name         = "iaas-vm"
  machine_type = "e2-micro"
  zone         = "us-east4-b"

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2004-lts"
    }
  }

  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }
    ```


- In the terminal, run **```terraform fmt```** to format the code in the tf files
- Run **```terraform init```** again to initialize the project
- Run **```terraform plan```** to see what will be created
- Run **```terraform apply```** to create the VM on GCP

***After this step you will have a GCP project and a VM created. You should be able to see a VM in the console named iaas-vm under Compute Engine.***

##### Terraform Apply Output
![Terraform Apply Output](/terraform/screenshots/TerraformApplyOutput.png)

***Once you are done with the project you can run the following command to destroy the resources so you don't incur more charges:***
**```terraform destroy```**

##### Terraform Destroy Output
![Terraform Destroy Output](/terraform/screenshots/TerraformDestroyOutput.png)

### Dependencies
- Terraform
- Google Cloud Platform
    - CLI
    - Console
    - Compute Engine
- VSCode
    - Terraform extension
- Git and GitHub
- Git Bash