Dado ("Eu navego para pagina de Login") do
    visit('/users/sign_in')
end

Dado("Eu digito as credenciais") do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  data = table.raw
end
