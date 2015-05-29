class CreateConvenios < ActiveRecord::Migration
  def change
    create_table :convenios do |t|
      t.attachment :logo 
      t.text :descripcion
      t.string :fecha
      t.string :nombre

      t.timestamps
    end
  end
end
