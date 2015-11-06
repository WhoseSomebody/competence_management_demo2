class Feedback < ActiveRecord::Base
	validates :name, :email, :content, presence: true  
	validates :email, format: { with: /\A[0-9a-zA-Z]+[@]+[a-zA-Z]+[.]+[a-zA-Z]+\z/, message: "@" }
	
end
