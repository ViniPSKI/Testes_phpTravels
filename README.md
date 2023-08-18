#Instruções de Uso

Para executar o script com sucesso, certifique-se de ter as seguintes ferramentas instaladas no seu computador:

    Python versão >= 3.8.10
        Instruções de Instalação do Python

    Robot Framework versão >= 6.0.2
        Instale com o seguinte comando: pip install --upgrade robotframework==6.0.2

    Selenium WebDriver versão >= 4.8.3
        Instale com o seguinte comando: pip install --upgrade selenium==4.8.3

    GeckoDriver (Driver para utilizar o Firefox) versão >= 0.33.0
        Instruções de Instalação do GeckoDriver

Os arquivos que você clonou do repositório Git devem estar dentro de uma pasta raiz, como por exemplo: Testes_Com_Selenium

Após isso, para executar os testes, siga estas etapas:

    Abra um terminal na pasta raiz dos arquivos clonados.

    Execute o seguinte comando para iniciar a execução dos testes:

robot -d results ./TestCase/Tests_Cadastro.robot

Será criada uma pasta chamada "results" contendo um arquivo HTML detalhando a execução dos testes.
