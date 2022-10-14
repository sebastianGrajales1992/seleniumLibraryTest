*** Settings ***
Resource    ../pages/ListaPage.robot


*** Keywords ***
navegar a la pagina web de listas de ciudades
    navegar a la pagina web

escribir un ${estado}
    escribir estado en el campo texto    ${estado}


validar que la ${ciudad} se encuentra en el listado
    ${lista_texto} =    obtener lista en formato texto
    Should Contain    ${lista_texto}    ${ciudad}