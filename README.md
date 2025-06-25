# Restful-booker Automation

This project contains automated UI tests for the booker portal using [Robot Framework](https://robotframework.org/) and [SeleniumLibrary](https://robotframework.org/SeleniumLibrary/).

## Project Structure

```
results/
    log.html
    output.xml
    report.html
    selenium-screenshot-*.png
Tests/
    login.robot
    Booker_uat.robot
README.md
```

- **Tests/login.robot**: Main Robot Framework test suite for login and profile update scenarios.
- **Tests/Booker_uat.robot**: Test suite for booking scenarios, including negative and positive booking flows.
- **results/**: Folder containing Robot Framework test execution logs, reports, and screenshots.
- **selenium-screenshot-*.png**: Screenshots captured during test execution.

## Prerequisites

- [Python 3.x](https://www.python.org/)
- [pip](https://pip.pypa.io/en/stable/)
- [Google Chrome](https://www.google.com/chrome/) (or another supported browser)
- [ChromeDriver](https://chromedriver.chromium.org/) (matching your Chrome version)

## Installation

1. Install Robot Framework and SeleniumLibrary:
    ```sh
    pip install robotframework seleniumlibrary
    ```

2. Ensure ChromeDriver is installed and available in your system PATH.

## Running the Tests

From the project root directory, run all tests and save results to the `results` folder:

```sh
robot --output results/output.xml --log results/log.html --report results/report.html Tests/
```

To run only the booking tests:

```sh
robot --output results/output.xml --log results/log.html --report results/report.html Tests/Booker_uat.robot
```

To run an individual test case (example):

```sh
robot --output results/output.xml --log results/log.html --report results/report.html --test "Create a booking where the email is missing" Tests/Booker_uat.robot
```


## Viewing Results

- **results/log.html**: Detailed execution log
- **results/report.html**: Summary report
- **results/output.xml**: Raw output (for CI or further processing)
- **results/selenium-screenshot-*.png**: Screenshots from test steps

Open `results/log.html` or `results/report.html` in your browser to review results:

```sh
open results/report.html
```

## Customization

- Update credentials and URLs in [`Tests/login.robot`](Tests/login.robot) and [`Tests/Booker_uat.robot`](Tests/Booker_uat.robot) as needed for your environment.
- Add more test cases by extending the Robot Framework suites.

## References

- [Robot Framework User Guide](https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html)
- [SeleniumLibrary Documentation](https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html)
