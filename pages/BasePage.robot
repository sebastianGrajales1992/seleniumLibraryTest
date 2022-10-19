*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
navegar
    [Arguments]    ${url}
    Open Browser    ${url}    Chrome    executable_path=C:/selenium/chromedriver.exe
obtener elemento
    [Arguments]    ${locator}
    Wait Until Element Is Visible    ${locator}    10s
    ${elemento}    Get WebElement    ${locator}
    [Return]    ${elemento}

obtenerTextoTabla
    [Arguments]    ${locatorContenedorTabla}    ${row}    ${column}
    ${elemento} =    obtener elemento    xpath:${locatorContenedorTabla}/table/tbody/tr[${row}]/td[${column}]
    ${celda} =    Get Text    ${elemento}
    Return From Keyword    ${celda}

close all 
    Close All Browsers

modificar texto tabla
    [Arguments]    ${locatorContenedorTabla}    ${row}    ${column}    ${value}
    Execute Javascript    document.querySelector('${locatorContenedorTabla}table>tbody>tr:nth-child(${row})>td:nth-child(${column})').innerHTML='${value}'
    Sleep    4s

escribir en un elemento
    [Arguments]    ${locator}    ${text}
    ${elemento} =    obtener elemento    ${locator}
    Input Text    ${elemento}    ${text}

obtener lista WebElement
    [Arguments]    ${locator}
    ${lista_webElements} =    Get WebElements    ${locator}
    [Return]    ${lista_webElements}

dar click a elemento
    [Arguments]    ${locator}
    ${elemento} =    obtener elemento    ${locator}
    Click Element    ${elemento}

retornar existencia de elemento
    [Arguments]    ${locator}
    ${existencia_elemento}    Run Keyword And Return Status    Wait Until Element Is Visible    ${locator}
    [Return]    ${existencia_elemento}

click mouse
    [Arguments]    ${locator}
    ${elemento} =    obtener elemento    ${locator}
    Mouse Down    ${elemento}
    Click Button    ${elemento}

seleccionar un elemento por su valor
    [Arguments]    ${locator}    ${value}
    Select From List By Value   ${locator}    ${value}

seleccionar un elemento por su etiqueta
    [Arguments]    ${locator}    ${value}
    Select From List By Label   ${locator}    ${value}

seleccionar un elemento por su indice
    [Arguments]    ${locator}    ${value}
    Select From List By Index  ${locator}    ${value}

mover elemento
    [Arguments]    ${locator_inical}    ${locator_destino}
    Drag And Drop    ${locator_inical}    ${locator_destino}

obtener texto elemento
    [Arguments]    ${locator}
    ${elemento} =    obtener elemento    ${locator}
    ${texto_elemento} =    Get Text    ${elemento}
    [Return]    ${texto_elemento}

cambiar a elemento iframe
    [Arguments]    ${locator}
    ${elemento} =    obtener elemento    ${locator}
    Select Frame    ${elemento}

volver a html principal
    Unselect Frame

deseleccionar un elemento por su indice
    [Arguments]    ${locator}    ${value}
    Unselect From List By Index  ${locator}    ${value}

cambiar atributo para mostrar elemento
    [Arguments]    ${id_elemento}
    Log To Console    ${id_elemento}
    Execute Javascript    var elementoid = document.getElementById('selectorMultipleTest');elementoid.style.display = 'true';

obtener elemento shadow
    [Arguments]    ${locator_shadow}
    Wait Until Element Is Visible    ${locator_shadow}    10s
    ${elemento_shadow} =    Get WebElement    ${locator_shadow}
    [Return]    ${elemento_shadow}

obtener texto elemento shadow
    [Arguments]    ${locator_shadow}
    ${elemento} =    obtener elemento shadow    ${locator_shadow}
    ${texto_elemento} =    Get Text    ${elemento}
    [Return]    ${texto_elemento}
