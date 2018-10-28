json.array! @authors do |author|
  json.partial! 'authors.json.jbuilder', author: author
end
