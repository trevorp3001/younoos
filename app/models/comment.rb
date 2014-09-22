require 'obscenity/active_model'

class Comment < ActiveRecord::Base

	belongs_to :story



	validates :body, length: {minimum: 20}, obscenity: true
	
end
