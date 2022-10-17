*** Settings ***
Resource    ../pages/TextBoxPage.robot


*** Keywords ***
navegar a la vista text box pages
    navegar a la pagina web

escribir en el campo de texto full name
    [Arguments]    ${full_name}
    escribir full name    ${full_name}

escribir en el campo de texto email
    [Arguments]    ${email}
    escribir mail    ${email}

escribir en el campo de texto direccion
    [Arguments]    ${address}
    escribir direccion    ${address}

dar click en el boton de submit
    dar click en el boton submit

validar texto del formulario
    [Arguments]    ${nombre}
    ${elementos_texto} =    convertir a lista de texto
    Should Contain    ${elementos_texto}    ${nombre}