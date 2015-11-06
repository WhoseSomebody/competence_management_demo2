class UserAnswer < ActiveRecord::Base
  belongs_to :question
  belongs_to :choice
  belongs_to :test_session
end
