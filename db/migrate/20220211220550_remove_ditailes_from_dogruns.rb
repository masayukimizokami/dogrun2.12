class RemoveDitailesFromDogruns < ActiveRecord::Migration[6.1]
  def change
    remove_column :dogruns, :a, :string
  end
end
