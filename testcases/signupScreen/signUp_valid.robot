*** Settings ***
Library             SeleniumLibrary
Resource            ../../common/resource_common.robot

Test Setup          Open browser Adsesy
Task Teardown       Close the browser


*** Variables ***
${mail}     otp.kienn27


*** Test Cases ***
TC1: Register successful and login
    Click on element on the screen    ${href_signUp}
    ${adsesy_alias}=    Get Browser Aliases
    Wait until element is visibled on the screen    ${btn_signUp}
    Input text into element    ${txtbox_newEmail}    ${mail}@ruu.kr
    Input text into element    ${txtbox_newPassword}    zxcvbnm.1
    Input text into element    ${txtbox_userName}    Nhung123
    Sleep    3s
    Click on element on the screen    ${btn_signUp}
    Wait Until Element Is Visible    ${txtbox_OTP}
    ${otp}=    Get OTP from ruu.kr    ${mail}
    Back to page and paste OTP    ${otp}
    Click on element on the screen    ${btn_Send}
    Sleep    10s
