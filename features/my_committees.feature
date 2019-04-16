Feature: Retrieve test data for my committees page

As a CalCentral frontend developer
So that I can test the frontend my committees page independently
I want to receive corresponding test data from an independent application



Scenario: Access /api/my/committees

Given the pathmap from /api/my/committees to /public/dummy/json/committees.json exists
When I access /api/my/committees I should get a response corresponding to /public/dummy/json/committees.json
