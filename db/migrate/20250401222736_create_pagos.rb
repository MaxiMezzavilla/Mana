class CreatePagos < ActiveRecord::Migration[8.0]
  def change
    create_table :pagos do |t|
      t.references :factura, null: false, foreign_key: true
      t.decimal :monto
      t.date :fecha
      t.string :metodo_pago

      t.timestamps
    end
  end
end
