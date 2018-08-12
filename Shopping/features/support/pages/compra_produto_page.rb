

class CompraPage < SitePrism::Page
  
  element :produto, '[href="/Shopping/Catalogo/Produto/1/46/4962716/creme-para-assadura-huggies-turma-da-monica-infantil-90g"]', match: :first
  element :btn_comprar, '.btn.btn-primary.add-to-cart.btn-block.adicionar-ao-carrinho-detalhe-produto'
    def comprar
      @listagem.btn_comprar.click
    end
end