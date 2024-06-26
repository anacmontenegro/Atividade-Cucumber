            #language: pt

            Funcionalidade: Checkout
            Como cliente da EBAC-SHOP
            Quero concluir meu cadastro
            Para finalizar minha compra

            Dado que eu tenha itens no carrinho
            Quando eu preencher os campos de cadastro
            E clicar em finalizar a compra
            Então deve transferir para a página de pagamento

            Contexto:
            Dado que eu tenha itens no carrinho

            Cenário: Cadastro correto
            Quando eu digitar o nome "João"
            E o sobrenome "Silva"
            E o país "Brasil"
            E o endereço "Rua Verde 123"
            E a cidade "Irecê"
            E o CEP "44900-000"
            E o telefone "7499999999"
            E o email "joao@ebac.com.br"
            Então deve exibir a página de pagamento

            Cenário: E-mail com formato inválido
            Quando eu preencher os campos de cadastro
            E digitar um e-mail sem o símbolo @
            Então deve exibir a mensagem "Formato de e-mail inválido!"

            Cenário: Cadastro com campo vazio
            Quando eu preencher os campos de cadastro
            E deixar um dos campos obrigatórios em branco
            Então deve exibir a mensagem "É preciso preencher todos os campos obrigatórios!"

            Esquema do Cenário: Concluir cadastro
            Quando eu preencher o <nome>
            E o <sobrenome>
            E o <pais>
            E o <endereco>
            E a <cidade>
            E o <cep>
            E o <telefone>
            E o <email>
            Então deve exbir a página de pagamento
            | "José"  | "Santos"   | "Brasil" | "Rua Azul 123"    | "Irecê" | "44900-000" | "7499999994" | "jose@ebac.com.br"  |
            | "Maria" | "Oliveira" | "Brasil" | "Rua Amarela 123" | "Irecê" | "44900-000" | "7499999998" | "maria@ebac.com.br" |
