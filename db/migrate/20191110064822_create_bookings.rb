class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.string :title, null: false
      t.integer :status, null: false
      t.text :achievement, null: false
      t.text :problem, null: false
      t.text :error_code
      t.text :tried_thing, null: false
      t.string :ref_url
      t.datetime :lesson_date, null: false
      t.text :lesson_content
      t.text :remarks
      t.boolean :google_flg, default: false
      t.integer :teacher_id
      t.text :comment
      t.references :user, foreign_key: true
      t.references :tag, foreign_key: true
      t.references :point, foreign_key: true

      t.timestamps
    end
  end
end
