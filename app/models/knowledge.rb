class Knowledge < ActiveRecord::Base
	belongs_to :discipline
	has_and_belongs_to_many :competences
end
