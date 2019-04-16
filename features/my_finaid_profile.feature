Feature: Retrieve test data for my financial aid profile page

As a CalCentral frontend developer
So that I can test the frontend my financial aid profile page independently
I want to receive corresponding test data from an independent application



Scenario: Access /api/my/finaid_profile/2018

Given the pathmap from /api/my/finaid_profile/2018 to /public/dummy/json/finaid.json exists
When I access /api/my/finaid_profile/2018 I should get a response corresponding to /public/dummy/json/finaid.json
