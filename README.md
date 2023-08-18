# Instruções para o uso.

Para que o Script seja executado, devem estar instalados no computador as seguintes ferramentas:

> Python versão >= 3.8.10
>> Instalação: https://www.python.org/downloads/release/python-3810/
> Robot Framework versão >= 6.0.2
>> Instalação: pip install --upgrade robotframework==6.0.2
> Selenium WebDrive versão >= 4.8.3
>> Instalação: pip install --upgrade selenium==4.8.3
> GeckoDriver (Driver para utilizar o Firefox) versão >= 0.33.0
>> Instalação: https://github.com/mozilla/geckodriver/releases

Os arquivos que serão clonados do git deverão estar dentro de uma pasta raiz, como por exemplo: Testes_Com_Selenium

Após isso, para que os testes sejam executados basta rodar o seguinte comando:
> robot -d result ./TestCase/Tests_Cadastro.robot

Será gerada uma pasta chamada "results", onde conterá na mesma um arquivo .html contendo o detalhamento da execução dos testes.
