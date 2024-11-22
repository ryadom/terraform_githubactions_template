remote_state {
  backend = "s3"
  generate = {
    path      = "terraform_backend.tf"
    if_exists = "overwrite_terragrunt"
  }
  config = {
    bucket = "smalltalk2-terraform-state"
    key = "cloud/${path_relative_to_include()}/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-lockdb"
  }
}
