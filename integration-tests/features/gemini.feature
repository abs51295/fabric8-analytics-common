Feature: Gemini Analytics API

  Scenario: Check the Gemini API /api/v1/register response
    Given Gemini service is running
      And Gemini service git url is https://github.com/jitpack/maven-simple
      And Gemini service git sha is 9466faa13d65044c8430b418327df826f13ca07a
    When I post to Gemini API api/v1/register
    Then I should get 401 status code
    When I acquire the authorization token
    Then I should get the proper authorization token
    When I post to Gemini API api/v1/register with authorization token
    Then I should get 200 status code

  Scenario: Check the Gemini API /api/v1/report response
    Given Gemini service is running
      And Gemini service git url is https://github.com/jitpack/maven-simple
      And Gemini service git sha is 9466faa13d65044c8430b418327df826f13ca07a
    When I get to Gemini API api/v1/report
    Then I should get 401 status code
    When I acquire the authorization token
    Then I should get the proper authorization token
    When I get to Gemini API api/v1/report with authorization token
    Then I should get 200 status code