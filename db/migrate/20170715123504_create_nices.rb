class CreateNices < ActiveRecord::Migration[5.1]
  def change
    create_table :nices do |t|
      t.string :name

      t.timestamps
    end
  end
end
