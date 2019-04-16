Feature: Retrieve test data for my sir statuses page

As a CalCentral frontend developer
So that I can test the frontend my sir statuses page independently
I want to receive corresponding test data from an independent application



Scenario: Access /api/my/sir_statuses

Given the pathmap from /api/my/sir_statuses to /public/dummy/json/sir_statuses_completed.json exists
When I access /api/my/sir_statuses I should get a response corresponding to /public/dummy/json/sir_statuses_completed.json
