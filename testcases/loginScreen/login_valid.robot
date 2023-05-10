*** Settings ***
Library         SeleniumLibrary
Resource        ../../common/resource_common.robot

Test Setup      Open browser Adsesy
# Task Teardown    Close the browser


*** Variables ***
${mail}     otp.kienn26


*** Test Cases ***
TC1: Verify element on the login screen
    Verify if all menu is displayed on the screen
    Element Should Be Visible    ${icon_Search}
    Verify element is displayed on the screen    ${txtbox_Email}
    Verify element is displayed on the screen    ${txtbox_Password}
    Verify element is displayed on the screen    ${href_forgetPassword}
    Verify element is displayed on the screen    ${href_signUp}
    Verify element is displayed on the screen    ${btn_logIn}

TC2: Both null
    [Tags]    null
    Click on element on the screen    ${txtbox_Email}
    Input text into element    ${txtbox_Email}    ${EMPTY}
    Sleep    5s
    Click on element on the screen    ${txtbox_Password}
    Input text into element    ${txtbox_Password}    ${EMPTY}
    Click on element on the screen    ${btn_logIn}
    Sleep    3s
    Page Should Contain    Vui lòng nhập email
    Page Should Contain    Vui lòng nhập password

TC3: Valid login
    Input username and password    ${mail}
    Click on element on the screen    ${btn_logIn}
    Verify element is displayed on the screen    ${txtbox_OTP}
    ${otp}=    Get OTP from ruu.kr    ${mail}
    Back to page and paste OTP    ${otp}
    Click on element on the screen    ${btn_Send}

