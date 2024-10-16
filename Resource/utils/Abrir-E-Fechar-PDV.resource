*** Settings ***
Resource    ../../base.resource

*** Keywords ***
Abrir PDV
    Launch Application    C:\\Program Files (x86)\\Softcom Tecnologia\\Softshop Caixa\\Softshop.exe

Fechar PDV
    Close Application By Name    Softshop.exe
    