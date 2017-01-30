class CreateIpCommittees < ActiveRecord::Migration
  def change
    create_table :ip_committees do |t|
      t.string :email
      t.string :userId
      t.timestamps null: false
    end
  end
end
