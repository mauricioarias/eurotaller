class CreateMiembros < ActiveRecord::Migration
  def change
    create_table :miembros do |t|
      t.string :nombreTaller
      t.string :nombreContacto
      t.float :telefono
      t.string :direccion
      t.string :comentario
      t.string :mapa

      t.timestamps
    end
  end
end
