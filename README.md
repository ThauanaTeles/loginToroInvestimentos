# Fluxo de login da aplicação Toro Investimentos com Robot Framework 


## Instalação do Robot Framework 

### Downloads
- Python: https://www.python.org/downloads
- Geckodriver https://github.com/mozilla/geckodriver/releases
- Chrome driver:https://chromedriver.chromium.org/downloads
- Marcar opção de instalar o PIP durante instalação do Python.
- Salvar ambos os arquivos executáveis (geckodriver e chrome driver), dentro da pasta Scripts onde foi instalado o Python na sua máquina.

### Passos para instalação do robot framework e do appium library:

`pip install robotframework

pip install --upgrade robotframework-appiumlibrary`

## Demonstração em execução
### Pré-condições
Uma pré-condição para executar os testes é ter o Robot Framework instalado. É mais comum ser usado em Python , mas também funciona com Jython (JVM) e IronPython (.NET). As instruções de instalação do Robot Framework cobrem o procedimento de instalação em detalhes. As pessoas que já estão familiarizadas com a instalação de pacotes Python e com o gerenciador de pacotes pip instalado podem simplesmente executar o seguinte comando:

`pip instalar robotframework
`

Robot Framework 3.0 suporta o mais recente Python 3, além de Python 2. Além disso, este projeto de demonstração é compatível com Python 3 atualmente.

### Executando testes
Os casos de teste são executados com o robotcomando:

`robot palavra-chave_driven.robot
`

Já o comando para executar os casos de testes e direcionar a criação dos logs para a pasta deseja será: 

`robot -d ./log palavra-chave_driven.robot
`
Onde estou especificando que a pasta será criada na mesma raiz que estiver o arquivo executável.

Observação

Se você estiver usando o Robot Framework 2.9 ou anterior, precisará usar o comando específico do interpretador Python, em vez disso.`jybot ipybot`

Para executar todos os arquivos de caso de teste em um diretório recursivamente, basta fornecer o diretório como um argumento. Você também pode fornecer vários arquivos ou diretórios de uma só vez e usar várias opções de linha de comando suportadas pelo Robot Framework. Os resultados disponíveis online foram criados usando o seguinte comando:

`robot --name Robot --loglevel DEBUG palavra-chave_driven.robot data_driven.robot gherkin.robot
`

Execute `robot --help` para obter mais informações sobre o uso da linha de comando e consulte o Guia do usuário do Robot Framework para obter mais detalhes sobre a execução do teste em geral.

## Resultados gerados
Depois de executar os testes , você obterá o relatório e o log no formato HTML. Observe que um dos testes falhou de propósito para mostrar como as falhas se parecem.

- relatório.html
- log.html


