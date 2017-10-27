class ChangeCategoriesColumnName < ActiveRecord::Migration
  def change
  	change_table :categories do |t|
  	  t.rename :name, :name_en
  	end
  end
end
