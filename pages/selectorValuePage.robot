*** Settings ***
Resource    BasePage.robot

*** Variables ***
${locator_selector}    xpath://*[@id="dropdown"]

*** Keywords ***
navegar al sitio web
    navegar    https://the-internet.herokuapp.com/dropdown

seleccionar un valor del selector por su valor
    [Arguments]    ${value}
    seleccionar un elemento por su valor    ${locator_selector}    ${value}

seleccionar un valor del selector por su etiqueta
    [Arguments]    ${value}
    seleccionar un elemento por su etiqueta   ${locator_selector}    ${value}  

deseleccionar un valor por su indice
    [Arguments]    ${index}
    deseleccionar un elemento por su indice    ${locator_selector}    ${index}