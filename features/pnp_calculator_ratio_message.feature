Feature: Retrieve test data for ratio message of pnp calculator page

As a CalCentral frontend developer
So that I can test the frontend pnp calculator ratio message page independently
I want to receive corresponding test data from an independent application



Scenario: Access /api/academics/pnp_calculator/ratio_message

Given the pathmap from /api/academics/pnp_calculator/ratio_message to /public/dummy/json/pnp_ratio_message.json exists
When I access /api/academics/pnp_calculator/ratio_message I should get a response corresponding to /public/dummy/json/pnp_ratio_message.json
