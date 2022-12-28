            #language: pt

            Funcionalidade: Tela de login
            Como cliente da EBAC-SHOP
            Quero fazer o login na plataforma
            Para visualizar meus pedidos

            Cenário: Autenticação com dados válidos
            Dado que eu acesse a página de login da EBAC-SHOP
            Quando eu digitar o usuário "lucas2022@gmail.com"
            E a senha "nacional@2023"
            Então deve exibir a tela de checkout

            Cenário: Autenticação com dados inválidos
            Dado que eu acesse a página de login da EBAC-SHOP
            Quando eu digitar o usuário "lucas2022@gmail.com"
            E a senha "na123@"
            Então deve exibir uma mensagem de alerta "Usuário ou senha inválidos"

            Contexto: Dado que eu acesse a página de login da EBAC-SHOP

            Cenário: Autenticação com dados válidos
            Quando eu digitar o usuário "lucas2022@gmail.com"
            E a senha "nacional@2023"
            Então deve exibir a tela de checkout

            Cenário: Autenticação com dados inválidos
            Quando eu digitar o usuário "lucas2022@gmail.com"
            E a senha "na123@"
            Então deve exibir uma mensagem de alerta "Usuário ou senha inválidos"

            Esquema do Cenário: Autenticar múltiplos usuários
            Quando eu digitar o <usuário>
            E a <senha>
            Então deve exibir a <mensagem>

            Exemplos:
            | Usuário               | senha           | mensagem                     |
            | "lucas2022@gmail.com" | "nacional@2023" | "Tela de checkout"           |
            | "lucas2022@gmail.com" | "nac123@"       | "Usuário ou senha inválidos" |
