class Ipasset < ActiveRecord::Migration
  def change
  	change_column :ipassets, :status, :string,:default => "uploaded"
  end
end
