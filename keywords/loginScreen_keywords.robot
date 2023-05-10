*** Settings ***
Library     SeleniumLibrary
Resource    ../common/resource_common.robot


*** Keywords ***
Verify if all menu is displayed on the screen
    Element Should Be Visible    ${mnu_ecoSystem}
    Element Should Be Visible    ${mnu_feature}
    Element Should Be Visible    ${mnu_aboutUs}
    Element Should Be Visible    ${mnu_blog}
    Element Should Be Visible    ${mnu_signUp}
    Element Should Be Visible    ${mnu_logIn}

Input username and password
    [Arguments]    ${mail}
    Click on element on the screen    ${txtbox_Email}
    Input text into element    ${txtbox_Email}    ${mail}@ruu.kr
    Click on element on the screen    ${txtbox_Password}
    Input text into element    ${txtbox_password}    zxcvbnm.1

Get OTP from ruu.kr
    [Arguments]    ${mail}
    Open Browser    http://ruu.kr/    chrome    ruu.kr
    ${all_alias}=    Get Browser Aliases
    Wait until element is visibled on the screen    ${txtbox_inputMail}
    Input text into element    ${txtbox_inputMail}    ${mail}
    Sleep    5s
    Click on element on the screen    ${mailList}
    Sleep    10s
    Click on element on the screen    ${getListMail}
    Sleep    10s
    ${otp}=    Get Text    ${otp_ruu}
    Close Browser
    RETURN    ${otp}

Back to page and paste OTP
    [Arguments]    ${otp}
    Switch Browser    adsesy
    Input text into element    ${txtbox_OTP}    ${otp}
