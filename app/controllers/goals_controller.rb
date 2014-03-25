class GoalsController < ApplicationController
	def new
		@goal = Goal.new
		render 'welcome_goals'
	end
def index
	render 'statuses/goals'
end

	def create

		@goal = current_user.goals.create(params[:goal].permit(:S, :M, :A, :R, :T, :name))
		
		if @goal.save
			redirect_to "/goals/#{@goal.id}"
		else
			render 'new'
		end
	end

	def show

		
		@goal = Goal.find(params[:id])
		render 'statuses/viewgoal'
	end
end
