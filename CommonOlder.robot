*** Settings ***
Library                     AppiumLibrary
Library                      Selenium2Library   
Library                     Collections
#Resource        ../settings/setup.robot

#What to do on test/suite setup/teardown
Suite Setup     Setup and open app
Suite Teardown  #Close App
Test Setup      Reset App

***Variables***
${AUTOMATION_NAME_IOS}      XCUITest
${AUTOMATION_NAME_ANDROID}  UiAutomator2
#${APPLEDEVELOPERTEAMID} XXXXXXXXXXX

# Device to run the test on
${DEVICE}           iPhone 11
${APPIUM_SERVER}    http://0.0.0.0:4723/wd/hub
${PLATFORM}         ${${DEVICE}_PLATFORM}
${VERSION}          ${${DEVICE}_VERSION}
${DEVICENAME}       ${${DEVICE}_DEVICENAME}
${UDID}             ${${DEVICE}_UDID}
${APPNAME}          ${${DEVICE}_APPNAME}
${AUTOMATION_NAME}  ${${DEVICE}_AUTOMATION_NAME}
${GET_STARTED}     Sign in
#iPhone Xr
${DEVICE}   iPhone11
${iPhone11_DEVICENAME}       iPhone
${iPhone11_UDID}             B9729E12-4E2C-4118-8C4C-091FEB1DE9D3
${iPhone11_PLATFORM}         iOS
${iPhone11_VERSION}          15.0
${iPhone11_APPNAME}          com.3tandai.foodrx.preview
${iPhone11_AUTOMATION_NAME}  ${AUTOMATION_NAME_IOS}
${Ok}    Ok
${LOGIN_PHONENUMBER}        automation@digbitest.com

#6788999999
#253545

***Keywords***
Setup and open app
    Open Application    ${APPIUM_SERVER}    udid=${UDID}      platformName=${PLATFORM}
   # ...   #  xcodeorgid=${APPLEDEVELOPERTEAMID}  
    ...  xcodesigningid=iPhone Developer     automationName=${AUTOMATION_NAME}    deviceName=${DEVICENAME}
    ...     app=${APPNAME}   
Close app
    Close Application

Reset App
    Reset Application

Fill Intake Forms
    AppiumLibrary.click element    Next
    AppiumLibrary.Wait Until Element Is Visible  Other   10
    AppiumLibrary.click element    Improve digestive health
    AppiumLibrary.click element    Next
    Sleep    5
    AppiumLibrary.click element    Next
    AppiumLibrary.Wait Until Element Is Visible   I want to lose 10%   10
    AppiumLibrary.click element   I want to lose 5%
    AppiumLibrary.click element    Next
    AppiumLibrary.Wait Until Element Is Visible    Enter your answer here    10
    AppiumLibrary.Input text   Enter your answer here     72
    AppiumLibrary.click element    Next
    AppiumLibrary.Wait Until Element Is Visible   Male   10
    AppiumLibrary.click element   Male
    AppiumLibrary.click element    Next
    AppiumLibrary.Wait Until Element Is Visible   South Asian   10
    AppiumLibrary.click element   South Asian
    AppiumLibrary.click element    Next
    AppiumLibrary.Wait Until Element Is Visible   40-50 Years   10
    AppiumLibrary.click element    40-50 Years
    AppiumLibrary.click element    Next
    AppiumLibrary.Wait Until Element Is Visible   Anthem Blue Cross   10
    AppiumLibrary.click element    Anthem Blue Cross
    AppiumLibrary.click element    Next
    AppiumLibrary.Wait Until Element Is Visible   Sleep issues   10
    AppiumLibrary.click element    Sleep issues 
    AppiumLibrary.click element    Next
    AppiumLibrary.Wait Until Element Is Visible    Enter your answer here    10
    AppiumLibrary.Input text   Enter your answer here     testtextname
    AppiumLibrary.click element    Next
    AppiumLibrary.Wait Until Element Is Visible    Enter your answer here    10
    AppiumLibrary.Input text   Enter your answer here    testemail@adsa.dsds     
    AppiumLibrary.click element    Next
    AppiumLibrary.Wait Until Element Is Visible    Enter your answer here    10
    AppiumLibrary.Input text   Enter your answer here     testemail@adsa.dsds     
    AppiumLibrary.click element    Next
    
Intake forms autofilled
    AppiumLibrary.click element    Sign in
    AppiumLibrary.Wait Until Element Is Visible  Other   10
    AppiumLibrary.click element    Next
    AppiumLibrary.click element    Next
    AppiumLibrary.Wait Until Element Is Visible   I want to lose 10%   10
    AppiumLibrary.click element    Next
    AppiumLibrary.Wait Until Element Is Visible    Next    10
    AppiumLibrary.click element    Next
    AppiumLibrary.Wait Until Element Is Visible   Male   10
    AppiumLibrary.click element    Next
    AppiumLibrary.Wait Until Element Is Visible   South Asian   10
    AppiumLibrary.click element    Next
    AppiumLibrary.Wait Until Element Is Visible   40-50 Years   10
    AppiumLibrary.click element    Next
    AppiumLibrary.Wait Until Element Is Visible   Anthem Blue Cross   10
    AppiumLibrary.click element    Next
    AppiumLibrary.Wait Until Element Is Visible   Sleep issues   10
    AppiumLibrary.click element    Next
    AppiumLibrary.Wait Until Element Is Visible    testtextname   10
    AppiumLibrary.click element   Next
    AppiumLibrary.Wait Until Element Is Visible    Enter your answer here    10
    AppiumLibrary.Input text   Enter your answer here    testemail@adsa.dsds     
    AppiumLibrary.click element    Next
    AppiumLibrary.Wait Until Element Is Visible    Enter your answer here    10
    AppiumLibrary.Input text   Enter your answer here     testemail@adsa.dsds     
    AppiumLibrary.click element    Next


*** Test Cases ***
Initial Test Case
    [Tags]   all  
    Setup and open app
    AppiumLibrary.Wait Until Element Is Visible   Dismiss All   20
    AppiumLibrary.click element    Dismiss All
    #AppiumLibrary.Wait Until Element Is Visible   Dismiss All   20
    #AppiumLibrary.click element    Dismiss All
    AppiumLibrary.Wait Until Element Is Visible   ${GET_STARTED}   20
    AppiumLibrary.click element   ${GET_STARTED}    
    AppiumLibrary.Wait Until Element Is Visible   Dismiss All   20
    AppiumLibrary.click element    Dismiss All
    AppiumLibrary.Wait Until Element Is Visible  ${Ok}     10
    AppiumLibrary.click element   ${Ok}  
    AppiumLibrary.Wait Until Element Is Visible  Phone or email      10
    AppiumLibrary.Input text   Phone or email     ${LOGIN_PHONENUMBER}
    AppiumLibrary.Wait Until Element Is Visible  Next   10
    AppiumLibrary.click element  Next
    AppiumLibrary.Input text   Password     253545
    Intake forms autofilled
