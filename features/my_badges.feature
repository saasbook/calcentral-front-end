Feature: Retrieve test data for my badges page

As a CalCentral frontend developer
So that I can test the frontend my badges page independently
I want to receive corresponding test data from an independent application



Scenario: Access /api/my/badges

Given the pathmap from /api/my/badges to /public/dummy/json/badges.json exists
When I access /api/my/badges I should get a response corresponding to /public/dummy/json/badges.json
