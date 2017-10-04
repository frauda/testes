json.extract! pessoa, :id, :nome, :cpf, :telefone, :email, :endereco, :numero, :bairro, :cep, :cidade_id, :created_at, :updated_at
json.url pessoa_url(pessoa, format: :json)
