# KLX-Aubay
Automation Test Project for KLX job application

Automated Testing with Robot Framework and SeleniumLibrary
This repository contains automated tests for Automation Exercise using Robot Framework and SeleniumLibrary. These tests validate the functionality of E-commerce purchases.
Prerequisites

●	Python 3.x installed (Download Python)

●	Robot Framework installed (pip install robotframework)

●	SeleniumLibrary installed (pip install robotframework-seleniumlibrary)
	
Running the Tests

1. Setup WebDriver
Download the appropriate WebDriver for your browser (Chrome/Firefox) and ensure it's in your system PATH or place it in the drivers directory of this project.

●	ChromeDriver

●	GeckoDriver (for Firefox)

2. Execute Tests

Run the tests using the following command:
bash
Copy code
robot path/to/test_suite.robot

Replace path/to/test_suite.robot with the path to the specific test suite you want to run.

For example:
bash
Copy code
robot tests/login_tests.robot

Test Structure

●	/tests: Contains individual test suites.

●	/resources: Contains reusable keywords and common resources.

●	/results: Directory where test results/logs will be generated.

Adding/Editing Tests
	Navigate to the /tests directory.
	Create a new .robot file for a new test suite or edit an existing one.
	Use Robot Framework syntax to write test cases using SeleniumLibrary keywords.

Reporting
After running the tests, HTML reports will be generated in the /results directory. Open the .html file in a browser to view detailed test reports.
