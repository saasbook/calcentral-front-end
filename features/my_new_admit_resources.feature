Feature: Retrieve test data for my new admit resources page

As a CalCentral frontend developer
So that I can test the frontend my new admit resources page independently
I want to receive corresponding test data from an independent application



Scenario: Access /api/my/new_admit_resources

Given the pathmap from /api/my/new_admit_resources to /public/dummy/json/new_admit_resources.json exists
When I access /api/my/new_admit_resources I should get a response corresponding to /public/dummy/json/new_admit_resources.json
