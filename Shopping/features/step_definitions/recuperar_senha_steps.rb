
Dado('que acessei a pagina de recuperacao de senha') do
  visit('/Conta/Login')
  @login.btn_fecha_popup.click
end

Quando('solicito a recuperacao para o cpf {string} e e-mail {string}') do |cpf, email|
  @login.recupera_senha(cpf, email)
end
  
Então('o site exibe a mensagem de confirmacao de envio de senha {string}') do |mensagem|
  
    page.find(:css, '.toast-message') #vai esperar até que o elemento seja encontrado, ele espera o tempo definido no trecho seguinte do arquivo env.rb: @wait = Selenium::WebDriver::Wait.new(:timeout => 45)
  
    #wait('.toast-message', visible: true)
  #wait_for('.toast-message', visible: true)
  expect(page).to have_css('.toast-message', text: mensagem)
  
end