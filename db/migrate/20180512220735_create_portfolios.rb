class CreatePortfolios < ActiveRecord::Migration[5.2]
  def change
    create_table :portfolios do |t|
      t.string :title
      t.text :body
      t.string :main_image
      t.string :text
      t.text :thumb_image

      t.timestamps
    end
  end
end
