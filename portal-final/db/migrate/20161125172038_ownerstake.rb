class Ownerstake < ActiveRecord::Migration
  def change
  	add_column :owners, :OwnerStakepercentage, :double
  end
end
