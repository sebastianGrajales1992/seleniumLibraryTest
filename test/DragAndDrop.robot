*** Settings ***
Resource    ../steps/DragDropSteps.robot


*** Test Cases ***
Scenario: Validar que se realice correctamnete el drag and drop
    Scenario: validar movimiento de elemento



*** Keywords ***
Scenario: validar movimiento de elemento
    Given como usuario navego al sitio web de drag and drop
    When como usuario arrastro el elemento desde a hasta b