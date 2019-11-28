class CreateFornecedors < ActiveRecord::Migration[6.0]
  def change
    create_table :fornecedors do |t|
      t.integer :cnpj
      t.string :nome
      t.string :telefone
      t.string :endereco
      t.string :email

      t.timestamps
    end
  end
end
