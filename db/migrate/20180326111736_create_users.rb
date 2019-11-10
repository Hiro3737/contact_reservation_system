class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :job
      t.boolean :gender
      t.integer :age
      t.datetime :enrollment
      t.string :skill
      t.string :holiday
      t.string :time_range
      t.integer :user_type, default: 3
      t.string :line
      t.string :picture

      t.timestamps
    end
  end
end
