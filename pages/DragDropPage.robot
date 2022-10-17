*** Settings ***
Resource    BasePage.robot


*** Variables ***
${locator_inicial}    //div[@id='column-a']
${locator_destino}    //div[@id='column-b']

*** Keywords ***
abrir pagina de drag and Drop
    navegar    https://the-internet.herokuapp.com/drag_and_drop


cambiar ubicacion del rectangulo
    mover elemento    ${locator_inicial}    ${locator_destino}