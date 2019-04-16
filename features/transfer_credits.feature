Feature: Retrieve test data for transfer credit page

As a CalCentral frontend developer
So that I can test the frontend transfer credit page independently
I want to receive corresponding test data from an independent application



Scenario: Access /api/academics/transfer_credits

Given the pathmap from /api/academics/transfer_credits to /public/dummy/json/transfer_credit.json exists
When I access /api/academics/transfer_credits I should get a response corresponding to /public/dummy/json/transfer_credit.json
