*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${browser}            chrome
${url}                http://automationpractice.com/index.php

*** Test Cases ***
Processo Seletivo
    Open Browser        ${url}        ${browser}
    Input Text          id=search_query_top    Blouse
    Click Element       name=submit_search
    Click Element       //*[@id="center_column"]/ul/li/div/div[1]/div/a[1]/img
    Click Button        css=button.exclusive
    Capture Page Screenshot
    Close Browser