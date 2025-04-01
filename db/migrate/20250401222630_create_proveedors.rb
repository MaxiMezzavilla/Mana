class CreateProveedors < ActiveRecord::Migration[8.0]
  def change
    create_table :proveedors do |t|
      t.string :nombre
      t.string :email
      t.string :telefono
      t.text :direccion

      t.timestamps
    end
  end
end
