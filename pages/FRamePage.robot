*** Settings ***
Resource    BasePage.robot

*** Variables ***
${locator_texto_frame} =    xpath://*[@id="tinymce"]/p
${locator_iframe} =    id:mce_0_ifr
${locator_text_principal}      xpath://*[@id="content"]/div/h3

*** Keywords ***
navegar al sitio web
    navegar    https://the-internet.herokuapp.com/iframe

validar texto del frame
    cambiar a elemento iframe    ${locator_iframe}
    ${texto_elemento} =    obtener texto elemento    ${locator_texto_frame}
    [Return]    ${texto_elemento}

validar texto principal
    volver a html principal
    ${texto_elemento} =    obtener texto elemento    ${locator_text_principal}
    [Return]    ${texto_elemento}