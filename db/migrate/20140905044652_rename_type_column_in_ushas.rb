class RenameTypeColumnInUshas < ActiveRecord::Migration
  def up
  	rename_column :ushas, :type, :food_type
  end

  def down
  	rename_column :ushas, :food_type, :type
  end
end
