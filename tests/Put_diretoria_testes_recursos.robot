*** Settings ***
Resource  ../resource/teste_put_diretoria_recursos.resource

Test Setup   Abrir o navegador
#Test Teardown  Fechar o navegador

*** Test Cases ***

Cenário de teste: Cadastro de usuário administrador 
  Passo 1 - Acessar a página de login Academy
  Passo 2 - Digitar Email
  Passo 3 - Digite Senha
  Passo 4 - Clicar no botão Entrar
  Passo 5 - Clicar o botão cadastrar 
  Passo 6 - Clicar no botão Diretorias aparece a lista
  Passo 7 - Selecionar a pagina
  Passo 8 - realizar busca no botão editar
  Passo 9 - Editar nome da diretoria
  Passo 10 - Salvar alterações
  #Passo 11 - botão cancelar         