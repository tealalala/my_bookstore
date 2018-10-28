json.array! @books do |book|
  json.partial! 'books.json.jbuilder', book: book
end
