# language: pt

Funcionalidade: login Funcionalidade
    Funcionalidade para login

Cenário: Login com email e senha correto
    Dado Eu navego para pagina de Login
    E Eu digito no Login
    | email | senha |
    | loginteste@teste.com | testeteste |  
    Quando Eu clico no botão Log In
    Então  Eu devo ver a tela inicial

