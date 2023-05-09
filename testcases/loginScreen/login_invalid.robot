*** Settings ***
Library             SeleniumLibrary
Library             DataDriver    ../../data/Adsesy.xlsx    sheet_name=InvalidAccount
Resource            ../../common/resource_common.robot

Test Setup          Open browser Adsesy
Task Teardown       Close the browser
Test Template       Input invalid username and password and try to login


*** Test Cases ***
Login with invalid data    ${username}    ${password}    ${error_msg}


*** Keywords ***
Input invalid username and password and try to login
    [Arguments]    ${username}    ${password}    ${error_msg}
    Click on element on the screen    ${txtbox_Email}
    Input text into element    ${txtbox_Email}    ${username}
    Sleep    5s
    Click on element on the screen    ${txtbox_Password}
    Input text into element    ${txtbox_Password}    ${password}
    Sleep    5s
    Click on element on the screen    ${btn_Login}
    Sleep    5s
    Page Should Contain    ${error_msg}
