class HomeController < ApplicationController

	before_action :authenticate_dealer!

	def index
		@inventory_count = current_dealer.cars.size
		@lead_count = current_dealer.leads.size
		@task_count = current_dealer.tasks.size
	end

end