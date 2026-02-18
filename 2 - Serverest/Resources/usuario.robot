*** Settings ***
Library    RequestsLibrary
Library    String
Library    OperatingSystem
Library    Collections
*** Variables ***

*** Keywords ***
Criar Sessão
    [Arguments]      ${url}
    Create Session   alias=api    url=${url}    verify=true
Encerrar Sessão
    Delete All Sessions
Cria Usuario
    ${body_str}     Get File    path=${EXECDIR}/2 - Serverest/Json/usuario.json
    ${body}         Evaluate    json.loads($body_str)    json

    ${response}     POST On Session
    ...    alias=api
    ...    url=/usuarios
    ...    json=${body}
    ...    expected_status=201

    ${id}    Set Variable    ${response.json()['_id']}
    Dictionary Should Contain Value
    ...    ${response.json()}
    ...    Cadastro realizado com sucesso

    RETURN    ${id}

Consulta Usuario Lista
    ${header}       Create Dictionary  Content-Type=application/json

    ${response}     GET On Session    alias=api    url=/usuarios  
    ...             headers=${header}    
    ...             expected_status=200
    
Consulta Usuario ID
    [Arguments]    ${id}

    ${header}       Create Dictionary  Content-Type=application/json

    ${response}     GET On Session    alias=api    url=/usuarios/${id}  
    ...             headers=${header}    
    ...             expected_status=200
    
Login Usuario
   [Arguments]     ${email}    ${password}
   ${body}         Get File   path=${EXECDIR}/Json/usuario.json

    ${header}       Create Dictionary  Content-Type=application/json

    ${response}     POST On Session    alias=api    url=/login    
    ...             headers=${header}    
    ...             data={"email": "${email}","password": "${password}"}
    ...             expected_status=200
    
    ${token}      Set Variable    ${response.json()['authorization']}
    Dictionary Should Contain Value   ${response.json()}    Login realizado com sucesso
    RETURN        ${token} 
Atualiza Usuario
    [Arguments]    ${id}
    ${body}         Get File   path=${EXECDIR}/2 - Serverest/Json/usuario.json
<<<<<<< HEAD
=======

>>>>>>> e16dd4a71184b60ad202c4e9c83258370886eb70
    ${header}       Create Dictionary  Content-Type=application/json

    ${response}     PUT On Session    alias=api    url=/usuarios/${id}    
    ...             headers=${header}    
    ...             data=${body}
    ...             expected_status=200
    Dictionary Should Contain Value   ${response.json()}    Registro alterado com sucesso
Excluir Usuario
    [Arguments]    ${id}

    ${header}       Create Dictionary  Content-Type=application/json

    ${response}     DELETE On Session    alias=api    url=/usuarios/${id}  
    ...             headers=${header}    
    ...             expected_status=200
    Dictionary Should Contain Value   ${response.json()}    Registro excluído com sucesso  
    
