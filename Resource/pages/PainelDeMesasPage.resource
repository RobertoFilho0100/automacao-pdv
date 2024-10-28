*** Settings ***
Resource    ../../base.resource
Library    String

*** Variables ***
${NUM_MAXIMO_MESAS}    10 

*** Keywords ***
Informar cliente ne mesa
    Click    ${painelMesas.aberturaNomeCliente}
    Set Text To Textbox    ${painelMesas.aberturaNomeCliente}    Miranda
    Click    ${painelMesas.btnSalvar}

Informar produto
    [Arguments]    ${codigo_produto}
    Click    ${painelMesas.campoCodigoProduto}
    Set Text To Textbox    ${painelMesas.campoCodigoProduto}    ${codigo_produto}
    PyAutoGuiLibrary.Press Key    ENTER
    PyAutoGuiLibrary.Press Key    ENTER
    PyAutoGuiLibrary.Press Key    ENTER
    Sleep    1
    PyAutoGuiLibrary.Press Key    ESC
