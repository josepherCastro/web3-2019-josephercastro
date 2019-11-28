class CreateDevolucaos < ActiveRecord::Migration[6.0]
  def change
    create_table :devolucaos do |t|
      t.float :quantidade
      t.references :Retirada, null: false, foreign_key: true

      t.timestamps
    end
  end
end
