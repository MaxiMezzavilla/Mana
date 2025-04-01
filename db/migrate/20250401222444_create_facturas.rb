class CreateFacturas < ActiveRecord::Migration[8.0]
  def change
    create_table :facturas do |t|
      t.string :numero
      t.references :cliente, null: false, foreign_key: true
      t.decimal :total
      t.date :fecha

      t.timestamps
    end
  end
end
