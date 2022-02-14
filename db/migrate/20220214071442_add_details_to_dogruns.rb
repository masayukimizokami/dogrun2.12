class AddDetailsToDogruns < ActiveRecord::Migration[6.1]
  def change
    add_column :dogruns, :user_id, :integer
  end
end
