class FixBooksTable < ActiveRecord::Migration[5.2]
  def change
    remove_column :authors, :first_name, :string
    remove_column :authors, :last_name, :string
    remove_column :authors, :date_of_birth, :string
    add_column :authors, :full_name, :string
    rename_column :books, :year_published, :publisher
  end
end
