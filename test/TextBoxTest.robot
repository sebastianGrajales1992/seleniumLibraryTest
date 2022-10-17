*** Settings ***
Resource    ../steps/TextBoxSteps.robot


*** Test Cases ***
Scenario: como usuario valido el proceso de llenar el formulario
    Scenario: validar formulario TextBoxPage



*** Keywords ***
Scenario: validar formulario TextBoxPage
    Given navegar a la vista text box pages
    When escribir en el campo de texto full name    Sebastian
    And escribir en el campo de texto email    sebas@mail.com
    And escribir en el campo de texto direccion    Call 34 C
    And dar click en el boton submit
    Then validar texto del formulario    Name:Sebastian