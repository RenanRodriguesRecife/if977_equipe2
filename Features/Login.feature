# language: pt

Funcionalidade: login Funcionalidade
    Funcionalidade para login

Cenário: Login com email e senha correto
    Dado Que eu navego para pagina de Login
    E Eu digito as credenciais
    | email | senha |
    | loginteste@teste.com | testeteste |  
    Quando Eu clico no botão Log In
    Então  Eu devo ver a tela inicial

