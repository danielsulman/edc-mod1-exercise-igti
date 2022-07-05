provider "aws" {
  region = "sa-east-1"
}

#Centralizar o arquivo de controle de estado do terraform
terraform{
    backend "s3"{
        bucket = "terraform-state-igti-daniel"
        key = "state/igti/edc/mod1/terraform.tfstate"
        region = "sa-east-1"
    }
}