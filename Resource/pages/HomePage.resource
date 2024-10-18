*** Settings ***
Resource    ../../base.resource

*** Variables ***


*** Keywords ***

Validar que PDV abriu e carregou os dados
    Wait Until Element Exist    ${homepage.btnNotificacoes}

Iniciar venda clicando no botao
    Click    ${homepage.btnIniciarVenda}

Iniciar venda pela tecla de atalho
    PyAutoGuiLibrary.Press Key    F1