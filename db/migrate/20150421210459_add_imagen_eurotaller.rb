class AddImagenEurotaller < ActiveRecord::Migration
  def change
  	add_column :contenidos, :imagenEurotaller, :string
  end
end
