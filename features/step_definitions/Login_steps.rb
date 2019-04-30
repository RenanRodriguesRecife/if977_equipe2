#encoding: utf-8

Dado("que eu tenha registro") do
    visit("/users/sign_up")
    fill_in("user_email", :with => "teste@teste.com")
    fill_in("user_password", :with => "teste1")
    fill_in("user_password_confirmation", :with => "teste1")
    click_button("Sign up")
end

Dado("que eu navego para a pagina de login") do
    visit("/users/sign_in")
end

E("preencho o usuario com {string}") do |email|
    fill_in("user_email", :with => email)
end

E("preencho a senha com {string}") do |password|
    fill_in("user_password", :with => password)
end

Quando("na tela de login eu clicar no botão {string}") do |button|
    click_button(button)
end

Então("devo ver a tela de criação de reclamações e a mensagem {string}") do |mensagem|
    page.has_content?(mensagem)
end
