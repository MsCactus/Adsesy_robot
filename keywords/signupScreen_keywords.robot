*** Settings ***
Library     SeleniumLibrary
Resource    ../common/resource_common.robot


*** Keywords ***
Go to sign up page and input information
    [Arguments]    ${newmail}
    Click on element on the screen    ${href_signUp}
    ${adsesy_alias}=    Get Browser Aliases
    Wait until element is visibled on the screen    ${btn_signUp}
    Input text into element    ${txtbox_newEmail}    ${newmail}
    Input text into element    ${txtbox_newPassword}    zxcvbnm.1
    Input text into element    ${txtbox_userName}    Nhung123
    Sleep    3s
