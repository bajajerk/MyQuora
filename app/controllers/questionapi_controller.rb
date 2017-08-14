class QuestionapiController < ActionController::API

	def create
   	content = params["content"]
   	accesstoken=params["accesstoken"]
    u=User.find_by_accesstoken(accesstoken);
    if u
     question = Question.new
     question.User_id=u.id
     question.content = content
     question.save
     data={}
     data["message"]="Question created"
     render json:data

    else
    data={}
     data["message"]="bc token galat hai"
     render json:data
     end

  end


	end



