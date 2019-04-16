Feature: Retrieve test data for my advising page

As a CalCentral frontend developer
So that I can test the frontend my advising page independently
I want to receive corresponding test data from an independent application



Scenario: Access /api/advising/my_advising

Given the pathmap from /api/advising/my_advising to /public/dummy/json/my_advising.json exists
When I access /api/advising/my_advising I should get a response corresponding to /public/dummy/json/my_advising.json
