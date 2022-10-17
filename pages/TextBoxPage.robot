*** Settings ***
Resource    BasePage.robot

Library    Collections

*** Variables ***
${locator_fullName}    xpath://input[@id='userName']
${locator_email}    xpath://input[@id='userEmail']
${locator_address}    xpath://textarea[@id='currentAddress']
${locator_sunmit}    xpath:/html/body/div[2]/div/div/div[2]/div[2]/div[2]/form/div[5]/div/button
${locator_anuncio}    id:adplus-anchor


*** Keywords ***
navegar a la pagina web
    navegar    https://demoqa.com/text-box
escribir full name
    [Arguments]    ${value}
    escribir en un elemento    ${locator_fullName}    ${value}

escribir mail
    [Arguments]    ${value}
    escribir en un elemento    ${locator_email}    ${value}

escribir direccion
    [Arguments]    ${value}
    escribir en un elemento    ${locator_address}    ${value}

dar click en el boton submit
    ${existe_anuncio} =    retornar existencia de elemento    ${locator_anuncio}
    IF    ${existe_anuncio} == True
        cerrar anuncion google
    END
    dar click a elemento    ${locator_sunmit}

convertir a lista de texto
    ${elementos} =    obtener lista WebElement    mb-1
    ${elementos_texto}    Create List
    FOR    ${element}    IN    @{elementos}
        ${elemento_texto} =    Get Text     ${element}
        Append To List    ${elementos_texto}    ${elemento_texto}
    END
    [Return]    ${elemento_texto}

cerrar anuncion google
    Execute Javascript    var googleId = document.getElementById('adplus-anchor');googleId.style.display = 'none';

