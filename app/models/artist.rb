class Artist < ActiveRecord::Base
  def slug
    self.name.downcase.gsub(" ", "-")
  end

  def self.find_by_slug(slug)
    Artist.all.find {|artist| artist.slug == slug}
  end

  has_many :songs
  has_many :genres, through: :songs
end
