json.extract! book, :id, :check_in, :check_out, :adults, :kids, :hotel_id, :created_at, :updated_at
json.url book_url(book, format: :json)