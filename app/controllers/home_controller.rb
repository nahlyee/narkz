class HomeController < ApplicationController
  before_filter :authenticate_user!, except: [:index, :show]
  
	def index
	  if current_user
	  	redirect_to users_path
	  else

	  end
	end
end
