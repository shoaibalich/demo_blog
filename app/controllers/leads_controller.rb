class LeadsController < ApplicationController

	def all
		@dealer = current_dealer
		@leads = current_dealer.leads
	end

	def index
		@dealer = current_dealer
		@car = current_dealer.cars.find(params[:car_id])
		@leads = @car.leads
	end

	def new
		@dealer = current_dealer
		@car = current_dealer.cars.find(params[:car_id])
		@lead = @car.leads.build
	end

	def show
		@dealer = current_dealer
		@car = current_dealer.cars.find(params[:car_id])
		@lead = @car.leads.find(params[:id])
	end

	def create
		@dealer = current_dealer
		@car = current_dealer.cars.find(params[:car_id])
		@lead = @car.leads.build(new_lead_params)
		if @lead.save
			redirect_to dealer_car_lead_path(@car.dealer_id,@car,@lead)
		else
			render 'new'
		end
	end

	private

	def new_lead_params
		params.require(:lead).permit(:name,:phone,:email)
	end


end