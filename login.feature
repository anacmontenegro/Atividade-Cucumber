            #language pt

            Funcionalidade: Login
            Como cliente da EBAC-SHOP
            Quero fazer o login na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que eu tenha itens no carrinho

            Cenário: Dados válidos
            Quando eu digitar o usuário "joao@ebac.com.br"
            E a senha "senha@123"
            Então deve ser direcionado para a tela de checkout

            Cenário: Dados inválidos
            Quando eu digitar o usuário "an@ebac.com.br"
            E a senha "XXYY"
            Então deve exibir uma mensagem de erro "Usuário ou senha inválidos!"

            Esquema do Cenário: Autenticar múltiplos usuários
            Quando eu digitar o <usuario>
            E a <senha>
            Então deve ser direcionado para a tela de checkout

            Exemplos:
            | "joao@ebac.com.br"   | "senha@123"    |
            | "carlos@ebac.com.br" | "minhasenha1@" |
            | "maria@ebac.com.br"  | "senha@456"    |
