class Collegestake < ActiveRecord::Migration
  def change
  	add_column :owners, :IIITBstakepercent, :double
  end
end
