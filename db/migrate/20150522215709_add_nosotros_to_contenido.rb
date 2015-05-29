class AddNosotrosToContenido < ActiveRecord::Migration
  def change
    add_column :contenidos, :nosotros, :text
  end
end
