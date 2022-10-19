*** Settings ***
Resource    ../steps/selectorMultipleSteps.robot


*** Test Cases ***
Scenario: validar deseleccionar el elemento con indice 2
    Scenario: como usaurio valido deselccionar un elemento de una lista selector

*** Keywords ***
Scenario: como usaurio valido deselccionar un elemento de una lista selector
    Given Como usuario navego al sitio web de la multiple seleccionar
    When como usuario selecciono los indices 1,2
    And como usuario deselecciono el indice 2