How To Download terraform for Windows:
https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli 

Installation Process:
1. After Download unzip the package
2. Run terrafom.exe
3. Add the terraform location into System environment variable
4. Check terraform -version command

Terraform command:
===================
terraform init => To initialize terraform provider 
terraform fmt => To format all resources in terraform
terraform plan => before making any changes it will show status of resource(how mane will create, change and destroy)
terraform apply => it will apply terraform script
terraform validate => validating your terraform script
terraform taint => its used to mark the resource to taint 