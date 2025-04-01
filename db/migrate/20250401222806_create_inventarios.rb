class CreateInventarios < ActiveRecord::Migration[8.0]
  def change
    create_table :inventarios do |t|
      t.references :producto, null: false, foreign_key: true
      t.integer :cantidad

      t.timestamps
    end
  end
end
