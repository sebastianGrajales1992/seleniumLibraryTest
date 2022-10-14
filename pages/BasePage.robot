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