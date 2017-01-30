class Limiting < ActiveRecord::Migration
  def change
  	change_column :owners, :IIITBstakepercent, :double, :in => 20..100
  end
end
