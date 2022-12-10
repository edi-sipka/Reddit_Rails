class CreateSubscriptions < ActiveRecord::Migration[7.0]
  def change
    create_table :subscriptions do |t|
      t.references :account
      t.references :community

      t.timestamps
    end
  end
end
