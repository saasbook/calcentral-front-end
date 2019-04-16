Feature: Retrieve test data for my tasks page

As a CalCentral frontend developer
So that I can test the frontend my tasks page independently
I want to receive corresponding test data from an independent application



Scenario: Access /api/my/tasks

Given the pathmap from /api/my/tasks to /public/dummy/json/tasks.json exists
When I access /api/my/tasks I should get a response corresponding to /public/dummy/json/tasks.json
