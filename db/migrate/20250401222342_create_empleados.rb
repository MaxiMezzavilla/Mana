class CreateEmpleados < ActiveRecord::Migration[8.0]
  def change
    create_table :empleados do |t|
      t.string :nombre
      t.string :email
      t.string :telefono
      t.string :cargo
      t.decimal :salario

      t.timestamps
    end
  end
end
