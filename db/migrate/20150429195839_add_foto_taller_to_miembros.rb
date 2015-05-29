class AddFotoTallerToMiembros < ActiveRecord::Migration
  def change
    add_attachment :miembros, :fotoTaller
  end
end
