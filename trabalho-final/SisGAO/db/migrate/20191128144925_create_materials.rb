class CreateMaterials < ActiveRecord::Migration[6.0]
  def change
    create_table :materials do |t|
      t.string :nome
      t.float :quantidadeMinima
      t.float :quantidade
      t.boolean :devolutivo
      t.references :UnidadeMedida, null: false, foreign_key: true
      t.references :Fornecedor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
