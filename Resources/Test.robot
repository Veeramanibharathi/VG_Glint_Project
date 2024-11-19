*** Settings ***
Library    SeleniumLibrary
Variables    ../Resources/TeamSummary.py
Resource    ../Resources/conftest.robot
#Variables    ../Resources/Variables.py


*** Variables ***

*** Keywords ***
    

*** Test Cases ***

TC_001 TestLoginPage

    [Tags]    Regression
    LogintoApp
    OpenEngagementSurvey
    Reload Page
    OpenTeamsummaryReport
    ${Teamsummarytext}    Get Text    ${Teamsummarytext}
    Should Be Equal As Strings    ${Teamsummarytext}    Team Summary
    Sleep    5
    Close Browser

TC_002 Test check survey participation
    #[Tags]    SmokeTest
    LogintoApp
    OpenEngagementSurvey
    Reload Page
    OpenTeamsummaryReport
    Page Should Contain Element    ${SurveyParticipation}   
    Capture Element Screenshot    ${SurveyParticipation}    SurveyPartcipation.png
    Sleep    5
    Close Browser

TC_003 KeyOutComeSection
    [Tags]    SmokeTest
    LogintoApp
    OpenEngagementSurvey
    OpenTeamsummaryReport
    Page Should Contain Element    ${Keyoutcome}
    Capture Element Screenshot    ${Keyoutcome}    TC_Keyoutcome.png
    Sleep    5
    Close Browser
TC_004 AllScoreSection
    LogintoApp
    OpenEngagementSurvey
    OpenTeamsummaryReport
    Page Should Contain Element  ${AllScores}
    Capture Element Screenshot   ${AllScores}    TC_AllScores_TS.png
    Sleep    5
    Close Browser
TC_005 PrimaryHierarchySection
    LogintoApp
    Wait Until Element Is Visible    ${Survey}
    Reload Page
    OpenEngagementSurvey
    OpenTeamsummaryReport
    Page Should Contain Element  ${PrimaryHierarchy}
    
    Capture Element Screenshot    ${PrimaryHierarchy}    TC_PrimaryHierarchy_TS.png
    Sleep    5
    Close Browser

TC_006 ClickViewComments
    LogintoApp
    OpenEngagementSurvey
    Reload Page
    OpenTeamsummaryReport
    Click Element    ${ViewComments}
    Page Should Contain    text=All Comments
    Capture Element Screenshot    ${ViewComments}   All Comments.png
    Close Browser

TC_007 Keyoutcome Score Trend
    LogintoApp
    OpenEngagementSurvey
    OpenTeamsummaryReport
    Scroll Element Into View    ${KeyoutcomeScoreTrend}
    Mouse Over    ${KeyoutcomeScoreTrend}
    Capture Element Screenshot    ${KeyoutcomeScoreTrend}    Keyoutcomescoretrend.png
    Close Browser

TC_008 Comment Count
    LogintoApp   
    OpenEngagementSurvey
    Reload Page
    OpenTeamsummaryReport
    Page Should Contain    ${AllCommentcount}
    Capture Element Screenshot    ${AllCommentcount}    CommentsCount.png
    Close Browser


*** Comments ***
