*** Settings ***
Resource    ../base.resource
Test Setup    Abrir PDV
Test Teardown    Fechar PDV

*** Variables ***
${NUM_MAXIMO_MESAS}    10 

# *** Test Cases ***
# Abrir mesa e realizar lancamento
#     [Tags]    kds
#     Realizar login no PDV
#     Abrir painel de mesas
#     FOR    ${indice}    IN RANGE    10    ${NUM_MAXIMO_MESAS}
#         Log    ${indice}
#         ${seletor_dinamico}=    Set Variable  //Pane[@AutomationId="ControleMesa${indice}"]  
#         Click    ${seletor_dinamico}
#         Informar produto    11
#         Sleep    10
#     END
