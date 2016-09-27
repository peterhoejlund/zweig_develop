class WorksController < ApplicationController

	def index
	@user = User.find(params[:id])
	@works = @user.works.all
	end

	def new 
	@work = Work.new
	end
	
	def create
	user = User.find(params[:work][:user_id])
    user.answers.create(answer_params)
	end 

	private

	def work_params 
		params.require(:work).permit(:headline, :workbody)

	end
end
