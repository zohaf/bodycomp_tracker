class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.text :email
      t.string :password_digest
      t.boolean :admin

      t.text :nickname
      t.binary :image
      
      t.date :dob
      t.text :sex
      t.text :height

      t.integer :logbook_id
      t.integer :phase_id

      t.timestamps
    end
  end
end
