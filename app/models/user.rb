class User < ActiveRecord::Base


	has_many :articles
	has_many :comments



	has_secure_password


	has_attached_file :avatar, styles: {
		large: "320x320#",
		medium: "140x140#",
		thumbnail: "50x50#",
		
	}



	validates :name, presence: true
	validates :email, presence: true, uniqueness: true




end
