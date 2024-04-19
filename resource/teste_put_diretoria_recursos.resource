*** Settings ***

Library   SeleniumLibrary


*** Variables ***
${URL}                   https://automacao.qacoders-academy.com.br
${emailInput}           //input[contains(@type,'text')]
${passworInput}         //input[contains(@type,'password')]
${buttonEntra}         //button[@class='MuiButtonBase-root MuiButton-root MuiButton-contained MuiButton-containedOrange MuiButton-sizeMedium MuiButton-containedSizeMedium MuiButton-root MuiButton-contained MuiButton-containedOrange MuiButton-sizeMedium MuiButton-containedSizeMedium css-ojf4v2'][contains(.,'Entrar')]
${spanCadastros}       //span[contains(.,'Cadastros')]
${DiretoriaButton}      //span[contains(.,'Diretorias')]
${novocadastro}        //button[contains(.,'Novo Cadastro')]
${buttoninput}         //input[contains(@type,'text')]
${buttoneditar}        (//button[contains(@id,'edit')])[4]
${boardNameInput}       //input[contains(@name,'boardName')]
${buttonSALVAR}        //button[contains(.,'SALVAR ALTERAÇOES')]
${buttoncancelar}      //button[@type='button'][contains(.,'CANCELAR')]
${buttonclass}         class=css-kab9pu


*** Keywords ***
Abrir o navegador
  Open Browser  browser=chrome  
  maximize Browser Window
  
#Fechar o navegador
  #Close Browser
Passo 1 - Acessar a página de login Academy
  Go to     url=${URL}
Passo 2- Digitar Email
   Wait Until Element Is Visible    locator=${emailInput} 
   Input Text                       locator=${emailInput}        text=sysadmin@qacoders.com
   Sleep    1s 

Passo 3 - Digite Senha
  Wait Until Element Is Visible    locator=${passworInput}
  Input Text                       locator=${passworInput}    text=1234@Test
  Sleep    1s

 Passo 4 - Clicar no botão Entrar
  Wait Until Element Is Visible       locator=${buttonEntra} 
  Click Button                        locator=${buttonEntra} 
  Sleep    1s

   
 Passo 5- Clicar o botão cadastrar
  Wait Until Element Is Visible        locator=${spanCadastros} 
  Click Element                       locator=${spanCadastros} 
  Sleep   1s                 


Passo 6 - Clicar no botão Diretorias aparece a lista
   Wait Until Element Is Visible      locator=${DiretoriaButton}
   Click Element                      locator=${DiretoriaButton}
   Sleep    4s
Passo 7 - selecionar a pagina
   Wait Until Element Is Visible       locator=${buttonclass}
   Click Element                       locator=${buttonclass}
   Wait Until Element Is Visible       locator=${buttonclass}
   Click Element                       locator=${buttonclass}
   Wait Until Element Is Visible       locator=${buttonclass}
   Click Element                       locator=${buttonclass}
   Wait Until Element Is Visible       locator=${buttonclass}
   Click Element                       locator=${buttonclass}
   Wait Until Element Is Visible       locator=${buttonclass}
   Click Element                       locator=${buttonclass}
  

   
 Passo 8 - realizar busca no botão editar
    Wait Until Element Is Visible         locator=${buttoneditar}
    Click Button                          locator=${buttoneditar}  

Passo 9 - Editar nome da diretoria
    Wait Until Element Is Visible            locator=${boardNameInput}
    Input Text                               locator=${boardNameInput}    text=ruben 

Passo 10 - Salvar alterações
    Wait Until Element Is Visible             locator=${buttonSALVAR}  
    Click Button                              locator=${buttonSALVAR}

Passo 11 - botão cancelar  
  Wait Until Element Is Visible               locator=${buttoncancelar}
  Click Button                                locator=${buttoncancelar}