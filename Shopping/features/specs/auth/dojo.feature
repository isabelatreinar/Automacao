#language: pt
Funcionalidade: Cadastro do usuario
    Sendo um usuario sem cadastro
    Posso realizar o cadastro no site
    Para criar tarefas

@testeCadastro
Cenário: Cadastro com sucesso
    Dado que acessei o site Marktasks
    Quando faco o cadastro com:
    |Nome |Flavio Machado          |
    |Email|flaviosm2003@hotmail.com|
    |Senha|123456                  |
    Então visualizo a pagina de tarefas
    #tse