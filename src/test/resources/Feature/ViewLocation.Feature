Feature: View Locations Page
Scenario: Verify the View Locations page loads successfully
 Given I am on the View Locations page
 Then I should see the Pudo Locations table data

  Scenario: Verify table headers in the View Locations page
    Given I am on the View Locations page
    Then the table should have the following headers:
      | Actions           |
      | PudoCode          |
      | PudoType          |
      | Name              |
      | Address1          |
      | CityTown          |
      | PostCode          |
      | County            |
      | Country           |
      | Latitude          |
      | Longitude         |
      | TimeZone          |
      | Location Status   |
      | Hardware Type     |
      | what3Words        |
      | LocationLink      |
      | IsActive          |
      | AlwaysOpen        |
      | OversizedAllowed  |
      | Open24X7          |

  Scenario: Verify at least one location entry is displayed
    Given I am on the View Locations page
    When I check the locations table
    Then I should see at least one location entry

  Scenario: Verify pagination works correctly
    Given I am on the View Locations page
    When I click on the next page button
    Then the locations table should update with new results

  Scenario: Verify sorting by PudoCode
    Given I am on the View Locations page
    When I click on the PudoCode column header
    Then the locations should be sorted in ascending order

  Scenario: Verify location details for a specific entry
    Given I am on the View Locations page
    When I search for "OP00164ed" in the search field
    And I press the search button
    Then the row with PudoCode "OP00164ed" should display correct details:
      | PudoType | LOCKER |
      | Name     | Woodburn Road |
      | Address1 | Centra |
      | CityTown | Carrickfergus |
      | PostCode | BT38 8HQ |
      | County   | Antrim |
      | Country  | Northern Ireland |

  Scenario: Verify "IsActive" status for all displayed locations
    Given I am on the View Locations page
    When I check the "IsActive" column
    Then all displayed locations should have a valid status (Yes/No)

  Scenario: Verify "Open24X7" flag functionality
    Given I am on the View Locations page
    When I filter locations by "Open24X7"
    Then all displayed locations should have Open24X7 set to "Yes"
