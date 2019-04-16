Feature: Retrieve test data for my financials page

As a CalCentral frontend developer
So that I can test the frontend my financials page independently
I want to receive corresponding test data from an independent application



Scenario: Access /api/my/financials

Given the pathmap from /api/my/financials to /public/dummy/json/financials.json exists
When I access /api/my/financials I should get a response corresponding to /public/dummy/json/financials.json
