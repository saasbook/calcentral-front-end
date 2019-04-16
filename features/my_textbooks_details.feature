Feature: Retrieve test data for my textbooks details page

As a CalCentral frontend developer
So that I can test the frontend my textbooks details page independently
I want to receive corresponding test data from an independent application



Scenario: Access /api/my/textbooks_details

Given the pathmap from /api/my/textbooks_details to /public/dummy/json/textbooks_details.json exists
When I access /api/my/textbooks_details I should get a response corresponding to /public/dummy/json/textbooks_details.json
