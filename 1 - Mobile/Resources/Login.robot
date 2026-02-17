*** Settings ***

Library  AppiumLibrary

***Variables***
${nav_login}        xpath=(//android.widget.TextView[@text="Login"])
${login}            xpath=(//android.widget.TextView[@text="Login"])[1]
${email}            xpath=//android.widget.EditText[@content-desc="input-email"]
${password}         xpath=//android.widget.EditText[@content-desc="input-password"]
${repeat_password}  xpath=//android.widget.EditText[@content-desc="input-repeat-password"]
${sign_Up}          xpath=//android.widget.TextView[@text="Sign up"]
${btn_sign_Up}      xpath=//android.view.ViewGroup[@content-desc="button-SIGN UP"]  
${btn_login}        xpath=//android.view.ViewGroup[@content-desc="button-LOGIN"]
${msg_ok}           id=com.wdiodemoapp:id/alert_title
${msg_ok_2}         id=android:id/message
${ok}               id=android:id/button1
${err_email}        xpath=//android.widget.TextView[@text="Please enter a valid email address"]
${err_senha}        xpath=//android.widget.TextView[@text="Please enter at least 8 characters"]
${err_senha_2}      xpath=//android.widget.TextView[@text="Please enter the same password"]

***Keywords***

Valida se todos os elementos estão visíveis na tela de Login
    Wait Until Element Is Visible  ${login}                   
    Wait Until Element Is Visible  ${email}            
    Wait Until Element Is Visible  ${password} 

Valida se todos os elementos estão visíveis na tela de Cadastro
    Click Element   ${sign_Up}
    Wait Until Element Is Visible  ${login}                   
    Wait Until Element Is Visible  ${email}            
    Wait Until Element Is Visible  ${password}    
    Wait Until Element Is Visible  ${repeat_password}   
    Wait Until Element Is Visible  ${btn_sign_Up}    
Preenche Área de Login
    Input Text      ${email}       qa@qa.io
    Input Text      ${password}    12345678
    Click Element    ${btn_login}
    Wait Until Element Is Visible  ${msg_ok}  10s
    Element Text Should Be  ${msg_ok}   Success
    Wait Until Element Is Visible  ${msg_ok_2}  
    Element Text Should Be  ${msg_ok_2}  You are logged in!
    Click Element    ${ok}   
Preenche Área de Cadastro
    Input Text      ${email}       qa@qa.io
    Input Text      ${password}    12345678
    Input Text      ${repeat_password}    12345678
    Click Element   ${btn_sign_Up}
    Wait Until Element Is Visible  ${msg_ok}  10s
    Element Text Should Be  ${msg_ok}   Signed Up!
    Wait Until Element Is Visible  ${msg_ok_2}  
    Element Text Should Be  ${msg_ok_2}  You successfully signed up!
    Click Element    ${ok}
Preenche Área de Login com Dados Inválidos
    Input Text      ${email}       qa.io.com
    Input Text      ${password}    123
    Click Element    ${btn_login}

    Wait Until Element Is Visible  ${err_email} 
    Element Text Should Be  ${err_email}  Please enter a valid email address

    Wait Until Element Is Visible  ${err_senha} 
    Element Text Should Be  ${err_senha}  Please enter at least 8 characters
 
Preenche Área de Cadastro com Dados Inválidos 
    Input Text      ${email}       qa.io.com
    Input Text      ${password}    123
    Input Text      ${repeat_password}    321
    Click Element   ${btn_sign_Up}

    Wait Until Element Is Visible  ${err_email} 
    Element Text Should Be  ${err_email}  Please enter a valid email address

    Wait Until Element Is Visible  ${err_senha_2} 
    Element Text Should Be  ${err_senha_2}  Please enter the same password
 