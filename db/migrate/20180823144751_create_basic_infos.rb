class CreateBasicInfos < ActiveRecord::Migration[5.0]
  def change
    create_table :basic_infos do |t|
      t.datetime :basic_work_time
      t.datetime :specified_work_time

      t.timestamps
    end
  end
end
