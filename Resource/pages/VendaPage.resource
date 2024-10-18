*** Settings ***
Resource    ../../base.resource

*** Keywords ***

Esperar abertura da tela de venda
    Wait Until Element Exist    ${venda.logoTelaVendas}

Informar produto na venda
    [Arguments]    ${produto}
    Wait Until Element Exist    ${venda.logoTelaVendas}
    Click    ${venda.inputCodigo}
    Log    ${produto}
    Set Text To Textbox    ${venda.inputCodigo}    ${produto}
    PyAutoGuiLibrary.Press Key    ENTER
    
Fechar venda
    PyAutoGuiLibrary.Press Key    F3
