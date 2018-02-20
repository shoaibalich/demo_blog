class TasksController < ApplicationController

before_action :authenticate_dealer!	

def all
	@dealer = current_dealer
	@leads = current_dealer.leads
	@last_lead = @leads.last
	@tasks = @dealer.tasks
end

def index
	@dealer = current_dealer
	@car = current_dealer.cars.find(params[:car_id])
	@lead = @car.leads.find(params[:lead_id])
	@tasks = @lead.tasks
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
	@lead = @car.leads.find(params[:task][:lead_id])
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
	@leads = @car.leads
	@task = @lead.tasks.build
end

def create_universal_task
	@dealer = current_dealer
	@task = Task.new
	@lead = Lead.find(params[:task][:lead_id])
	@task = @lead.tasks.build(new_task_params)
	if @task.save
		redirect_to all_tasks_path(@dealer.id)
	else
		render 'new_universal_task'
	end
end

def new_universal_task
	@dealer = current_dealer
	@leads = @dealer.leads
end


private

def new_task_params
	params.require(:task).permit(:task_type,:description,:lead_id)
end

end