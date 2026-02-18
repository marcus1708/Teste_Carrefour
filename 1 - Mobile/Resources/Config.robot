*** Settings ***

Library  AppiumLibrary

***Keywords***

Open Session
    Open Application  http://localhost:4723
    ...     platformName=Android  
    ...     deviceName=Mobile 
    ...     app=C:/Users/ADM/Documents/app/carrefour.apk  
    ...     automationName=UiAutomator2  
Close Session
    Close Application
