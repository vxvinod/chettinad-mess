class CreateUshas < ActiveRecord::Migration
  def change
    create_table :ushas do |t|
      t.string :title
      t.string :type
      t.string :category
      t.string :video
      t.text :recipe
      t.text :explanation

      t.timestamps
    end
  end
end
