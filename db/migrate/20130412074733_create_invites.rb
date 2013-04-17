class CreateInvites < ActiveRecord::Migration
  def change
    create_table :invites do |t|
      t.references :user
     
      t.timestamps
    end
  end
end
