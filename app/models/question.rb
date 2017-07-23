class Question < ActiveRecord::Base
  belongs_to :User



  def upVoted_by user_id
    # puts "user_id",user_id,"user_id"
  	UpvoteQuestion.where(question_id: id, User_id: user_id).length > 0
  end


  def upVoted_string user_id
  	if upVoted_by user_id
  		return "Cancel Upvote"
  	else
  		return "Upvote"
  	end

  end




   def can_modify questionKeUserKiId , currentUserID

    if User.roles[User.find(currentUserID).role] > User.roles["member"]
       return true
     else
       questionKeUserKiId == currentUserID
     end
 
  end









end
