*** Settings ***
Library    FlaUILibrary

*** Keywords ***
BeforeTestSetup
    Launch Application    C:\\Program Files (x86)\\Softcom Tecnologia\\Softshop Caixa\\Softshop.exe


AfterTestSetup
    Close Application By Name    Softshop.exe
