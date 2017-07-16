class UpvoteQuestion < ActiveRecord::Base
  belongs_to :question
  belongs_to :User
end
