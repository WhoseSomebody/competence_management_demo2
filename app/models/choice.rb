class Choice < ActiveRecord::Base
	belongs_to :question

	has_attached_file :choice_image
end
