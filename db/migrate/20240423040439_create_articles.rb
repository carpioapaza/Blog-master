class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :name
      t.text :content
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
