#language: pt

Funcionalidade: Compra de produto
    Sendo um usuario cadastrado no Optemais
    Posso realizar login no site
    Para poder realizar minhas compras

@comprar @auth 
Cenario: Comprar produto
    Dado que estou logado no site
    Quando realizo a compra do produto 'Creme para Assadura Huggies - Turma da Mônica Infantil 90g'
    Então visualizo a confirmacao da minha compra
