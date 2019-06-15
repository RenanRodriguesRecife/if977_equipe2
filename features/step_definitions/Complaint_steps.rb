Dado("que eu esteja logado") do
    visit("/users/sign_in")
end

E("seja digitado no login {string}") do |email|
    fill_in("user_email", :with => email)
    
end


E("seja digitado na senha {string}") do |password|
    fill_in("user_password", :with => password)
    click_button("Entrar")
    
end

Dado("que eu navego para a pagina de criação de reclamações") do
    visit("/complaints/new")
end


E("preencho o Título com {string}") do |title|
    fill_in("complaint_title", :with => title)
end

E("preencho o Local com {string}") do |location|
    fill_in("complaint_name", :with => location)
end

E("preencho a Descrição com {string}") do |description|
    fill_in("complaint_description", :with => description)
end

E("preencho a Latitude com {string}") do |latitude|
    fill_in("complaint[latitude]", :with => latitude)
end

E("Preencho a Longitude com {string}") do |longitude|
    fill_in("complaint[longitude]", :with => longitude)
end

E("preencho a data com {string}") do |date|
    fill_in("data", :with => date)
end

Quando("na tela de criação de reclamações eu clicar no botão {string}") do |button|
    click_button(button)
end

Então("devo ver na tela a mensagem {string}") do |mensagem|
    page.has_content?(mensagem)
end