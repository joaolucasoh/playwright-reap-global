
Feature: Sign Up - Validating password requirements
Environment: QA / UAT
User: N/A
Risk: Neutral
Priority: 0
Mode: No regression

Given the user is on SignUp page
And fill all fields with correct data
And needs to check the password field putting '123' as password
Then all password checks must marked as failed, except  'At least 1 number' mark

Feature: Sign Up - Submit a new user creation with valid data
Environment: QA / UAT
User: N/A
Risk: Neutral
Priority: 0
Mode: Regression

Given the user is on Sign Up page
And fill all fields with correct data
When submit the form
Then must be redirected to the "Verify email" page
And after open a received link, you must open a page to finish up the register


should validate email format
should show validation errors for empty required fields
should display sign up form with all required fields