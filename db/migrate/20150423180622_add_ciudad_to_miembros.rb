class AddCiudadToMiembros < ActiveRecord::Migration
  def change
  	add_column :miembros, :ciudad, :string
  end
end
