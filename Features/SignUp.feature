# language: pt

Funcionalidade: Signup Funcionalidade
    Funcionalidade para registrar

Cenário: Registrar com email e senha corretos
    Dado Eu navego para pagina de Registro
    E Eu digito as credenciais
    | email | senha | senha_confirmacao |
    | teste@teste.com | teste1 | teste1 |
    Quando Eu clico no botão Sign Up
    Então Eu devo ver a tela de criação de reclamações

