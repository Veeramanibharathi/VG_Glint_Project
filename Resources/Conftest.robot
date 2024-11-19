*** Settings ***
Library    SeleniumLibrary
Variables    ../Resources/Variables.py
Variables    ../Resources/TeamSummary.py

*** Variables ***

*** Keywords ***
LogintoApp
    Set Selenium Implicit Wait    10
    Open Browser    https://app.vgqa.glint.cloud-dev.microsoft/session/auth    browser=chrome
    Maximize Browser Window
    #Wait Until Page Contains Element    ${Email}
    Click Element    ${Email}
    Input Text    ${Email}    qatester@glintinc.com
    Click Button    ${Email_submit_btn}

    #Wait Until Page Contains Element    ${Client_Id}
    Click Element    ${Client_Id}
    Input Text    ${Client_Id}    qa20230302_1
    Click Button    ${Email_submit_btn}

   # Wait Until Page Contains Element    id=password
    Click Element    ${Password}
    Input Text    ${Password}    Dem0@pass2
    Click Button    ${Email_submit_btn}

    Sleep    10
    Click Link    Reports

OpenEngagementSurvey
    Click Element    ${Survey}
    
OpenTeamsummaryReport

    Click Element    ${Team_summary}

    




