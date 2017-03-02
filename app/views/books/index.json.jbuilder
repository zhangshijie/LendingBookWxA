json.books @books do |aBook|
  json.id aBook.id
  json.title aBook.title
  json.dsc aBook.dsc
  json.img aBook.img
  json.url aBook.url
end