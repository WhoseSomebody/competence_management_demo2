class Question < ActiveRecord::Base
  belongs_to :test
  has_many :choices, dependent: :destroy

  has_attached_file :question_image
end
