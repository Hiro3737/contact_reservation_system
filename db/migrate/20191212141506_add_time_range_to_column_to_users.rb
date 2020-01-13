class AddTimeRangeToColumnToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :time_range_to, :time
    add_column :users, :holiday_to, :time
    change_column :users, :time_range, :time
    change_column :users, :holiday, :time
  end
end
