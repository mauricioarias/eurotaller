class AddFraseInicioToContenidos < ActiveRecord::Migration
  def change
    add_column :contenidos, :fraseInicio, :text
  end
end
