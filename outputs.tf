output "schedule_lookup_id" {
  description = "Map of id values across all schedule_lookup, keyed the same as var.schedule_lookup"
  value       = { for k, v in data.pagerduty_schedule.schedule_lookup : k => v.id }
}
output "schedule_lookup_name" {
  description = "Map of name values across all schedule_lookup, keyed the same as var.schedule_lookup"
  value       = { for k, v in data.pagerduty_schedule.schedule_lookup : k => v.name }
}

