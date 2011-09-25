Factory.define :comic_book do |comicbook|
  comicbook.title         "X-Men"
  comicbook.issue         23
  comicbook.volume        8
  comicbook.year          2005
end

Factory.define :contributor do |contributor|
  contributor.first_name      "Bubba"
  contributor.last_name       "Gump"
end
