class DropPathmapsTable < ActiveRecord::Migration
  def change
  	def up
	  drop_table :users
	end

	def down
	  fail ActiveRecord::IrreversibleMigration
	end
  end
end
