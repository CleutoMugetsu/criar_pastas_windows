@echo off
chcp 65001 > nul

REM Definindo o local do arquivo de texto com os nomes dos funcionários
set "arquivo_funcionarios=funcionarios.txt"

REM Verificando se o arquivo existe
if not exist "%arquivo_funcionarios%" (
    echo Arquivo de funcionários não encontrado.
    exit /b
)

REM Loop através dos nomes dos funcionários no arquivo
for /f "usebackq delims=" %%i in (%arquivo_funcionarios%) do (
    mkdir "%%i"
    cd "%%i"
    mkdir "CERTIFICADOS E TREINAMENTOS"
    mkdir "DOCUMENTOS EMPRESA"
    mkdir "DOCUMENTOS PESSOAIS"
    cd ..
)

echo Pastas criadas para todos os funcionários.
