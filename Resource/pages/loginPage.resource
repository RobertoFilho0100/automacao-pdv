*** Settings ***
Resource    ../../base.resource

*** Variables ***
${PDV_SENHA_VALIDA}    7711
${PDV_SENHA_INVALIDA}    7712

*** Keywords ***
Informar senha valida
    Wait Until Element Exist    ${login.senha}
    Click    ${login.senha}
    Set Text To Textbox    ${login.senha}    ${PDV_SENHA_VALIDA}

Informar senha invalida
    Wait Until Element Exist    ${login.senha}
    Click    ${login.senha}
    Set Text To Textbox    ${login.senha}    ${PDV_SENHA_INVALIDA}

Clicar no botao Login
    Click    ${login.btnLogin}

Validar mensagem usuario ou senha invalidos
    Wait Until Element Exist    ${login.windowCredenciaisInvalidas}
    ${error_msg}=   Get Text From Textbox    ${login.msgCredenciaisInvalidas}
    RETURN    ${error_msg}

Fechar mensagem usuario ou senha invalidos
    Click    ${login.botaoFecharWindowCredenciaisInvalidas}
    