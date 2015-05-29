class AddDescripcionToNoticia < ActiveRecord::Migration
  def change
    add_column :noticia, :descripcion, :text
  end
end
