Factory.define :comic_book do |comicbook|
  comicbook.title         "X-Men"
  comicbook.issue         23
  comicbook.volume        8
  comicbook.year          2005
  comicbook.scripter_id   1
  comicbook.penciller_id  2
  comicbook.inker_id      3
  comicbook.colorist_id   4
  comicbook.letterer_id   5
end

Factory.define :contributor do |contributor|
  contributor.first_name      "Bubba"
  contributor.last_name       "Gump"
  contributor.role            "Penciler"
  contributor.comic_book_id   1
end
