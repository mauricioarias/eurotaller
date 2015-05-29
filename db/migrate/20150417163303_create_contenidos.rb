class CreateContenidos < ActiveRecord::Migration
  def change
    create_table :contenidos do |t|
      t.text :descripcion
      t.attachment :fondoInicio
      t.string :slogan1
      t.string :frase1
      t.text :convenios
      t.text :beneficios
      t.text :respaldo
      t.attachment :imgConvenios
      t.attachment :imgBeneficios
      t.attachment :imgRespalfo
      t.attachment :fondoBeneficios
      t.string :slogan2
      t.string :frase2
      t.text :formacion
      t.text :marketing
      t.text :informacion
      t.attachment :imagen
      t.string :frase3
      t.attachment :imgFormacion
      t.attachment :imgMarketing
      t.attachment :imgInfomacion
      t.attachment :imgImagen
      t.attachment :fondoUnete
      t.string :slogan3
      t.string :frase4
      t.attachment :fondoTalleres
      t.string :slogan4
      t.string :frace5
      t.attachment :fondoNoticias
      t.string :slogan5
      t.string :frase6
      t.string :frase7
      t.string :correo
      t.string :telefono
      t.string :facebook
      t.string :twitter
      t.string :google
      t.attachment :fondoContacto

      t.timestamps
    end
  end
end
