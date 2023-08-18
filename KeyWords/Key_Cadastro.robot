*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}                Firefox

${INP_FIRST_NAME}        //input[@name="first_name"]
${INP_LAST_NAME}         //input[@name="last_name"]
${INP_BUSSINES_NAME}     //input[@name="business_name"]
${INP_EMAIL}             //input[@name="email"]
${INP_RESULT}            //input[@id="number"]

${SPAN_NUMBER1}          //span[@id="numb1"]
${SPAN_NUMBER2}          //span[@id="numb2"]

${BT_SUBMIT}             //button[@id="demo"]

*** Keywords ***
Abrir o navegador
    Open Browser    about:blank    ${Browser}

Fechar o navegador
    Close Browser

Dado que o usuário esteja no site "${URL}"
    Go To    ${URL}
    Maximize Browser Window

Quando preencher todos os dados com dados válidos
    Input Text    ${INP_FIRST_NAME}    Name Teste
    Input Text    ${INP_LAST_NAME}    Last Name Teste
    Input Text    ${INP_BUSSINES_NAME}    Bussines Name Teste
    Input Text    ${INP_EMAIL}    EmailTest@gmail.com  

Quando preencher todos os dados com dados válidos menos o e-mail
    Input Text    ${INP_FIRST_NAME}    Name Teste
    Input Text    ${INP_LAST_NAME}    Last Name Teste
    Input Text    ${INP_BUSSINES_NAME}    Bussines Name Teste

    E realizar o calculo da soma e preencher no campo Result

E realizar o calculo da soma e preencher no campo Result
    ${Valor1}    Get Text    ${SPAN_NUMBER1}
    ${Valor2}    Get Text    ${SPAN_NUMBER2}

    ${Soma}    Evaluate    ${Valor1} + ${Valor2}

    Input Text    ${INP_RESULT}    ${Soma}

E clicar no botão Submit
    Click Button    ${BT_SUBMIT}

Então o sistema deve apresentar a tela com a mensagem “${Valição_Sucesso}”
    Wait Until Page Contains    ${Valição_Sucesso}

Então o sistema deve apresentar a tela com a mensagem de obrigatoriedade do campo não preenchido
    Alert Should Be Present    Please type your email name    action=ACCEPT
