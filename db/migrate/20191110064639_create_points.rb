class CreatePoints < ActiveRecord::Migration[5.0]
  def change
    create_table :points do |t|
      t.string :item, null: false

      t.timestamps
    end
  end
end
