variable "schedule_lookup" {
  description = <<EOT
Map of schedule_lookup, attributes below
Required:
    - name
EOT

  type = map(object({
    name = string
  }))
}

