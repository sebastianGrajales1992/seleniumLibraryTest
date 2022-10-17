*** Settings ***
Resource    ../pages/selectorValuePage.robot

*** Variables ***
${locator_selector}    xpath://*[@id="dropdown"]

*** Keywords ***
como usuario navego al sitio web
    navegar    https://the-internet.herokuapp.com/dropdown

como usuario selecciono el valor de una opccion
    seleccionar un valor del selector por su valor    1

como usuario selecciono la etiqueta de una opccion
    seleccionar un valor del selector por su etiqueta    Option 2