Feature: Retrieve test data for my registrations page

As a CalCentral frontend developer
So that I can test the frontend my registrations page independently
I want to receive corresponding test data from an independent application



Scenario: Access /api/my/registrations

Given the pathmap from /api/my/registrations to /public/dummy/json/my_registrations.json exists
When I access /api/my/registrations I should get a response corresponding to /public/dummy/json/my_registrations.json
