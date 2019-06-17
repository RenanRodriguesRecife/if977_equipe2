# encoding: utf-8
# language: pt

Funcionalidade: Registrar Usuario

Cenário: Preencher um email existente e tentar salvar
    Dado que eu navego para a pagina de registro
    E preencho usuario com "teste@teste.com"
    E preencho senha e a confirmação da senha com "teste1"
    Quando na tela de registro eu clicar no botão "Registrar"
    Então devo ver a tela de criação de reclamações e a mensagem "Email has already been taken"


Cenário: Preencher uma senha com menos de 6 caracterese tentar salvar
    Dado que eu navego para a pagina de registro
    E preencho usuario com "teste123@teste.com"
    E preencho senha e a confirmação da senha com "123"
    Quando na tela de registro eu clicar no botão "Registrar"
    Então devo ver a tela de criação de reclamações e a mensagem "Password is too short (minimum is 6 characters)"
