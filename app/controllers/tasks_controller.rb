class TasksController < ApplicationController

before_action :authenticate_dealer!	

def all
	@dealer = current_dealer
	@leads = current_dealer.leads
	@tasks = @dealer.tasks
end


def show
	@dealer = current_dealer
	@car = current_dealer.cars.find(params[:car_id])
	@lead = @car.leads.find(params[:lead_id])
	@task = @lead.tasks.find(params[:id])
end

def create
	@dealer = current_dealer
	@car = current_dealer.cars.find(params[:car_id])
	@lead = @car.leads.find(params[:lead_id])
	@task = @lead.tasks.build(new_task_params)
	if @task.save
		redirect_to dealer_car_lead_task_path(@car.dealer_id,@car.id,@lead.id,@task)
	else
		render 'new'
	end
end


def new
	@dealer = current_dealer
	@car = current_dealer.cars.find(params[:car_id])
	@lead = @car.leads.find(params[:lead_id])
	@task = @lead.tasks.build
end


private

def new_task_params
	params.require(:task).permit(:task_type,:description)
end

end