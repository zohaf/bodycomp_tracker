class CreateLogbooks < ActiveRecord::Migration[5.2]
  def change
    create_table :logbooks do |t|
      t.integer :user_id
      t.integer :phase_id

      t.date :entry_date
      t.text :phase

      t.numeric :overall_weight
      t.numeric :muscle_weight
      t.numeric :fat_weight
      t.numeric :fat_percentage

      t.text :image

      t.numeric :calorie_intake
      t.text :macros_overall
      t.text :macros_protein
      t.text :macros_carbs
      t.text :macros_fat
      
      t.text :cardio
      t.text :period
      t.text :notes/observasions

      t.timestamps
    end
  end
end
