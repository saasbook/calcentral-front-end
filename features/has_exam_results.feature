Feature: Retrieve test data for has exam results page

As a CalCentral frontend developer
So that I can test the frontend has exam results page independently
I want to receive corresponding test data from an independent application



Scenario: Access /api/academics/has_exam_results

Given the pathmap from /api/academics/has_exam_results to /public/dummy/json/has_exam_results.json exists
When I access /api/academics/has_exam_results I should get a response corresponding to /public/dummy/json/has_exam_results.json
