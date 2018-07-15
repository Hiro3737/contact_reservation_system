class AddAttendances2ToAttendances < ActiveRecord::Migration[5.0]
  def change
    add_column :attendances, :day, :date
  end
end
