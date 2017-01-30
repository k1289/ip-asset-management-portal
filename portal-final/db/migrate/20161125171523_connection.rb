class Connection < ActiveRecord::Migration
  def change
  	add_reference :owners, :ipasset, index: true
  end
end
