json.extract! book, :id, :name, :value, :status, :description, :publisher, :number_of_pages, :amount, :author_id, :category_id, :created_at, :updated_at
json.url book_url(book, format: :json)
