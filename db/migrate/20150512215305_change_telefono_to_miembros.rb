class ChangeTelefonoToMiembros < ActiveRecord::Migration
  def change
  	change_column :miembros, :telefono, :string
  end
end
