class AddFinishToPlans < ActiveRecord::Migration[6.1]
  def change
    add_column :plans, :finish, :date
  end
end
