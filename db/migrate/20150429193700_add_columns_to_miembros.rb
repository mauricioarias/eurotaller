class AddColumnsToMiembros < ActiveRecord::Migration
  def change
    add_column :miembros, :correo, :string
    add_column :miembros, :fax, :string
    add_column :miembros, :horario, :text
    add_column :miembros, :marcaVehiculo, :string
    add_column :miembros, :pagina, :string
    add_column :miembros, :grua, :string
    add_column :miembros, :cita, :string
  end
end
