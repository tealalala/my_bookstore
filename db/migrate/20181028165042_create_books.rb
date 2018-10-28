class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.string :year_published
      t.string :genre
      t.string :author_id

      t.timestamps
    end
  end
end
