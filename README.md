# Infrastructure As A Service GCP

## Introduction
This project is a simple example of how to use Terraform to create a GCP project and a GCP instance.
I will use VSCode to write the code and run the Terraform commands on a Windows machine.

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
- Create a new file called "main.tf" and add the following code
    ```


    ```
- In the terminal, run **```terraform fmt```** to format the code
- Run **```terraform init```** again to initialize the project
- Run **```terraform plan```** to see what will be created
- Run **```terraform apply```** to create the VM on GCP

***After this step you will have a GCP project and a VM created. You should be able to see a VM in the console named IaaS-vm under Compute Engine.***