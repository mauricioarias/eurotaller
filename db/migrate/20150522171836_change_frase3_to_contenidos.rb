class ChangeFrase3ToContenidos < ActiveRecord::Migration
  def change
  	change_column :contenidos, :frase3, :text
  end
end
