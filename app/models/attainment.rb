class Attainment < ActiveRecord::Base
	has_and_belongs_to_many :competences
end
