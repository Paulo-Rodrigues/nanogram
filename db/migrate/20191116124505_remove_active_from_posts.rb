class RemoveActiveFromPosts < ActiveRecord::Migration[6.0]
  def change

    remove_column :posts, :active, :boolean
  end
end
