class CreateFuncionarios < ActiveRecord::Migration[6.0]
  def change
    create_table :funcionarios do |t|
      t.integer :matricula
      t.string :nome
      t.string :setor
      t.integer :cargo

      t.timestamps
    end
  end
end
