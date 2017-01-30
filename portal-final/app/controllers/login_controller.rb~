class LoginController < ApplicationController

def check
	if ((current_user.email!= "admin@iiitb.org") & (current_user.role == 0))
		render 'login/home'
	elsif current_user.email == "admin@iiitb.org"
		render 'login/home1'
	elsif current_user.role == 1
		render 'login/home2'
	end		
end

def show
end

end
