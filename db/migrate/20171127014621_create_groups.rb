class CreateGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :groups do |t|
      t.string :name
      t.string :cathegory
      t.string :thumbURL
      t.string :detailURL
      t.string :twitterURL
      t.string :fbURL
      t.string :hpURL

      t.timestamps
    end
  end
end
