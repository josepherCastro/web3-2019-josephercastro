class CreatePrivilegios < ActiveRecord::Migration[6.0]
  def change
    create_table :privilegios do |t|
      t.integer :tipo
      t.string :descricao

      t.timestamps
    end
  end
end
