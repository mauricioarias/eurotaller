class AddLogoToMiembros < ActiveRecord::Migration
  def change
    add_attachment :miembros, :logo
  end
end
