class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :name
      t.string :aboutText
      t.string :copyText
      t.string :thumbURL
      t.string :link

      t.timestamps
    end
  end
end
