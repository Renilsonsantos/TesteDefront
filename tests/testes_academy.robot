*** Settings ***
Resource  ../resource/testes_recursos_academy.resource

Test Setup   Abrir o navegador
#Test Teardown  Fechar o navegador

*** Test Cases ***
Cenário de teste: Cadastro de usuário administrador 
  Passo 1 - Acessar a página de login Academy
  Passo 2 - Digitar Email
  Passo 3 - Digite Senha
  Passo 4 - Clicar no botão Entrar
  
  Passo 1 - Clicar o botão cadastrar 
  Passo 2 - Clicar no botão Diretorias aparece a lista
  



  #Passo 3 - Novo Cadastro
  #Passo 2 - Clicar no botão Usuário


