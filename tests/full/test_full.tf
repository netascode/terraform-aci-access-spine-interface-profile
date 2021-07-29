terraform {
  required_providers {
    test = {
      source = "terraform.io/builtin/test"
    }

    aci = {
      source  = "netascode/aci"
      version = ">=0.2.0"
    }
  }
}

module "main" {
  source = "../.."

  name = "PROF1"
}

data "aci_rest" "infraSpAccPortP" {
  dn = "uni/infra/spaccportprof-${module.main.name}"

  depends_on = [module.main]
}

resource "test_assertions" "infraSpAccPortP" {
  component = "infraSpAccPortP"

  equal "name" {
    description = "name"
    got         = data.aci_rest.infraSpAccPortP.content.name
    want        = module.main.name
  }
}
