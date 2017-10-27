class ChangeProductsColumnsTitleDescription < ActiveRecord::Migration
  def change
  	change_table :products do |t|
  	  t.rename :title, :title_en
  	  t.rename :description, :description_en
  	end
  end
end
