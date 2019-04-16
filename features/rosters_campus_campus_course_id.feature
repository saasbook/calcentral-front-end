Feature: Retrieve test data for ratio message of campus rosters page

As a CalCentral frontend developer
So that I can test the frontend campus rosters page independently
I want to receive corresponding test data from an independent application



Scenario: Access /api/academics/rosters/campus/1

Given the pathmap from /api/academics/rosters/campus/1 to /public/dummy/json/campus_rosters.json exists
When I access /api/academics/rosters/campus/1 I should get a response corresponding to /public/dummy/json/campus_rosters.json
