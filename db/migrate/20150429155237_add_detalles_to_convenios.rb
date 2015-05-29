class AddDetallesToConvenios < ActiveRecord::Migration
  def change
    add_column :convenios, :detalles, :text
  end
end
