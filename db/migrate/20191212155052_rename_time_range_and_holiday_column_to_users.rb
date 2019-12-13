class RenameTimeRangeAndHolidayColumnToUsers < ActiveRecord::Migration[5.1]
  def change
    rename_column :users, :time_range, :time_range_from
    rename_column :users, :holiday, :holiday_from
  end
end
