Feature: Retrieve test data for exam results

As a CalCentral frontend developer
So that I can test the frontend exam results page independently
I want to receive corresponding test data from an independent application



Scenario: Access /api/academics/exam_results

Given the pathmap from /api/academics/exam_results to /public/dummy/json/exam_results.json exists
When I access /api/academics/exam_results I should get a response corresponding to /public/dummy/json/exam_results.json
