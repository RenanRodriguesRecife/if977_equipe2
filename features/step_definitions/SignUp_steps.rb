#encoding: utf-8

Dado("que eu navego para a pagina de registro") do
    visit('/users/sign_up')
end

E("preencho usuario com {string}") do |email|
    fill_in("user_email", :with => email)
end

E("preencho senha e a confirmação da senha com {string}") do |password|
    fill_in("user_password", :with => password)
    fill_in("user_password_confirmation", :with => password)
end

Quando("na tela de registro eu clicar no botão {string}") do |button|
    click_on(button)
end

Então("depois da criação devo ver a tela de criação de reclamações e a mensagem {string}") do |mensagem|
    page.has_content?(mensagem)
end