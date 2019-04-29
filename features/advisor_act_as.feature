Feature: Use the /advisor_act_as route

As a CalCentral frontend developer
So that I can test pages which use the advisor act as feature
I want to receive the same response from that route as is used in the CalCentral backend



Scenario: Access /advisor_act_as
When I POST to the /advisor_act_as page
Then I should get a 204 response