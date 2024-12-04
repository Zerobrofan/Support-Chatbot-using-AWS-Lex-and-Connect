# Support Chatbot using AWS Lex & AWS Connect 🗣
<div align="center">

  ![awslex](https://github.com/user-attachments/assets/e7c7ed92-d39b-412c-92f7-a942a9ec1ed3)

  <h2 align="center">Support Chatbot using AWS Lex & AWS Connect 🗣</h2>

  A customer service support chatbot for booking hotels and car rentals. Made with AWS Lex and AWS Connect.

  <a href="https://d5z5n79osgism.cloudfront.net/"><strong>➥ Website (Cloudfront Distribution) 🌐</strong></a>

</div>

## :hammer_and_wrench: Architecture:
<div align="center">

  <img src="https://github.com/user-attachments/assets/3946deb7-d0bc-438f-9a3f-6f97f40c524d" style="width: 90%;">

</div>

## 🎙 AWS Connect Flow
<div align="center">

  <img src="https://github.com/user-attachments/assets/5909d942-2986-404d-943f-4b51fbf10e7d" style="width: 90%;">
  
</div>

## ⚙ Usage
To use the support chatbot, follow these steps:

1. **Specify whether you want to book a `Hotel` or a `Car`. The chatbot has only these 2 intents.**
2. **Afterwards, you'll be asked to specify the `Location`, `Start Date`, `End Date`, `Age`, `Room Type` or `Car Type`.**
3. **Try to answer question with a single or few words (keep it simple). Otherwise, the chatbot will initiate it's fallback intent and end the call**.
4. **You can also perform a `Voice Call` with the chatbot, but ensure your voice is clear.**

## 📖 Scenario: Booking a Car Rental
This section showcases an example use case for the Lex chatbot, keep in mind you can use it to book a hotel in the same manner. <br>
***NOTE ❗: Try to follow this conversation path closely otherwise the chatbot'll encounter an error end the convo.***

```yaml
Customer has joined the chat  

System Message:  
Welcome to Journey Grove! Whether you’re looking for the perfect hotel stay or a reliable car rental, our team is ready to help make your journey smooth and memorable.  

Support Bot:  
How can we help you today?  

Customer:  
I want to book a car  

Support Bot:  
In what city do you need to rent a car?  

Customer:  
New York  

Support Bot:  
What day do you want to start your rental?  

Customer:  
Tomorrow  

Support Bot:  
What day do you want to return the car?  

Customer:  
7 days from now.  

Support Bot:  
How old is the driver for this rental?  

Customer:  
32  

Support Bot:  
What type of car would you like to rent? Our most popular options are economy, midsize, and luxury.  

Customer:  
Economy  

Support Bot:  
Okay, I have you down for a Economy rental in New York from 2024-12-01 to 2024-12-07. Should I book the reservation?  

Customer:  
Yes, please.  

System Message:  
Thank you for choosing Journey Grove! We're glad to have helped with your travel plans. Safe travels, and we look forward to serving you again soon!  

Chat has ended!  
```
---

***Lastly, this was a fun project 🎉! Feel free to play around with it, but expect things to break if you play too hard 🤣.***
