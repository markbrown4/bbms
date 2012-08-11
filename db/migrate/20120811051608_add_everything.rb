class AddEverything < ActiveRecord::Migration
  def change
    add_column :users, :avatar, :string, :default => 'avatar.png'
    add_column :users, :name, :string
    
    create_table :threads do |t|
      t.string :subject
      
      t.timestamps
    end
    
    create_table :messages do |t|
      t.text :body
      t.references :thread
      t.references :user
      
      t.timestamps
    end
    
    create_table :subscription do |t|
      t.references :thread
      t.references :user
    end
    
    create_table :unread_messages do |t|
      t.references :message
      t.references :user
    end
    
  end
end
