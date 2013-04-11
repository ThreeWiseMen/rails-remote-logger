class CreateLogs < ActiveRecord::Migration
  def change
    create_table :logs do |t|
      t.string :useragent
      t.string :token
      t.string :message
      t.string :requested_ip
      t.string :host
      t.string :path

      t.timestamps
    end
  end
end
