class AddUserToThread < ActiveRecord::Migration
  def change
    add_column :message_threads, :user_id, :integer
  end
end
