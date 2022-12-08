class CreateCommunities < ActiveRecord::Migration[7.0]
  def change
    create_table :communities do |t|
      t.string :name
      t.string :url
      t.integer :total_members
      t.text :rules

      t.timestamps
    end
  end
end
