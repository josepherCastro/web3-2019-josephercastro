class CreateRetiradas < ActiveRecord::Migration[6.0]
  def change
    create_table :retiradas do |t|
      t.float :quantidade
      t.references :Material, null: false, foreign_key: true
      t.references :Funcionario, null: false, foreign_key: true

      t.timestamps
    end
  end
end
