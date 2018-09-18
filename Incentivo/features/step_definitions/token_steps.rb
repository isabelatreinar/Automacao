Dado('que acessei a url para gerar o token') do
    visit 'http://homologacao.optemais.com.br/Sites/AcessoTokenCSU/Login'
end
  
Quando('chamo a url da Org solicitada') do
    @usuario = '#Usuario'
    @senha = '#Senha'
    @btn_entrar = '.btn.btn-primary.btn-block.btn-lg'
    @btn_chamar = 'button[class="btn btn-primary"]'
    find(@usuario).send_keys '25246573451'
    find(@senha).send_keys 'aaaa1*'
    combo_org = find('select[id=CodigoOrganizacao]')
    combo_org.find('option', text: 'PORTO SEGURO').select_option
    find(@btn_entrar).click
    
    
    # within('.jconfirm-buttons') do
    #     find('button[class="btn background-image success"]').click
    # end
    janela = window_opened_by do    #a variável 'janela' recebe a janela aberta pelo clique no botão 'btn_chamar'
        find(@btn_chamar).click 
    end
#muda de foco para a janela         
    within_window janela do #mudar o foco para a janela aberta, que nesse caso é 'janela', que foi aberta acima pelo botão 'btn_chamar'
        expect(current_url).to 	eql 'http://preproducao.optemais.com.br/IncentivoOperacional/Catalogo/Produtos'
        #find('button[class="btn background-image success"]').click #esse botão é um popup que aparece no ambiente de pp
        
        #janela.close     
    end   
end
  
Então('visualizo o site da Org para navegacao') do
    switch_to_window windows.last #mudar para a última janela aberta, que nesse caso é a mesma da variável 'janela' que é o portal do incentivo aberto. Se eu não colocar esse comando volta para a janela do token que é a primeira aberta
        expect(page).to have_css '.logo-org'
    
end
  