*** Settings ***
Resource    ../Resources/usuario.robot
Suite Setup        Criar Sessão    https://serverest.dev    
Suite Teardown     Encerrar Sessão
*** Variables ***
${email}       qa@qa.com
${password}    teste
*** Test Cases ***
CRUD Usuario
    ${id}    Cria Usuario
    Consulta Usuario Lista
    Consulta Usuario ID    ${id}
    Atualiza Usuario       ${id}
    Excluir Usuario        ${id}