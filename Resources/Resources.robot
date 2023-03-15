*** Settings ***
Library     SeleniumLibrary
Variables   ../PageObject/Locators.py

*** Keywords ***
Open my browser
    [Arguments]     ${siteUrl}      ${browser}      ${driver_path}
    Open Browser    ${siteUrl}      ${browser}      ${driver_path}
    Maximize Browser Window

Click search icon
    Click Element    ${search_icon}

Input search
    [Arguments]     ${item}
    Input Text    ${search_field}    ${item}

Click submit
    Click Button    ${submit}

Wait title load
    Wait Until Element Is Visible  ${page_title}

Close all browser
    Close All Browsers