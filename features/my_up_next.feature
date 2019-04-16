Feature: Retrieve test data for my up next page

As a CalCentral frontend developer
So that I can test the frontend my up next page independently
I want to receive corresponding test data from an independent application



Scenario: Access /api/my/up_next

Given the pathmap from /api/my/up_next to /public/dummy/json/up_next.json exists
When I access /api/my/up_next I should get a response corresponding to /public/dummy/json/up_next.json
