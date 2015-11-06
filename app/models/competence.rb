class Competence < ActiveRecord::Base
	has_many :tasks
	has_many :professions, :through => :tasks
	has_and_belongs_to_many :attainments
	has_and_belongs_to_many :skills
	has_and_belongs_to_many :knowledges
end
