*** Settings ***
Resource    ../steps/ShadowSteps.robot



*** Test Cases ***
Scenario: Testear el primer elemento del carrito de compras
    Scenario: como usuaurio valido que el texto del primer elemento del carrito sea Men's Tech Shell Full-Zip


*** Keywords ***
Scenario: como usuaurio valido que el texto del primer elemento del carrito sea Men's Tech Shell Full-Zip
    Given como usuario navego al sitio web de compra de ropa
    Then como usuario valido que el texto del primer buso sea Men's Tech Shell Full-Zip