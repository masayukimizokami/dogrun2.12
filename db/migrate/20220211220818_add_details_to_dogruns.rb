class AddDetailsToDogruns < ActiveRecord::Migration[6.1]
  def change
    add_column :dogruns, :image, :string
    add_column :dogruns, :address, :string
    add_column :dogruns, :price, :integer
    add_column :dogruns, :pr, :text
  end
end
