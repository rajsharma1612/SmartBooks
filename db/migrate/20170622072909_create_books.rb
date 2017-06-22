class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :category
      t.text :description
      t.text :logo_url
      t.string :pdf_file_url

      t.timestamps
    end
  end
end
