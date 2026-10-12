data "pagerduty_schedule" "schedule_lookup" {
  for_each = var.schedule_lookup

  name = each.value.name
}

