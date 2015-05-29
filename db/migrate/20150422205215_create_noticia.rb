class CreateNoticia < ActiveRecord::Migration
  def change
    create_table :noticia do |t|
      t.string :titulo
      t.text :contenido
      t.attachment :image

      t.timestamps
    end
  end
end