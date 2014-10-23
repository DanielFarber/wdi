class CreateHogwarts < ActiveRecord::Migration
  def change
    create_table :hogwarts do |t|
    	t.string :name
    end
  end
end
