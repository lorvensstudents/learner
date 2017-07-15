class CreateLearners < ActiveRecord::Migration[5.1]
  def change
    create_table :learners do |t|
      t.string :name
      t.string :technology
      t.string :duration
      t.integer :fee

      t.timestamps
    end
  end
end
