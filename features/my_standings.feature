Feature: Retrieve test data for my standings page

As a CalCentral frontend developer
So that I can test the frontend my standings page independently
I want to receive corresponding test data from an independent application



Scenario: Access /api/my/standings

Given the pathmap from /api/my/standings to /public/dummy/json/standings_present.json exists
When I access /api/my/standings I should get a response corresponding to /public/dummy/json/standings_present.json
