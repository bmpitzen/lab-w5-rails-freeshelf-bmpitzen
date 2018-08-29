class AddPasswordToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :password_digest, :string
    change_table :users do |t|
      t.index(:user_name, unique: true)
    end
  end
end
