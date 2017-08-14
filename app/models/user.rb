class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable



       enum role: {banned: -1, guest: 0, member: 1, moderator: 2, admin: 3 }  





       	def self.amIAdmin currentUserId
       		if User.roles[User.find(currentUserId).role] > User.roles["moderator"]
       			return true
       		else
       			return false
       		end

       	end

        def logout
          self.accesstoken = nil
         self.save
        end


end
