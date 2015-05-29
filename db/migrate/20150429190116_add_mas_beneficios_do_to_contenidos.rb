class AddMasBeneficiosDoToContenidos < ActiveRecord::Migration
  def change
    add_column :contenidos, :masBeneficios, :text
  end
end
