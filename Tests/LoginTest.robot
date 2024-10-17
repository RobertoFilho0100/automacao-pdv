*** Settings ***
Resource    ../base.resource
Test Setup    Abrir PDV
Test Teardown    Fechar PDV

*** Test Cases ***
Login no PDV com credenciais validas
    [Tags]    sucesso    login    credenciais_validas
    Informar senha valida
    Clicar no botao Login
    Sleep    10

Login no PDV com credenciais invalidas
    [Tags]    erro    login    credenciais_invalidas
    Informar senha invalida
    Clicar no botao Login
    ${error_msg}    Validar mensagem usuario ou senha invalidos
    Should Be Equal    ${error_msg}    Usuário ou senha inválido
    Fechar mensagem usuario ou senha invalidos
    