            #language: pt

            Funcionalidade: criar cadastro
            Como cliente EBAC-SHOP
            Quero concluir meu cadastro
            Para finalizar minha compra

            Cenário: criar cadastro com campos obrigatorios preenchidos
            Dado que eu acesse a tela de cadastro da EBAC-SHOP e preencha os campos com asterisco
            E não deixe nenhum campo obrigatório em branco
            Quando eu clicar em concluir cadastro
            Então deve aparecer uma mensagem de "Cadastro realizado com sucesso"

            Esquema do Cenário: criar cadastro com campos obrigatórios preenchidos
            Dado que eu preencha os campos com asterisco
            Quando tiver dados em <nome>;<sobrenome> <cidade> e <País>
            E clicar em concluir cadastro
            Então deve aparecer uma mensagem de "Cadastro Realizado com sucesso"

            | Nome    | Sobrenome | Cidade           | País      | Mensagem                               |
            | "Lucas" | "Sousa"   | "Patos de Minas" | "Brasil"  | "Cadastro realizado com sucesso"       |
            | "Lucas" | "     "   | "Patos de Minas" | "       " | "Campos obrighatórios não preenchidos" |

            Cenário: criar cadastro
            Dado que eu preencha o campo e-mail
            Quando eu digitar o e-mail "lucas2022.gmail.com"
            E clicar em concluir cadastro
            Então deve aparecer uma mensagem de erro "Formato de e-mail cadastrado não é válido"

            Esquema do Cenário: criar cadastro
            Quando eu digitar o <e-mail>
            E o <campo> for preenchido com o formato inválido
            Então deve aparecer uma <mensagem> de erro

            | E-mail                | Valor campo esperado | Mensagem                                    |
            | "lucas2022.gmail.com" | "zzzzz@zzz.zzz"      | "Formato de e-mail cadastrado não é válido" |
            | "lucas2022@"          | "zzzzz@zzz.zzz"      | "Formato de e-mail cadastrado não é válido" |

            Cenário: Criar cadastro
            Dado que eu acesse a tela de cadastro da EBAC-SHOP
            E não preencha nenhum campo
            Quando clicar em "concluir cadastro"
            Então deve aparecer uma mensagem de alerta "Nenhum campo foi preenchido"