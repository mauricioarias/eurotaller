class AddFotosToMiembros < ActiveRecord::Migration
  def change
  	  add_attachment :miembros, :foto1
  	  add_attachment :miembros, :foto2
  	  add_attachment :miembros, :foto3
  	  add_attachment :miembros, :foto4
  end
end
