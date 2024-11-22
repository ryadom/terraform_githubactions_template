# Terraform Github Actions Template

This is template project to setup Terraform with AWS backend, Terragrunt and Github Actions.

## Guide

- Create AWS IAM user and put `AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY` to Github repository secrets.
- Create AWS S3 Bucket and AWS DynamoDB table and put corresponding names to terragrunt.hcl. See this guide for more info https://spacelift.io/blog/terraform-s3-backend
- Put any additional variables you need to Github repository secrets and update `.github/workflows/terragrunt.yaml` to propagate these variables. There is `example_variable` for example.
- Create repository secret `PERSONAL_GITHUB_TOKEN` for automatic pull request creation. https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/managing-your-personal-access-tokens
- To create multiple projects in this repo create folder like project and add this folder to the matrix in `.github/workflows/terragrunt.yaml`

## Usage

- Push to `dev` branch.
- Checkout terraform plan in automatically created pull request to the `main` branch.
- If plan is OK merge this pull request.
- Pull request merge triggers apply action. (Also you can push to the `main` branch directly to apply action).
