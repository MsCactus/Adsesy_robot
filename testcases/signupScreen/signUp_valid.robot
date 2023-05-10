*** Settings ***
Library             SeleniumLibrary
Resource            ../../common/resource_common.robot
Library             ../../common/custom_libs.py

Test Setup          Open browser Adsesy
Task Teardown       Close the browser


*** Variables ***
${unique_email}     otp.kiennn


*** Test Cases ***
TC1: Register successful and login
    Go to sign up page and input information    ${unique_email}@ruu.kr
    Click on element on the screen    ${btn_signUp}
    Wait Until Element Is Visible    ${txtbox_OTP}
    ${otp}=    Get OTP from ruu.kr    ${unique_email}
    Back to page and paste OTP    ${otp}
    Click on element on the screen    ${btn_Send}
    Sleep    10s
