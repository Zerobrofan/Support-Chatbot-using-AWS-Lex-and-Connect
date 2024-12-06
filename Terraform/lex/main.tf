resource "aws_lex_bot" "journeygrove_support_bot" {
  name        = "JourneyGroveSupportBot"
  description = "Support chatbot for JourneyGrove"
  locale      = "en-US"
  child_directed = false

  intent {
    name = "GetBookingInfo"

    slot {
      name        = "BookingID"
      description = "Slot to capture booking ID"
      slot_type   = "AMAZON.Number"
      value_elicitation_prompt {
        messages = [
          {
            content_type = "PlainText"
            content      = "What is your booking ID?"
          }
        ]
        max_attempts = 3
      }
    }

    fulfillment_activity {
      type = "ReturnIntent"
    }
  }
}
