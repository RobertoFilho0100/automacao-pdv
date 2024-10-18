*** Settings ***
Resource    ../../base.resource

*** Keywords ***
Informar cliente - confirmar sem informar cliente
    Wait Until Element Exist    ${informarCliente.btnConfirmar}
    Click    ${informarCliente.btnConfirmar}