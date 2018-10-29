json.array! @books do |book|
  json.partial! 'book.json.jbuilder', book: book
end
