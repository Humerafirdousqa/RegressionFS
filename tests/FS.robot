*** Settings ***
Resource               ../resources/common.robot
Suite Setup            Setup Browser
Suite Teardown         End suite
Library                DateTime
Library                String


*** Variables ***


*** Test Cases ***
Command Center for FSR
    [Documentation]    This is to Validate Command Center
    [Tags]             Command Center
    Login
    Login As FSR       Charles Kirk
    Verify Home page for FSR

Create Elite Survey
    [Documentation]    This is to create Elite Survey
    [Tags]             Elite Survey
    Select the first Account
    ClickText          Surveys
    Create Elite Survey

Create FailedScan
    [Documentation]    This is to create Failed Scan
    [Tags]             Failed Scan
    Create Failed Scan

Create MerchChecklist
    [Documentation]    This is to create MerchChecklist
    [Tags]             Merch Checklist
    Select the first Account
    Create Merch Checklist

Create NCR as an FSR
    [Documentation]       This is to create NCR
    [Tags]                NCR
    ClickText             New Customer Request        anchor=Live Order
    ${DBARand}=           Generate Random String      6                         [LOWER]
    ${FirstRand}=         Generate Random String      6                         [LOWER]
    ${LastRand}=          Generate Random String      6                         [LOWER]
    ClickText             New Customer Request
    SwitchWindow          NEW
    Create NCR as FSR     DBAName=${DBARand}          firstName=${FirstRand}    lastName=${LastRand}    BU=FDI                      selltype=House Account
    VerifyText            Awaiting Manager Approval

Draft Beer Calculator
    [Documentation]    This is to test Draft Profit Calculator Functionality
    [Tags]             Profit Calculator
    Select the first Account
    ClickText          Profit Calculator
    Draft Beer Calculator

Packaged Beer Calculator
    [Documentation]    This is to test Packaged Beer Profit Calculator Functionality
    [Tags]             Profit Calculator
    Select the first Account
    ClickText          Profit Calculator
    ClickText          Packaged Beer Calculator
    Packaged Beer Calculator

Menu Survey
    [Documentation]    This is test Menu Survey Functionality
    [Tags]             Surveys
    Create a Menu Survey

