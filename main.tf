terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
    }
  }
}

resource "random_pet" "zqa" {
  length = 2
}

output "pet_name" {
  value = random_pet.zqa.id
}
