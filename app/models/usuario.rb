class Usuario < ApplicationRecord
  has_secure_password
  enum rol: { admin: "admin", empleado: "empleado"}
end
