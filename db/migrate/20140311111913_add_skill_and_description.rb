class AddSkillAndDescription < ActiveRecord::Migration
  def change
  	change_table :users do |t|
  		t.string :name
  		t.text :description
  		t.string :skill
  		t.integer :exp
  	end
  end
end
