class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
    	t.string :nombre
    	t.string :correo
    	t.text :mensaje
    	t.text :ciudad
    	t.string :taller

      t.timestamps
    end
  end
end
