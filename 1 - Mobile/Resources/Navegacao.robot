*** Settings ***

Library  AppiumLibrary

***Variables***
${home}        xpath=//android.widget.TextView[@text="WEBDRIVER"]
${login}       xpath=(//android.widget.TextView[@text="Login"])[2]
${val_login}   xpath=//android.widget.TextView[@text="Login / Sign up Form"]
${forms}       xpath=//android.widget.TextView[@text="Forms"]
${val_forms}   xpath=//android.widget.TextView[@text="Form components"]
${swipe}       xpath=//android.widget.TextView[@text="Swipe"]
${val_swipe}   xpath=//android.widget.TextView[@text="Swipe horizontal"]
${drag}        xpath=//android.widget.TextView[@text="Drag"]
${val_drag}    xpath=//android.widget.TextView[@text="Drag and Drop"]


***Keywords***

Verifica se esta na Home
    Wait Until Element Is Visible    ${home}
Acessa a Área de Login
    Click Element   ${login}
    Wait Until Element Is Visible  ${val_login}   
    Element Text Should Be  ${val_login}   Login / Sign up Form

Acessa a Área de Forms
    Click Element   ${forms}
    Wait Until Element Is Visible  ${val_forms}     
    Element Text Should Be    ${val_forms}    Form components

Acessa a Área de Swipe
    Click Element   ${swipe}
    Wait Until Element Is Visible  ${val_swipe} 
    Element Text Should Be    ${val_swipe}    Swipe horizontal

Acessa a Área de Drag
    Click Element   ${drag}
    Wait Until Element Is Visible  ${val_drag}   
    Element Text Should Be    ${val_drag}    Drag and Drop