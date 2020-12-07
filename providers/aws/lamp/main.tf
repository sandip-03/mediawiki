# This configures aws – required in all terraform files

provider "aws" {
  region = "${var.region}"
}

