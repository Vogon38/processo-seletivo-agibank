*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/Resources.robot

*** Variables ***
${url}      https://blogdoagi.com.br
${browser}  chrome
${chrome_driver_path}   ../Driver/chromedriver.exe


*** Test Cases ***
Pesquisar Termo Existente
    Open my browser  ${url}  ${browser}  ${chrome_driver_path}
    Click search icon
    Input search    consumidor
    Click submit
    Wait title load
    Wait Until Page Contains  Semana do Consumidor
    Close Browser

Pesquisar Termo Inexistente
    Open my browser  ${url}  ${browser}  ${chrome_driver_path}
    Click search icon
    Input search    termo que nao existe
    Click submit
    Wait title load
    Wait Until Page Contains  Nenhum resultado
    Close Browser

Pesquisa Vazia
    Open my browser  ${url}  ${browser}  ${chrome_driver_path}
    Click search icon
    Click submit
    Wait title load
    Wait Until Page Contains  Blog do Agi
    Close Browser

Pesquisar Por Categoria
    Open my browser  ${url}  ${browser}  ${chrome_driver_path}
    Click search icon
    Input search    produtos
    Click submit
    Wait title load
    Wait Until Page Contains  App do Agi: conheça os produtos e serviços
    Close Browser

Pesquisar Por Múltiplos Termos
    Open my browser  ${url}  ${browser}  ${chrome_driver_path}
    Click search icon
    Input search    produtos serviços
    Click submit
    Wait title load
    Page Should Not Contain Textfield    Nenhum resultado
    Close Browser