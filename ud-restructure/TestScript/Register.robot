*** Settings ***
Resource          ../Resources/Keyword/UD_Keywords.robot
Resource          ../Resources/Keyword/CreateAccount_Keywords.robot

*** Test Cases ***
Testcase_001
    Open Web Browser    ${URL}    ${BROWSER_TYPE}
    Click Web Element    ${PopupbtnX}
    Click Web Element    ${TopMenubtnSigninRegister}
    Click Web Element    ${TopMenubtnCreateAccount}
    wInput Create Account    listPLeaseSelectYourNation    Thai national
    wInput Create Account    fieldFirstName    Yongwit
    wVerify Create Account    fieldFirstName    Text=Yongwit
