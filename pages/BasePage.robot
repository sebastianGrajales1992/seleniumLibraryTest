*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
navegar
    [Arguments]    ${url}
    Open Browser    ${url}    Chrome    executable_path=C:/selenium/chromedriver.exe
    Maximize Browser Window
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