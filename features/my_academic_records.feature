Feature: Retrieve test data for academic records page

As a CalCentral frontend developer
So that I can test the frontend academic records page independently
I want to receive corresponding test data from an independent application



Scenario: Access /api/my/academic_records

Given the pathmap from /api/my/academic_records to /public/dummy/json/my_academic_records.json exists
When I access /api/my/academic_records I should get a response corresponding to /public/dummy/json/my_academic_records.json
