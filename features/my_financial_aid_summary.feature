Feature: Retrieve test data for my financial aid summary page

As a CalCentral frontend developer
So that I can test the frontend my financial aid summary page independently
I want to receive corresponding test data from an independent application



Scenario: Access /api/my/financial_aid_summary

Given the pathmap from /api/my/financial_aid_summary to /public/dummy/json/finaid_summary.json exists
When I access /api/my/financial_aid_summary I should get a response corresponding to /public/dummy/json/finaid_summary.json
