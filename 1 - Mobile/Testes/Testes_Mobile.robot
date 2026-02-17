***Settings***

Resource  ../Resources/Config.robot
Resource  ../Resources/Formulario.robot
Resource  ../Resources/Navegacao.robot

*** Test Cases ***

01 - Validar Área de Login
    Open Session
    Acessa a área de Login
    Valida se todos os elementos estão visíveis na tela de Login
    Preenche Área de Login
    Close Session
02 - Validar Área de Cadastro
    Open Session
    Acessa a área de Login
    Valida se todos os elementos estão visíveis na tela de Cadastro
    Preenche Área de Cadastro    
    Close Session
03 - Teste Negativo - Preencher Login com dados inválidos
    Open Session
    Acessa a área de Login
    Valida se todos os elementos estão visíveis na tela de Login
    Preenche Área de Login com Dados Inválidos   
    Close Session
04 - Teste Negativo - Preencher Cadastro com dados inválidos
    Open Session
    Acessa a área de Login
    Valida se todos os elementos estão visíveis na tela de Cadastro
    Preenche Área de Cadastro com Dados Inválidos  
    Close Session
05 - Navegação entre Telas
    Open Session
    Verifica se esta na Home
    Acessa a Área de Login
    Acessa a Área de Forms
    Acessa a Área de Swipe
    Acessa a Área de Drag
    Close Session

06 - Preenche e Valida o campo de Valida Texto Digitado
    Open Session
    Acessa a Área de Forms
    Preenche o campo de Texto
    Valida Texto Digitado
    Close Session
07 - Liga chave switch para On
    Open Session
    Acessa a Área de Forms
    Interação com chave Switch - ON
    Close Session
08 - Liga chave switch para Off
    Open Session
    Acessa a Área de Forms
    Interação com chave Switch - OFF
    Close Session
09 - Interação com DropDown
    Open Session    
    Acessa a Área de Forms
    Interação com o DropDown
    Close Session
10 - Interação com o Botão Active
    Open Session
    Acessa a Área de Forms
    Interação com o Botão
    Close Session

