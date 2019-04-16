Feature: Retrieve test data for my groups page

As a CalCentral frontend developer
So that I can test the frontend my groups page independently
I want to receive corresponding test data from an independent application



Scenario: Access /api/my/groups

Given the pathmap from /api/my/groups to /public/dummy/json/groups.json exists
When I access /api/my/groups I should get a response corresponding to /public/dummy/json/groups.json
