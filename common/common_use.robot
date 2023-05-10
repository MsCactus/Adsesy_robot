*** Settings ***
Library     SeleniumLibrary
Resource    ../common/resource_common.robot


*** Keywords ***
Open browser Adsesy
    Open Browser    https://test.adsesy.com/login/    chrome    adsesy
    Wait until element is visibled on the screen    ${btn_logIn}
    Maximize Browser Window

Close the browser
    Run Keyword If Test Failed    Capture Page Screenshot
    Close Browser
