
Dado('que estou logado no site da OpteMais') do
  #page.refresh #inserido esse comando para atualizar a página até o erro da apresentação do cabeçalho ser corrigido - mantis 26150 (filha SHOPPING)
  #@pesquisa.topo.aguardar_informacoes_de_usuario
    sleep(2)
end
  
Quando('realizo a compra do produto {string}') do |produto|
  @pesquisa.pesquisar(produto)
  @listagem.produto.click
  @listagem.btn_comprar.click
  #find('[href="/Shopping/Catalogo/Produto/1/46/4962716/creme-para-assadura-huggies-turma-da-monica-infantil-90g"]').click
  # @listagem.btn_comprar.click
end 
  
Então('visualizo a confirmacao da minha compra') do
  pending # Write code here that turns the phrase above into concrete actions
end
  