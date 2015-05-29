# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150522215709) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true, using: :btree
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree

  create_table "categoria", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ckeditor_assets", force: true do |t|
    t.string   "data_file_name",               null: false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.integer  "assetable_id"
    t.string   "assetable_type",    limit: 30
    t.string   "type",              limit: 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ckeditor_assets", ["assetable_type", "assetable_id"], name: "idx_ckeditor_assetable", using: :btree
  add_index "ckeditor_assets", ["assetable_type", "type", "assetable_id"], name: "idx_ckeditor_assetable_type", using: :btree

  create_table "contacts", force: true do |t|
    t.string   "nombre"
    t.string   "correo"
    t.text     "mensaje"
    t.text     "ciudad"
    t.string   "taller"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contenidos", force: true do |t|
    t.text     "descripcion"
    t.string   "fondoInicio_file_name"
    t.string   "fondoInicio_content_type"
    t.integer  "fondoInicio_file_size"
    t.datetime "fondoInicio_updated_at"
    t.string   "slogan1"
    t.string   "frase1"
    t.text     "convenios"
    t.text     "beneficios"
    t.text     "respaldo"
    t.string   "imgConvenios_file_name"
    t.string   "imgConvenios_content_type"
    t.integer  "imgConvenios_file_size"
    t.datetime "imgConvenios_updated_at"
    t.string   "imgBeneficios_file_name"
    t.string   "imgBeneficios_content_type"
    t.integer  "imgBeneficios_file_size"
    t.datetime "imgBeneficios_updated_at"
    t.string   "imgRespalfo_file_name"
    t.string   "imgRespalfo_content_type"
    t.integer  "imgRespalfo_file_size"
    t.datetime "imgRespalfo_updated_at"
    t.string   "fondoBeneficios_file_name"
    t.string   "fondoBeneficios_content_type"
    t.integer  "fondoBeneficios_file_size"
    t.datetime "fondoBeneficios_updated_at"
    t.string   "slogan2"
    t.string   "frase2"
    t.text     "formacion"
    t.text     "marketing"
    t.text     "informacion"
    t.string   "imagen_file_name"
    t.string   "imagen_content_type"
    t.integer  "imagen_file_size"
    t.datetime "imagen_updated_at"
    t.text     "frase3"
    t.string   "imgFormacion_file_name"
    t.string   "imgFormacion_content_type"
    t.integer  "imgFormacion_file_size"
    t.datetime "imgFormacion_updated_at"
    t.string   "imgMarketing_file_name"
    t.string   "imgMarketing_content_type"
    t.integer  "imgMarketing_file_size"
    t.datetime "imgMarketing_updated_at"
    t.string   "imgInfomacion_file_name"
    t.string   "imgInfomacion_content_type"
    t.integer  "imgInfomacion_file_size"
    t.datetime "imgInfomacion_updated_at"
    t.string   "imgImagen_file_name"
    t.string   "imgImagen_content_type"
    t.integer  "imgImagen_file_size"
    t.datetime "imgImagen_updated_at"
    t.string   "fondoUnete_file_name"
    t.string   "fondoUnete_content_type"
    t.integer  "fondoUnete_file_size"
    t.datetime "fondoUnete_updated_at"
    t.string   "slogan3"
    t.string   "frase4"
    t.string   "fondoTalleres_file_name"
    t.string   "fondoTalleres_content_type"
    t.integer  "fondoTalleres_file_size"
    t.datetime "fondoTalleres_updated_at"
    t.string   "slogan4"
    t.string   "frase5"
    t.string   "fondoNoticias_file_name"
    t.string   "fondoNoticias_content_type"
    t.integer  "fondoNoticias_file_size"
    t.datetime "fondoNoticias_updated_at"
    t.string   "slogan5"
    t.string   "frase6"
    t.string   "frase7"
    t.string   "correo"
    t.string   "telefono"
    t.string   "facebook"
    t.string   "twitter"
    t.string   "google"
    t.string   "fondoContacto_file_name"
    t.string   "fondoContacto_content_type"
    t.integer  "fondoContacto_file_size"
    t.datetime "fondoContacto_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
    t.string   "logoAdmin_file_name"
    t.string   "logoAdmin_content_type"
    t.integer  "logoAdmin_file_size"
    t.datetime "logoAdmin_updated_at"
    t.string   "imagenEurotaller"
    t.text     "masRespaldo"
    t.text     "masBeneficios"
    t.text     "fraseInicio"
    t.text     "nosotros"
  end

  create_table "convenios", force: true do |t|
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
    t.text     "descripcion"
    t.string   "fecha"
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "detalles"
  end

  create_table "miembros", force: true do |t|
    t.string   "nombreTaller"
    t.string   "nombreContacto"
    t.string   "telefono"
    t.string   "direccion"
    t.string   "comentario"
    t.string   "mapa"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "ciudad"
    t.string   "correo"
    t.string   "fax"
    t.text     "horario"
    t.string   "marcaVehiculo"
    t.string   "pagina"
    t.string   "grua"
    t.string   "cita"
    t.string   "fotoTaller_file_name"
    t.string   "fotoTaller_content_type"
    t.integer  "fotoTaller_file_size"
    t.datetime "fotoTaller_updated_at"
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
    t.string   "foto1_file_name"
    t.string   "foto1_content_type"
    t.integer  "foto1_file_size"
    t.datetime "foto1_updated_at"
    t.string   "foto2_file_name"
    t.string   "foto2_content_type"
    t.integer  "foto2_file_size"
    t.datetime "foto2_updated_at"
    t.string   "foto3_file_name"
    t.string   "foto3_content_type"
    t.integer  "foto3_file_size"
    t.datetime "foto3_updated_at"
    t.string   "foto4_file_name"
    t.string   "foto4_content_type"
    t.integer  "foto4_file_size"
    t.datetime "foto4_updated_at"
  end

  create_table "nombres", force: true do |t|
    t.string "sesion1"
    t.string "sesion2"
    t.string "sesion3"
    t.string "sesion4"
    t.string "sesion5"
  end

  create_table "noticia", force: true do |t|
    t.string   "titulo"
    t.text     "contenido"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "categoria"
    t.text     "descripcion"
  end

end
