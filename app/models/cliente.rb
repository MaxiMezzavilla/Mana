class Cliente < ApplicationRecord
  has_many :ventas
  has_many :facturas
end
