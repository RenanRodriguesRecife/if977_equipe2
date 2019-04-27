json.extract! person, :id, :nome, :endereco, :cpf, :created_at, :updated_at
json.url person_url(person, format: :json)
