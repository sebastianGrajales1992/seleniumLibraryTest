*** Settings ***
Resource    ../steps/FrameSteps.robot


*** Test Cases ***
Scenario: probar trexto del frame
    Scenario: como usuario valido el texto del frame


*** Keywords ***
Scenario: como usuario valido el texto del frame
    Given como usuario navego al sitio web que tiene frame
    Then como usuario valido el texto que contiene el frame
    And como usuario valido el texto principal