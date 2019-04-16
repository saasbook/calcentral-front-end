Feature: Retrieve test data for my activities page

As a CalCentral frontend developer
So that I can test the frontend my activities page independently
I want to receive corresponding test data from an independent application



Scenario: Access /api/my/activities

Given the pathmap from /api/my/activities to /public/dummy/json/activities.json exists
When I access /api/my/activities I should get a response corresponding to /public/dummy/json/activities.json
