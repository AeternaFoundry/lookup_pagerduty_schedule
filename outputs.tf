output "schedule_lookup_id" {
  description = "Map of id values across all schedule_lookup, keyed the same as var.schedule_lookup except keys with no id are omitted"
  value       = { for k, v in data.pagerduty_schedule.schedule_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "schedule_lookup_name" {
  description = "Map of name values across all schedule_lookup, keyed the same as var.schedule_lookup except keys with no name are omitted"
  value       = { for k, v in data.pagerduty_schedule.schedule_lookup : k => v.name if v.name != null && length(v.name) > 0 }
}

