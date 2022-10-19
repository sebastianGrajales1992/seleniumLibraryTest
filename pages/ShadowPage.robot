*** Settings ***
Resource    BasePage.robot


*** Variables ***
${selector_path_primer_buso}=    dom:document.querySelector("body>shop-app").
    ...    shadowRoot.querySelector("iron-pages>shop-list").
    ...    shadowRoot.querySelector("ul>li:nth-child(1)").querySelector("a").
    ...    querySelector("shop-list-item").shadowRoot.querySelector(".title")

*** Keywords ***
abrir sitio Web
    navegar    https://shop.polymer-project.org/list/mens_outerwear

obtener texto de primer elemento carrito compra
    ${texto_elemento} =    obtener texto elemento shadow    ${selector_path_primer_buso}
    [Return]    ${texto_elemento}
