#language pt

Funcionalidade: Configurar produto
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

Dado que eu esteja logado como cliente na EBAC-SHOP
Quando eu configurar o item de acordo com meu tamanho e gosto
E escolher a quantidade
Então deve inserir os itens no carrinho

Contexto:
Dado que eu esteja logado como cliente na EBAC-SHOP

Cenário: Configuração de produto sem especificar quantidade
Quando eu selecionar a cor e o tamanho
E deixar o campo da quantidade de ites em branco
Então deve exibir uma mensagem de erro "É necessário especificar a quantidade!"

Cenário: Configuração de produto sem especificar cor
Quando eu selecionar a quantidade e o tamanho
E deixar o campo da cor em branco
Então deve exibir uma mensagem de erro "É necessário especificar a cor!"

Cenário: Configuração de produto sem especificar tamanho
Quando eu selecionar a quantidade e a cor
E deixar o campo do tamanho em branco
Então deve exibir uma mensagem de erro "É necessário especificar o tamanho!"

Cenário: Configuração de produto com mais de 10 itens
Quando eu selecionar a cor e o tamanho
E configurar a quantidade de itens para 11
Então deve exibir uma mensagem de erro "O número máximo de itens iguais por compra é 10!"

Cenário: Limpar a configuração do produto
Quando eu selecionar cor, tamanho e quantidade
E clicar no botão "Limpar"
Então deve voltar ao estado original
