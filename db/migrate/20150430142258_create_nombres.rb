class CreateNombres < ActiveRecord::Migration
  def change
    create_table :nombres do |t|
      t.string :sesion1
      t.string :sesion2
      t.string :sesion3
      t.string :sesion4
      t.string :sesion5
    end
  end
end
