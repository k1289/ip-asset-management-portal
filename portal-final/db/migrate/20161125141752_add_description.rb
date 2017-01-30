class AddDescription < ActiveRecord::Migration
  def change
  	add_column :ipassets, :Description, :string 
  end
end
