*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${timeout}          30s
${time_retry}       4s


*** Keywords ***
Wait until element is visibled on the screen
    [Arguments]    ${xpath}
    Wait Until Keyword Succeeds
    ...    ${timeout}
    ...    ${time_retry}
    ...    Wait Until Element Is Visible
    ...    ${xpath}
    ...    ${timeout}
    ...    error= Cannot find ${xpath} element

Click on element on the screen
    [Arguments]    ${xpath}
    Wait until element is visibled on the screen    ${xpath}
    Click Element    ${xpath}

Input text into element
    [Arguments]    ${xpath}    ${text}
    Wait until element is visibled on the screen    ${xpath}
    Input Text    ${xpath}    ${text}

Verify text is displayed on the screen
    [Arguments]    ${text}
    Sleep    5s
    Wait Until Page Contains    ${text}
    Page Should Contain    ${text}

Verify element is displayed on the screen
    [Arguments]    ${xpath}
    Wait until element is visibled on the screen    ${xpath}
    Element Should Be Visible    ${xpath}
    Element Should Be Enabled    ${xpath}
    Page Should Contain Element    ${xpath}
