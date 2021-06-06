class CreatePlans < ActiveRecord::Migration[6.1]
  def change
    create_table :plans do |t|
      t.string :title
      t.date :start
      t.boolean :all_day
      t.text :memo

      t.timestamps
    end
  end
end
