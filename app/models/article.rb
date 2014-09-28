class Article < ActiveRecord::Base

	belongs_to :user
	has_many :comments
	has_many :likes

	acts_as_taggable

	has_attached_file :image, styles: { large: "960x300#", thumbnail: "300x300#" }


	validates :headline, length: { minimum: 5}
	validates :story, presence: true
	validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }

	def to_param
		"#{id}-#{headline.parameterize}"
	end

end
