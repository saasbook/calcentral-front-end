Feature: Retrieve test data for my classes page

As a CalCentral frontend developer
So that I can test the frontend my classes page independently
I want to receive corresponding test data from an independent application



Scenario: Access /api/my/classes

Given the pathmap from /api/my/classes to /public/dummy/json/classes.json exists
When I access /api/my/classes I should get a response corresponding to /public/dummy/json/classes.json
