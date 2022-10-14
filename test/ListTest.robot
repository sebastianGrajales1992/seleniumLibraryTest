*** Settings ***
Resource    ../steps/ListaSteps.robot


*** Test Cases ***
Scenario outline: validar que al escribir un estado se encuentra la ciudad correspondiente
    [Template]    Scenario outline: validar que la ciudad corresponda al estado
    #examples:
    #estado    texto_ciudad
    new york    New Rochelle, New York    



*** Keywords ***
Scenario outline: validar que la ciudad corresponda al estado
    [Arguments]    ${estado}    ${texto_ciudad}
    Given navegar a la pagina web de listas de ciudades
    When escribir un ${estado}
    Then validar que la ${texto_ciudad} se encuentra en el listado