class Answer < ActiveRecord::Base
  belongs_to :User
  belongs_to :question



    def upVoted_by user_id
  	UpvoteAnswer.where(answer_id: id, User_id: user_id).length > 0
  end


  def upVoted_string user_id
  	if upVoted_by user_id
  		return "Cancel Upvote"
  	else
  		return "Upvote"
  	end

  end

end
