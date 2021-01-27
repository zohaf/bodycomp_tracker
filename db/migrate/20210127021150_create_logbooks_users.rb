class CreateLogbooksUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :logbooks_users, id => false do |t|
      t.integer :logbook_id
      t.integer :user_id
    end
  end
end
