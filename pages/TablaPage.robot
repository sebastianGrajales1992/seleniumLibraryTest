*** Settings ***
Resource    BasePage.robot
Library    String

*** Variables ***
${locatorContenedorTabla}    //*[@id='root']/div
${locatorContenedorTablaSelector}    "#root>div>"


*** Keywords ***
navegar al sitio web
    navegar    https://1v2njkypo4.csb.app/


obtener texto tabla estatica
    [Arguments]    ${row}    ${column}
    ${result}=    obtenerTextoTabla    ${locatorContenedorTabla}    ${row}    ${column}
    Return From Keyword    ${result}


cerrar navegadores
    close all

modificar texto en la celda
    [Arguments]    ${row}    ${column}    ${value}
    ${selectorStr} =    Get Substring   ${locatorContenedorTablaSelector}    1    -1
    modificar texto tabla    ${selectorStr}    ${row}    ${column}    ${value}
