output "dn" {
  value       = aci_rest.infraSpAccPortP.id
  description = "Distinguished name of `infraSpAccPortP` object."
}

output "name" {
  value       = aci_rest.infraSpAccPortP.content.name
  description = "Spine interface profile name."
}
