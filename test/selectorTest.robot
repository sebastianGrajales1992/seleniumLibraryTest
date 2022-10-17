*** Settings ***
Resource    ../steps/selectorValueSteps.robot


*** Test Cases ***
Scenario: probar seelctor con valor 1
    scenario: seleccinar la opcion con valor 1
Scenario: probar selector con etiqueta de option 2
    scenario: seleccinar la opcion con la etiqueta Option 2


*** Keywords ***

scenario: seleccinar la opcion con valor 1
    Given como usuario navego al sitio web
    When como usuario selecciono el valor de una opccion

scenario: seleccinar la opcion con la etiqueta Option 2
    Given como usuario navego al sitio web
    When como usuario selecciono la etiqueta de una opccion