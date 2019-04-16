Feature: Retrieve test data for graduate degree progress

As a CalCentral frontend developer
So that I can test the frontend graduate progress page independently
I want to receive corresponding test data from an independent application



Scenario: Access /api/academics/degree_progress/grad

Given the pathmap from /api/academics/degree_progress/grad to /public/dummy/json/degree_progress_grad.json exists
When I access /api/academics/degree_progress/grad I should get a response corresponding to /public/dummy/json/degree_progress_grad.json