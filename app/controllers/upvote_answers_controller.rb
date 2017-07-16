class UpvoteAnswersController < ApplicationController
		before_action :authenticate_user!

	def toggle_upvote
		@answer = Answer.find(params[:answer_id])
		upvoteAnswer = UpvoteAnswer.where(user: current_user, answer: @answer).first
		if upvoteAnswer
			upvoteAnswer.destroy!
				return redirect_to '/'
			# @is_upvotedQuestion = false	
		else
			UpvoteAnswer.create(user: current_user, answer: @answer)
			return redirect_to '/'
			# @is_upvotedQuestion = true
		end

		# respond_to do |format|
		# 	format.js {}
		# end
		
	end
end
