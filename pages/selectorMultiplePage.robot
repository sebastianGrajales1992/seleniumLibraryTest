*** Settings ***
Resource    BasePage.robot


*** Variables ***
${locator_multiple_selector} =    xpath://*[@id="select-wrapper-351292"]/select
*** Keywords ***
navegar al sitio web
    navegar    https://mdbootstrap.com/docs/standard/extended/multiselect/

seleccionar opciones por sus indices
    [Arguments]    ${index}
    seleccionar un elemento por su indice    ${locator_multiple_selector}    ${index}

deseleccionar opciones por sus indices
    [Arguments]    ${index}
    deseleccionar un elemento por su indice    ${locator_multiple_selector}    ${index}