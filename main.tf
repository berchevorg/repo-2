terraform {
  backend "remote" {
    organization = "berchevorg"

    workspaces {
      name = "repo-2"
    }
  }
}

resource "random_pet" "name2" {

  length    = "6"
  separator = "-"
}

output "out" {
  value = "${random_pet.name.id}"
}
