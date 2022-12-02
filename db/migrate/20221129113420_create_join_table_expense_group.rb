class CreateJoinTableExpenseGroup < ActiveRecord::Migration[7.0]
  def change
    create_join_table :expenses, :groups do |t|
      
    end
  end
end
