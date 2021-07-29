resource "aci_rest" "infraSpAccPortP" {
  dn         = "uni/infra/spaccportprof-${var.name}"
  class_name = "infraSpAccPortP"
  content = {
    name = var.name
  }
}
