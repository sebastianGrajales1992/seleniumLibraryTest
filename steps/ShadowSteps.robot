*** Settings ***
Resource    ../pages/ShadowPage.robot


*** Keywords ***
como usuario navego al sitio web de compra de ropa
    abrir sitio Web

como usuario valido que el texto del primer buso sea Men's Tech Shell Full-Zip
    ${texto_primer_buso}    obtener texto de primer elemento carrito compra
    Should Be Equal    ${texto_primer_buso}    Men's Tech Shell Full-Zip