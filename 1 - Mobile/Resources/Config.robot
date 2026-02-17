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
    ...     app=/home/marcus/Área de trabalho/carrefour.apk  
    ...     automationName=UiAutomator2  
Close Session
    Close Application
