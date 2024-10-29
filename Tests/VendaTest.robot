*** Settings ***
Resource    ../base.resource
Resource    ../Resource/pages/PagamentoPage.resource
Test Setup    Abrir PDV
Test Teardown    Fechar PDV

*** Test Cases ***
Realizar venda
    [Tags]    sucesso    venda
    Realizar login no PDV
    Iniciar venda pela tecla de atalho
    # Informar cliente - confirmar sem informar cliente
    Informar produto na venda    12
    Fechar venda
    Informar forma de pagamento Dinheiro
    Lancar pagamento na venda
    Finalizar venda
    Aguardar retornar para a Home do PDV
    