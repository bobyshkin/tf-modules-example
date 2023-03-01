# Terraform for testing with terratest
#
# For this module, a large portion of the test is simply
# verifying that Terraform can generate a plan without errors.
#

provider "aws" {
  region = var.region
}

module "terraform_s3_backend" {
  source = "../.."

  context = module.this.context
}
