# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 2025_04_01_222952) do
  create_table "clientes", force: :cascade do |t|
    t.string "nombre"
    t.string "email"
    t.string "telefono"
    t.text "direccion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "empleados", force: :cascade do |t|
    t.string "nombre"
    t.string "email"
    t.string "telefono"
    t.string "cargo"
    t.decimal "salario"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "facturas", force: :cascade do |t|
    t.string "numero"
    t.integer "cliente_id", null: false
    t.decimal "total"
    t.date "fecha"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cliente_id"], name: "index_facturas_on_cliente_id"
  end

  create_table "inventarios", force: :cascade do |t|
    t.integer "producto_id", null: false
    t.integer "cantidad"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["producto_id"], name: "index_inventarios_on_producto_id"
  end

  create_table "pagos", force: :cascade do |t|
    t.integer "factura_id", null: false
    t.decimal "monto"
    t.date "fecha"
    t.string "metodo_pago"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["factura_id"], name: "index_pagos_on_factura_id"
  end

  create_table "productos", force: :cascade do |t|
    t.string "nombre"
    t.text "descripcion"
    t.decimal "precio"
    t.integer "cantidad_dispo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "proveedors", force: :cascade do |t|
    t.string "nombre"
    t.string "email"
    t.string "telefono"
    t.text "direccion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "nombre"
    t.string "email"
    t.string "password_digest"
    t.string "rol"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "venta", force: :cascade do |t|
    t.integer "cliente_id", null: false
    t.integer "empleado_id", null: false
    t.decimal "total"
    t.date "fecha"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cliente_id"], name: "index_venta_on_cliente_id"
    t.index ["empleado_id"], name: "index_venta_on_empleado_id"
  end

  add_foreign_key "facturas", "clientes"
  add_foreign_key "inventarios", "productos"
  add_foreign_key "pagos", "facturas"
  add_foreign_key "venta", "clientes"
  add_foreign_key "venta", "empleados"
end
