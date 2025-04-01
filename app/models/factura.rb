class Factura < ApplicationRecord
  belongs_to :cliente
  has_many :pago
end
