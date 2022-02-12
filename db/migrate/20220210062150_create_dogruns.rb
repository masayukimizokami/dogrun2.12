class CreateDogruns < ActiveRecord::Migration[6.1]
  def change
    create_table :dogruns do |t|
      t.string :dogrun_name
      t.string :a

      t.timestamps
    end
  end
end
