*** Settings ***

Library  AppiumLibrary

***Variables***

${text}           xpath=//android.widget.EditText[@content-desc="text-input"]
${val_text}       xpath=//android.widget.TextView[@content-desc="input-text-result"]
${switch}         xpath=//android.widget.Switch[@content-desc="switch"]
${val_switch}     xpath=//android.widget.TextView[@content-desc="switch-text"]
${drop}           xpath=//android.widget.TextView[@resource-id="dropdown-chevron"]
${option1}        xpath=//android.widget.CheckedTextView[@resource-id="android:id/text1" and @text="webdriver.io is awesome"]
${option}         xpath=//android.widget.EditText[@resource-id="text_input"]
${button_active}  xpath=//android.view.ViewGroup[@content-desc="button-Active"]
${msg_active}     xpath=//android.widget.TextView[@resource-id="android:id/message"]


***Keywords***

Preenche o campo de Texto
    Input Text  ${text}   Teste Mobile

Valida Texto Digitado
    Wait Until Element Is Visible  ${val_text} 
    Capture Page Screenshot   
    Element Text Should Be    ${val_text}    Teste Mobile
Interação com chave Switch - OFF
    Click Element   ${switch}
    Wait Until Element Is Visible  ${val_switch} 
    Capture Page Screenshot
    Element Text Should Be    ${val_switch}    Click to turn the switch OFF

Interação com o DropDown
    Click Element    ${drop}
    Click Element    ${option1}
    Capture Page Screenshot
    Element Text Should Be    ${option}    webdriver.io is awesome

Interação com o Botão
    Click Element    ${button_active}
    Wait Until Element Is Visible  ${msg_active} 
    Capture Page Screenshot
    Element Text Should Be    ${msg_active}    This button is active
    Click Element    xpath=//android.widget.Button[@resource-id="android:id/button1"]
