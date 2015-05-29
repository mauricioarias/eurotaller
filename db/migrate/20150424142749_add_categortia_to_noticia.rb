class AddCategortiaToNoticia < ActiveRecord::Migration
  def change
  	add_column :noticia, :categoria, :string
  end
end
