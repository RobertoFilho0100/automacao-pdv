*** Settings ***
Resource    ../../base.resource

*** Keywords ***
Informar pagamento
    [Arguments]    ${forma_pagamento}
    Wait Until Element Exist    ${pagamento.logoTelaPagamento}
    Click    ${pagamento.formasPagamento.${forma_pagamento}}

Lancar pagamento na venda
    PyAutoGuiLibrary.Press Key    -

Finalizar venda 
    PyAutoGuiLibrary.Press Key    F9
    Sleep    5
    PyAutoGuiLibrary.Press Key    ESC

Pagamento TEF OFF
    PyAutoGuiLibrary.Press Key    ENTER
    PyAutoGuiLibrary.Press Key    ENTER
    

