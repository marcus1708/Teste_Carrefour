📘 README – Automação de Testes

Projeto utilizando Robot Framework para testes Mobile e API

📦 1️⃣ Configuração do Ambiente
🔹 Pré-requisitos Gerais

Python 3.10+ (recomendado 3.11+)

Pip atualizado

Git

Node.js (para Appium)

Java JDK 11+ (para Android)

Android Studio (para testes mobile Android)

Verificar versões:

python --version
pip --version
node --version
java -version

🤖 2️⃣ Instalação do Robot Framework
pip install robotframework


Verificar instalação:

robot --version

📱 3️⃣ Testes Mobile (AppiumLibrary)
🔹 Instalar dependências
pip install robotframework-appiumlibrary
pip install Appium-Python-Client


Instalar Appium globalmente:

npm install -g appium


Verificar:

appium -v

🔹 Configuração Android

Instalar Android Studio

Configurar variável de ambiente:

Windows
ANDROID_HOME=C:\Users\SeuUsuario\AppData\Local\Android\Sdk


Adicionar ao PATH:

%ANDROID_HOME%\platform-tools
%ANDROID_HOME%\emulator


Verificar:

adb devices

🔹 Iniciar o Appium Server
appium


Servidor padrão:

http://127.0.0.1:4723

🔹 Executando testes Mobile

Executar todos os testes:

robot -d results mobile/tests


Executar teste específico:

robot mobile/tests/login.robot


Executar com variável:

robot -v PLATFORM:android mobile/tests

🌐 4️⃣ Testes de API (RequestsLibrary)
🔹 Instalar dependências
pip install robotframework-requests


Verificar:

pip show robotframework-requests

🔹 Estrutura esperada do projeto (API)
api/
│
├── tests/
│   └── usuarios.robot
│
├── resources/
│   └── usuario.robot
│
└── Json/
    └── usuario.json

🔹 Configuração da Sessão HTTP

Exemplo padrão:

Create Session    api    https://serverest.dev


📚 RequestsLibrary – Create Session

🔹 Executando testes de API

Executar todos os testes:

robot -d results api/tests


Executar teste específico:

robot api/tests/usuarios.robot


Executar com variável de ambiente:

robot -v URL:https://serverest.dev api/tests

📊 5️⃣ Relatórios Gerados

Após execução, o Robot gera automaticamente:

report.html

log.html

output.xml

Abrir:

report.html
