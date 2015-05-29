class AddMasRespaldoToContenidos < ActiveRecord::Migration
  def change
    add_column :contenidos, :masRespaldo, :text
  end
end
