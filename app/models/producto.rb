class Producto < ApplicationRecord
  belongs_to :proveedor, optional: true
  has_one :inventario
end
