class UpvoteQuestionsController < ApplicationController
	before_action :authenticate_user!

	def toggle_upvote
		@question = Question.find(params[:question_id])
		upvoteQuestion = UpvoteQuestion.where(user: current_user, question: @question).first
		if upvoteQuestion
			upvoteQuestion.destroy!
			# @is_liked = false	
		else
			UpvoteQuestion.create(user: current_user, question: @question)
			# @is_liked = true
		end

		# respond_to do |format|
		# 	format.js {}
		# end
		
	end

end
