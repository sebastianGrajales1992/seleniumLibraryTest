*** Settings ***
Resource    ../pages/TablaPage.robot


*** Keywords ***
navegar tabla estatica
    navegar al sitio web

como usuario valido que el valor de la ${fila} ${column} es igual a ${value}
    ${result} =    obtener texto tabla estatica    ${fila}    ${column}
    Should Be Equal    ${result}    ${value}

cerrar instancia de los navegadores
    cerrar navegadores

como usuario modifico el valor de la ${row} ${column} es igual a ${value}
    modificar texto en la celda    ${row}    ${column}    ${value}