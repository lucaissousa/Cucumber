#language: pt

Funcionalidade: Configurar produto
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
Depois escolher a quantidade
Para depois inserir no carrinho

Cenário: Inserir produto no carrinho
Dado que eu escolha cor, tamanho
E quantidade >= a 10 
Quando eu clicar em comprar
Então devo ser redirecionado ao carrinho

Cenário: Inserir produto no carrinho
Dado que eu escolha, cor, tamanho 
E quantidade superior a dez produtos
Quando clicar em comprar
Então deve aparecer uma mensagem de erro "quantidade de produtos superior ao permitido por venda"

Cenário: Limpar preferências de produto
Dado que eu selecione, cor, tamanho e Quantidade
E queira escolher nova quantidade, cor e tamanho
Quando clicar em <limpar>
Então deve retornar às configurações originais do produto