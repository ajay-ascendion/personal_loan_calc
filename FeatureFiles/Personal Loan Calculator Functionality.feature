Feature: Personal Loan Calculator Functionality
  As a prospective borrower,
  I want to use the Personal Loan Calculator,
  So that I can estimate my loan payments and make informed financial decisions.

  Scenario: Calculator page loads successfully
    Given the user has an active internet connection
    When the user navigates to the Personal Loan Calculator page
    Then the calculator page should load without errors
    And all UI elements should be visible

  Scenario: Presence of required input fields
    Given the calculator page is loaded
    When the user views the calculator form
    Then the Loan Amount, Interest Rate, Loan Term, and other relevant input fields should be present
    And all input fields should be labeled correctly

  Scenario: Calculation with valid inputs
    Given the calculator page is loaded
    When the user enters a valid Loan Amount, Interest Rate, and Loan Term
    And clicks on the 'Calculate' button
    Then the monthly payment and total payment should be calculated and displayed correctly

  Scenario: Error handling for empty input fields
    Given the calculator page is loaded
    When the user leaves all input fields blank
    And clicks on the 'Calculate' button
    Then appropriate error messages should be displayed for required fields

  Scenario: Error handling for invalid input values
    Given the calculator page is loaded
    When the user enters invalid values such as letters, negative numbers, or zero in the input fields
    And clicks on the 'Calculate' button
    Then error messages should be displayed for each invalid input

  Scenario: Input field value limits
    Given the calculator page is loaded
    When the user enters extremely large or small values in the input fields
    And clicks on the 'Calculate' button
    Then error or warning messages should be displayed for out-of-range values

  Scenario: Reset or clear functionality
    Given the calculator page is loaded
    And the user has entered valid values in all input fields
    When the user clicks on the 'Reset' or 'Clear' button
    Then all fields should be cleared
    And the results should be reset

  Scenario: Calculation with decimal values
    Given the calculator page is loaded
    When the user enters decimal values in the input fields
    And clicks on the 'Calculate' button
    Then the results should be calculated correctly with decimal inputs

  Scenario: Calculation with maximum allowed values
    Given the calculator page is loaded
    When the user enters the maximum allowed values in all input fields
    And clicks on the 'Calculate' button
    Then the calculation should complete successfully or appropriate warnings should be displayed

  Scenario: Calculation with minimum allowed values
    Given the calculator page is loaded
    When the user enters the minimum allowed values in all input fields
    And clicks on the 'Calculate' button
    Then the calculation should complete successfully or appropriate warnings should be displayed

  Scenario: Result formatting
    Given the calculator page is loaded
    When the user enters valid values and performs a calculation
    Then the results should be displayed in the correct format (e.g., $1,000.00)

  Scenario: Help or tooltip functionality for input fields
    Given the calculator page is loaded
    When the user hovers over or focuses on an input field
    Then help text or tooltips should be displayed providing guidance for each field

  Scenario: Print or export calculation results
    Given the calculator page is loaded
    And the user has performed a calculation
    When the user clicks on the 'Print' or 'Export' button
    Then the results should be printed or exported correctly
