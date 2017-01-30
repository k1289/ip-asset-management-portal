class AddAttributesToIpassets < ActiveRecord::Migration
  def change
	add_column :ipassets, :validation, :integer, :default => 0
  end
end
