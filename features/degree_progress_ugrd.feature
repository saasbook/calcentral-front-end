Feature: Retrieve test data for undergraduate degree progress

As a CalCentral frontend developer
So that I can test the frontend undergraduate progress page independently
I want to receive corresponding test data from an independent application



Scenario: Access /api/academics/degree_progress/ugrd

Given the pathmap from /api/academics/degree_progress/ugrd to /public/dummy/json/degree_progress_ugrd.json exists
When I access /api/academics/degree_progress/ugrd I should get a response corresponding to /public/dummy/json/degree_progress_ugrd.json
