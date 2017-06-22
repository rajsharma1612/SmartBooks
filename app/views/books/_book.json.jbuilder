json.extract! book, :id, :title, :author, :category, :description, :logo_url, :pdf_file_url, :created_at, :updated_at
json.url book_url(book, format: :json)
