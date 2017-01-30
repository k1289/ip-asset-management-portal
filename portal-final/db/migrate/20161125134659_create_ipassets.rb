class CreateIpassets < ActiveRecord::Migration
  def change
    create_table :ipassets do |t|
      t.string :name
      t.string :attachment
      t.string :status

      t.timestamps null: false
    end
  end
end
