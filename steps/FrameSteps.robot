*** Settings ***
Resource    ../pages/FRamePage.robot


*** Keywords ***
como usuario navego al sitio web que tiene frame
    navegar al sitio web

como usuario valido el texto que contiene el frame
    ${texto_frame} =    validar texto del frame
    Should Be Equal    ${texto_frame}    Your content goes here.

como usuario valido el texto principal
    ${texto_principal} =    validar texto principal
    Should Be Equal    ${texto_principal}    An iFrame containing the TinyMCE WYSIWYG Editor