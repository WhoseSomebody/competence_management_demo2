class Feedback < ActiveRecord::Base
	validates :name, :email, :content, presence: true  
	validates :email, format: { with: /\A[a-zA-Z]+[@]+[a-zA-Z]+[.]+[a-zA-Z]+\z/, message: "@" }
	searchkick
end
