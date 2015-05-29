class AddLogoAndLogoAdminFromContenidos < ActiveRecord::Migration
  def change
    add_attachment :contenidos, :logo
    add_attachment :contenidos, :logoAdmin
  end
end
