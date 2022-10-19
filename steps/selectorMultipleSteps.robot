*** Settings ***
Resource    ../pages/selectorMultiplePage.robot


*** Keywords ***
Como usuario navego al sitio web de la multiple seleccionar
    navegar al sitio web

como usuario selecciono los indices 1,2
    seleccionar opciones por sus indices    1
    seleccionar opciones por sus indices    2

como usuario deselecciono el indice 2
    deseleccionar opciones por sus indices    2