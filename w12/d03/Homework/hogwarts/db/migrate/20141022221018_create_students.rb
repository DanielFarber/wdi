class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
    	t.string :name
    	t.integer :points
    	t.integer :house_id
    end
  end
end
