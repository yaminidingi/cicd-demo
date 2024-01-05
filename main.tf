terraform {
  required_providers {
    snowflake = {
      version = "0.25.17"
      source = registry.terraform.io/hashicorp/snowflake
    }
  }

  backend "remote" {
    organization = "corpapps123"

    workspaces {
      name = "gh-actions-demo"
    }
  }
}

provider "snowflake" {
}

resource "snowflake_database" "demo_db" {
  name    = "DEMO_DB"
  comment = "Database for Snowflake Terraform demo"
}