class AddShozokuToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :shozoku, :string
  end
end
