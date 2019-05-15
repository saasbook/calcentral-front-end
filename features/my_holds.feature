Feature: Retrieve test data for my holds page

As a CalCentral frontend developer
So that I can test the frontend my holds page independently
I want to receive corresponding test data from an independent application



Scenario: Access /api/my/holds

Given the pathmap from /api/my/holds to /public/dummy/json/holds_present.json exists
When I access /api/my/holds I should get a response corresponding to /public/dummy/json/holds_present.json
