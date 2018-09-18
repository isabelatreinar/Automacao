#language: pt
Funcionalidade: Gerar token
    Sendo eu um administrador
    Posso gerar um token valido
    Para que eu possa acessar o ambiente de pre-producao das Orgs do Incentivo

@token
Cenário: Acessar Token valido
    Dado que acessei a url para gerar o token
    Quando chamo a url da Org solicitada
    Então visualizo o site da Org para navegacao