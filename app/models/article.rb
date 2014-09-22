class Article < ActiveRecord::Base

	has_many :comments
	has_many :likes

	acts_as_taggable

	validates :headline, length: { minimum: 5}
	validates :story, presence: true

	def to_param
		"#{id}-#{headline.parameterize}"
	end

end
