# encoding: utf-8
# language: pt

Funcionalidade: Logar com usuario e senha

Contexto:
    Dado que eu tenha registro

Cenário: Login com email e senha corretos
    Dado que eu navego para a pagina de login
    E preencho o usuario com "teste@teste.com"
    E preencho a senha com "teste1"
    Quando na tela de login eu clicar no botão "Log in"
    Então devo ver a tela de criação de reclamações e a mensagem "Signed in successfully."

