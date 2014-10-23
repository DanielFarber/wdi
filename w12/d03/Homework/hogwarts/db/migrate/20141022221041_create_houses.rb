class CreateHouses < ActiveRecord::Migration
  def change
    create_table :houses do |t|
    	t.string :name
    	t.integer :hogwart_id
    end
  end
end
