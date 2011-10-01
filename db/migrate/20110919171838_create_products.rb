class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string   :name
      t.text     :description
      t.decimal  :price_market
      t.decimal  :price_base
      t.datetime :released_at

      t.timestamps
    end
  end
end
