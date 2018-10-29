json.array! @authors do |author|
  json.partial! 'author.json.jbuilder', author: author
end
