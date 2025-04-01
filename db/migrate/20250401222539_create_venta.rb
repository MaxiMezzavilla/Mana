class CreateVenta < ActiveRecord::Migration[8.0]
  def change
    create_table :venta do |t|
      t.references :cliente, null: false, foreign_key: true
      t.references :empleado, null: false, foreign_key: true
      t.decimal :total
      t.date :fecha

      t.timestamps
    end
  end
end
