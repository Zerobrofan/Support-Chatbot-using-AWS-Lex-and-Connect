resource "aws_connect_instance" "journeygrove_connect" {
  identity_management_type = "CONNECT_MANAGED"
  inbound_calls_enabled    = true
  outbound_calls_enabled   = true
}

resource "aws_connect_contact_flow" "journeygrove_contact_flow" {
  instance_id   = aws_connect_instance.journeygrove_connect.id
  name          = "JourneyGroveSupportContactFlow"
  description   = "Contact flow for the JourneyGrove support bot"
  content       = file("connect_contact_flow.json") # Contact flow definition file
  content_hash  = filemd5("connect_contact_flow.json")
}
