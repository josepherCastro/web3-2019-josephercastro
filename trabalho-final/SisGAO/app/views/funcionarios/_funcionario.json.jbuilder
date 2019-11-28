json.extract! funcionario, :id, :matricula, :nome, :setor, :cargo, :created_at, :updated_at
json.url funcionario_url(funcionario, format: :json)
