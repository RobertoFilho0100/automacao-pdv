*** Settings ***
Resource    ../base.resource
Test Setup    Abrir PDV
Test Teardown    Fechar PDV

*** Test Cases ***
Login no PDV
    [Tags]    Demo
    Informar senha valida
    Clicar no botao Login
    Sleep    10