# Payflex UAT Automation

This project contains automated UI tests for the Payflex customer portal using [Robot Framework](https://robotframework.org/) and [SeleniumLibrary](https://robotframework.org/SeleniumLibrary/).

## Project Structure

```
log.html
output.xml
README.md
report.html
selenium-screenshot-*.png
Tests/
    login.robot
```

- **Tests/login.robot**: Main Robot Framework test suite for login and profile update scenarios.
- **log.html, report.html, output.xml**: Robot Framework test execution logs and reports.
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

From the project root directory, run:

```sh
robot login.robot
```

## Test Cases

The suite in [`Tests/login.robot`](Tests/login.robot) covers:

- Loading the Payflex login page
- Logging in with valid credentials
- Verifying dashboard access after login
- Updating profile details

## Viewing Results

- **log.html**: Detailed execution log
- **report.html**: Summary report
- **output.xml**: Raw output (for CI or further processing)
- **selenium-screenshot-*.png**: Screenshots from test steps

Open `log.html` or `report.html` in your browser to review results.

## Customization

- Update credentials and URLs in [`Tests/login.robot`](Tests/login.robot) as needed for your environment.
- Add more test cases by extending the Robot Framework suite.

## References

- [Robot Framework User Guide](https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html)
- [SeleniumLibrary Documentation](https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html)
