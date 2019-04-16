class CreatePathmaps < ActiveRecord::Migration
  def change
    create_table :pathmaps do |t|
      t.string :uripath
      t.string :filepath

      t.timestamps null: false
    end
  end
end
