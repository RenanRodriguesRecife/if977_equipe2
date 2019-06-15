# encoding: utf-8
# language: pt

Funcionalidade: Criar reclamação

Contexto:
   Dado que eu tenha registro
    E o login seja "teste@teste.com"
    E a senha seja "teste1"

Cenário: Registrar todos os campos corretos e criar reclamação
    Dado que eu navego para a pagina de criação de reclamações
    E preencho o Título com "Rampa quebrada"
    E preencho o Local com "Jaboatão dos Guararapes"
    E preencho a Descrição com "Rampa quebrada na pracinha de Jaboatão"
    E preencho a Latitude com "-8.1843952"
    E Preencho a Longitude com "-34.98567143"
    E preencho a data com "2019-06-09 20:25:00 UTC"
    Quando na tela de criação de reclamações eu clicar no botão "Criar Reclamação"
    Então devo ver na tela a mensagem "Sucesso! Reclamacao criado com sucesso."