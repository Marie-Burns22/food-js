class CreateEmissions < ActiveRecord::Migration[5.2]
  def change
    create_table :emissions do |t|
      t.integer :student_id
      t.integer :food_id
      t.float :amount
      t.string :unit
      t.string :source

      t.timestamps
    end
  end
end
