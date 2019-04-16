Feature: Retrieve test data for my residency page

As a CalCentral frontend developer
So that I can test the frontend my residency page independently
I want to receive corresponding test data from an independent application



Scenario: Access /api/my/residency

Given the pathmap from /api/my/residency to /public/dummy/json/residency.json exists
When I access /api/my/residency I should get a response corresponding to /public/dummy/json/residency.json
