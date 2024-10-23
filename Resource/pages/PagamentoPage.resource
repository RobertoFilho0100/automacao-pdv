*** Settings ***
Resource    ../../base.resource

*** Keywords ***
Informar forma de pagamento Dinheiro
    Wait Until Element Exist    ${pagamento.logoTelaPagamento}
    Click    ${pagamento.formaPagamentoDinheiro}
    PyAutoGuiLibrary.Press Key    -
    PyAutoGuiLibrary.Press Key    F9

Lancar pagamento na venda
    PyAutoGuiLibrary.Press Key    -

Finalizar venda 
    PyAutoGuiLibrary.Press Key    F9
    Sleep    5
    PyAutoGuiLibrary.Press Key    ESC
