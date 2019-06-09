# encoding: utf-8
# language: pt

Funcionalidade: Registrar Usuario

Cenário: Preencher todos os campos corretamente e salvar com sucesso
    Dado que eu navego para a pagina de registro
    E preencho usuario com "teste@teste.com"
    E preencho senha e a confirmação da senha com "teste1"
    Quando na tela de registro eu clicar no botão "Registrar"
    Então devo ver a tela de criação de reclamações e a mensagem "Sucesso! Bem vindo! Você foi cadastrado com sucesso."

