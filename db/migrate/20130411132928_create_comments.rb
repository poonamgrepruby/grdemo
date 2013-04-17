class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :commentable, :polymorphic => true
      t.string :content
      t.references :user
      
      t.timestamps
    end
  end
end
