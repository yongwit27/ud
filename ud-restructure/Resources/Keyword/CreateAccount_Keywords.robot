*** Settings ***
Resource          Redefine_Keywords.robot
Resource          ../Repository/MasterReporitory.robot

*** Keywords ***
wInput Create Account
    [Arguments]    ${Field}    ${Text}    ${TimeOut}=${General_TimeOut}
    [Documentation]    *Input page Create Account*
    ...
    ...    *FormatKeyword*
    ...
    ...    wInput Create Account | ${Field} | ${Text} | ${TimeOut}=${General_TimeOut}
    ...
    ...    *Example*
    ...    | wInput Create Account | fieldFirstname | test |
    ${Field}    ${Index}    Common Split Field And Index    ${Field}
    ${Locator}    Set Variable    ${CreateAccount${Field}}
    ${Xpath}    Run Keyword If    '${Index}' != 'None'    Get Locator From Position    ${Locator}    ${Index}
    ...    ELSE    Set Variable    ${Locator}
    Common Input Web Element    ${Field}    ${Xpath}    ${Text}

wVerify Create Account
    [Arguments]    ${Field}    @{Verify}
    [Documentation]    *Verify page Create Account*
    ...
    ...    *FormatKeyword*
    ...
    ...    wVerify Create Account | ${Field} | @{Verify} | ${TimeOut}=${General_TimeOut}
    ...
    ...    *Example*
    ...    | wVerify Create Account | fieldFirstName | text=FirstnameTest |
    ${Field}    ${Index}    Common Split Field And Index    ${Field}
    ${Locator}    BuiltIn.Set Variable    ${CreateAccount${Field}}
    ${Xpath}    Run Keyword If    '${Index}' != 'None'    Get Locator From Position    ${Locator}    ${Index}
    ...    ELSE    Set Variable    ${Locator}
    Common Verify Field    ${Xpath}    @{Verify}

wVerify Error Message Create Account
    [Arguments]    ${Field}    ${Key}    ${Visible}=True
    [Documentation]    *Verify Error Message page Create Account*
    ...
    ...    *FormatKeyword*
    ...
    ...    wVerify Error Message Create Account \ | ${Field} | ${Key} | ${Visible}=True
    ...
    ...    *Example*
    ...    | wVerify Error Message Create Account | Firstname | \ Format | Visible=True |
    ${Field}    ${Index}    Common Split Field And Index    ${Field}
    ${Xpath}    BuiltIn.Set Variable    ${CreateAccounterrmsg${Field}}
    ${Xpath}    BuiltIn.Run Keyword If    '${Index}' != 'None'    Get Locator From Position    ${Xpath}    ${Index}
    ...    ELSE    Set Variable    ${Xpath}
    String Error Message Committee Search    ${Field}    ${Xpath}    ${Key}    ${Visible}
