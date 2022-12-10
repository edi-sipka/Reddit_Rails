class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.text :message
      t.reference :account
      t.reference :post 

      t.timestamps
    end
  end
end
