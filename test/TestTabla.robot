*** Settings ***
Resource    ../steps/TablaSteps.robot
Test Setup    Given navegar tabla estatica


*** Test Cases ***
Scenario: validar texto tabla
    [Template]    Scenario Outline: validar celda de tabla estatica
    #Examples:
    #row    column    value
    2    2    r: 1, c: 1
    4    4    r: 3, c: 3

Scenario: modificar el texto en la tabla
    [Template]    Scenario Outline: modificar la celda de tabla estatica
    #Examples:
    #row    column    value
    2    2    Test1
    4    4    Test2



*** Keywords ***
Scenario Outline: validar celda de tabla estatica
    [Arguments]    ${row}    ${column}    ${value}
    Then como usuario valido que el valor de la ${row} ${column} es igual a ${value}

Scenario Outline: modificar la celda de tabla estatica
    [Arguments]    ${row}    ${column}    ${value}
    When como usuario modifico el valor de la ${row} ${column} es igual a ${value}
    Sleep    5s