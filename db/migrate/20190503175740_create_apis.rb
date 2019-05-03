class CreateApis < ActiveRecord::Migration
  def change
    create_table :apis do |t|
      t.string :uripath
      t.string :filepath

      t.timestamps null: false
    end
  end
end
