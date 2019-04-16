Feature: Retrieve test data for enrollment verification

As a CalCentral frontend developer
So that I can test the frontend enrollment verification page independently
I want to receive corresponding test data from an independent application



Scenario: Access /api/academics/enrollment_verification

Given the pathmap from /api/academics/enrollment_verification to /public/dummy/json/enrollment_verification.json exists
When I access /api/academics/enrollment_verification I should get a response corresponding to /public/dummy/json/enrollment_verification.json
