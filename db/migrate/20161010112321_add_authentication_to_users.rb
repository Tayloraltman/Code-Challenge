class AddAuthenticationToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :authentication, :string
  end
end
