class AddAuthorToPost < ActiveRecord::Migration
  def change
    add_column :posts, :author_id, :integer, {:null => false, :default => 1}
    add_index :posts, :author_id
  end
end
