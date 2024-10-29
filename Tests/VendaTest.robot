*** Settings ***
Resource    ../base.resource
Resource    ../Resource/pages/PagamentoPage.resource
# Test Setup    Abrir PDV
# Test Teardown    Fechar PDV
Suite Setup    Abrir PDV
Suite Teardown    Fechar PDV

*** Variables ***
${CODIGO_PRODUTO}    12
${QUANTIDADE_FRACIONADA}    0.5

*** Test Cases ***
Realizar venda pagamento em dinheiro
    [Tags]    sucesso    venda
    Realizar login no PDV
    Iniciar venda pela tecla de atalho
    # Informar cliente - confirmar sem informar cliente
    Informar produto na venda    ${CODIGO_PRODUTO}
    Fechar venda
    Informar pagamento    dinheiro
    Lancar pagamento na venda
    Finalizar venda
    Aguardar retornar para a Home do PDV

Realizar venda pagamento em PIX OFF
    [Tags]     sucesso    venda
    # Realizar login no PDV
    Iniciar venda pela tecla de atalho
    Informar produto na venda    ${CODIGO_PRODUTO}
    Fechar venda
    Informar pagamento    pixOff
    Lancar pagamento na venda
    Finalizar venda
    Aguardar retornar para a Home do PDV

Realizar venda pagamento em TEF OFF
    [Tags]    sucesso    venda
    Iniciar venda pela tecla de atalho
    Informar produto na venda    ${CODIGO_PRODUTO}
    Fechar venda
    Informar pagamento    tefOff
    Lancar pagamento na venda
    Pagamento TEF OFF
    Finalizar venda
    Aguardar retornar para a Home do PDV

Realizar venda com quantidade fracionada
    [Tags]    sucesso    venda    quantidade_fracionada
    Iniciar venda pela tecla de atalho
    Informar quantidade especifica    ${QUANTIDADE_FRACIONADA}
    Informar produto na venda    ${CODIGO_PRODUTO}
    Fechar venda
    Informar pagamento    dinheiro
    Lancar pagamento na venda
    Finalizar venda
    Aguardar retornar para a Home do PDV
