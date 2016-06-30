class CreateDeals < ActiveRecord::Migration
  def change
    create_table :deals do |t|
      t.string :name
      t.string :title
      t.text :short_description
      t.text :full_description
      t.string :picture
      t.float :original_price
      t.float :discounted_price
      t.float :discount
      t.string :deal_type
      t.string :brand
      t.string :sneaker_model
      t.string :seller_url
      t.string :sneaker_category

      t.timestamps null: false
    end
  end
end
