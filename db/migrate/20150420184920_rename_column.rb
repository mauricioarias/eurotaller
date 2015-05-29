class RenameColumn < ActiveRecord::Migration
  def up
  	 rename_column :contenidos, :frace5, :frase5
  end
end
