class Artist < ActiveRecord::Base
	has_many :songs
	has_many :genres, through: :songs


	def slug
		self.name.parameterize
	end

	def self.find_by_slug(slug)
		Artist.all.find do |artist|
			artist.name.parameterize == slug
		end
	end
end