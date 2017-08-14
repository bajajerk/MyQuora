class UserapiController < ActionController::API


   def signin
   	email = params["email"]
	password = params["password"]
	user=User.find_by_email(email)
	verified =user.valid_password?(password)

    if verified
    data = {}
	  data["message"] = "Fucker , you are signed in"
    user.accesstoken= SecureRandom.hex
    user.save
    data["accesstoken"]=user.accesstoken
	  render json: data

   elsif !verified
   	data={}
   	data["message"]="Wrong password fucker"
   	render json:data
   end

end


def signup
	u=User.new
	email = params["email"]
	password = params["password"]
    data = {}
	if User.find_by_email(email)
		data["message"]="User already exit please signin"
		render json:data

    else
    	u=User.new
    	u.email=email
    	u.password=password
    	u.accesstoken = nil
    	u.save
    	data ["message"] = "account with email #{email} made "
    	render json:data 
    end
end

def logout
  current_user.accesstoken=nil
  current_user.save
    data={}
    data["message"]="Logged out"
    render json:data
end








end
