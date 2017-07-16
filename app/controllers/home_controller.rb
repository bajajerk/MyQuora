class HomeController < ApplicationController
	  before_action :authenticate_user! 	


	def mainPage

            @question = Question.new
            @questions = Question.all
            @answer=Answer.new
            @answers = Answer.all




	end


end
