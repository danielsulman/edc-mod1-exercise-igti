#HCL - Hashcorp Configuration Language
# Linguagem declarativa

resource "aws_s3_bucket" "datalake" {
  #paramêtros de configuração do bucket escolhido
  bucket = "${var.base_bucket_name}-${var.ambiente}-${var.numero_conta}"
  acl = "private" #nivel de privacidade

  server_side_encryption_configuration{
    rule{
	    apply_server_side_encryption_by_deafult{
	      sse_algorithm = "AES256"
	    }
	  }
  }
  
  tags = {
    IES = "IGTI",
	  CURSO = "EDC"
  }
} 