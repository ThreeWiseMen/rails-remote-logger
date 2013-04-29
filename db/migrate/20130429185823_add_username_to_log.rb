class AddUsernameToLog < ActiveRecord::Migration
  def change
    add_column :logs, :username, :string
  end
end
