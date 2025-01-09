*** Settings ***
Library    SeleniumLibrary    timeout=5000    implicit_wait=9000

*** Variables ***
${Browser}    chrome
${APP_URL}    https://www.google.com
${Search_Text}    find resturants near me

*** Test Cases ***
search Google for text
    open browser    url=${APP_URL}    browser=${Browser}
    Click Button    locator=id:W0wltc
    Input Text    locator=id:APjFqb    text=${Search_Text}
    Click Button    locator=name:btnK
    Capture Page Screenshot
