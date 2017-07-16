class HomeController < ApplicationController
	  before_action :authenticate_user! 	


	def mainPage

            @question = Question.new
            @questions = Question.all
            @answer=Answer.new
            @answers = Answer.all
	end






def profile
  end



   def upload_image
  	uploaded_file = params[:image]
  	filename = SecureRandom.hex + "." +uploaded_file.original_filename.split('.')[1]
  	filepath = Dir.pwd + "/public/uploads/" + filename
	File.open(filepath,'wb') do |file|
		file.write(uploaded_file.read())
	end

	current_user.profile_picture = filename
	current_user.save!
  	return redirect_to '/profile'
  end



end
