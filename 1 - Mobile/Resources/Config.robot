*** Settings ***

Library  AppiumLibrary

***Variables***
${webdriver}        xpath=//android.widget.TextView[@text="WEBDRIVER"]
${logo}             xpath=//android.widget.ScrollView[@content-desc="Home-screen"]/android.view.ViewGroup/android.widget.ImageView[1]
***Keywords***

Open Session
    Open Application  http://localhost:4723
    ...     platformName=Android  
    ...     deviceName=Mobile 
    ...     app=C:/Users/ADM/Documents/app/carrefour.apk  
    ...     automationName=UiAutomator2
    Set Appium Timeout  10 seconds
    Wait Until Element Is Visible  ${logo}  
    Wait Until Element Is Visible  ${webdriver}  
Close Session
    Close Application