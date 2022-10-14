*** Settings ***
Resource    BasePage.robot

Library    Collections

*** Variables ***
${locatorInputEstado}    xpath://body/form[1]/input[1]
${locator_elementos_ciudades}    class:name

*** Keywords ***
navegar a la pagina web
    navegar    https://andreidbr.github.io/JS30/06AjaxTypeAhead/index.html

escribir estado en el campo texto
    [Arguments]    ${texto}
    Sleep    3s
    escribir en un elemento    ${locatorInputEstado}    ${texto}

obtener lista en formato texto
    ${lista_elementos} =    obtener lista WebElement    ${locator_elementos_ciudades}
    ${lista_texto} =    Create List
    FOR    ${element}    IN    @{lista_elementos}
        ${elemnt_text} =    Get Text    ${element}
        Append To List    ${lista_texto}    ${elemnt_text}
    END
    [Return]   ${lista_texto} 