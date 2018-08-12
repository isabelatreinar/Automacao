
class Navbar < SitePrism::Section
    
    element :btn_login, 'a[href="/Shopping/Conta/Login"]'
    element :nome_logado, '.user-info span[class="nome-usuario"]'
    element :btn_sair, 'a[href="/Shopping/Conta/Login/Sair"]'
    element :btn_minha_conta, 'a[href="/Shopping/Conta/Usuario/MinhaConta"]'
    
    
    def aguardar_informacoes_de_usuario
        wait_for_nome_logado
    end

    def deslogar
        btn_sair.click
    end
    
end

class MenuDadosCliente < SitePrism::Section

    element :btn_meus_enderecos, 'a[href="/Shopping/Conta/Usuario/MeusEnderecos"]'
    element :btn_inf_conta, 'a[href="/Shopping/Conta/Usuario/MinhaConta"]'

end


