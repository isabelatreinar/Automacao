# Dado("que acessei o site Marktasks") do                                                               
#   visit 'https://marktasks.herokuapp.com/register'                           
# end                                                                                                       
                                                                                                          
# Quando("faco o cadastro com:") do |table|
#   @tabela = table.rows_hash
#   @nomeCadastro = '#register_name'
#   @emailCadastro = '#register_email'
#   @senhaCadastro = '#register_password'
#   @btnCadastro = '.btn.btn-accent'   

#   find(@nomeCadastro).send_keys @tabela['nome']
#   find(@emailCadastro).send_keys @tabela['email']
#   find(@senhaCadastro).send_keys @tabela['senha']
#   find(@btnCadastro).click
#   sleep(10)
# end                                                                                                       
                                                                                                          
# Então("visualizo a pagina de tarefas") do                                                                 
#   expect(page).to have_css('.profile-address')                            
# end  

# Então("visualizo a mensagem de {string}") do |string|
#   expect('.panel-body'[0].text).to eql string
# end